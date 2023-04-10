package gui;

import javax.swing.JPanel;
import javax.swing.JLabel;
import javax.swing.JOptionPane;

import java.sql.Date;
import java.awt.Font;
import javax.swing.SwingConstants;
import javax.swing.UIManager;
import javax.swing.JTextField;
import javax.swing.ListSelectionModel;
import javax.swing.JTable;
import javax.swing.JScrollBar;
import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JRadioButton;
import com.toedter.components.JLocaleChooser;

import dao.Dao_CongNhan;
import dao.Dao_PhongBan;
import db.ConnectDB;
import entity.CongNhan;
import entity.EChucVu;
import entity.ETiengAnh;
import entity.ETrinhDo;
import entity.NhanVienHanhChanh;
import entity.PhongBan;
import model.TableModel_CongNhan;
import com.toedter.calendar.JCalendar;
import com.toedter.calendar.JDayChooser;
import com.toedter.calendar.JDateChooser;
import javax.swing.DefaultComboBoxModel;
import java.awt.Panel;
import java.sql.SQLException;
import java.text.DecimalFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.Period;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;

import javax.swing.border.TitledBorder;
import javax.swing.table.DefaultTableCellRenderer;
import javax.swing.table.JTableHeader;
import javax.swing.table.TableCellRenderer;
import javax.swing.border.EtchedBorder;
import java.awt.Color;
import java.awt.Component;
import java.awt.Dimension;

import javax.swing.JScrollPane;
import java.awt.event.ActionListener;
import java.awt.event.InputMethodEvent;
import java.awt.event.InputMethodListener;
import java.awt.event.KeyEvent;
import java.awt.event.KeyListener;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.beans.PropertyChangeEvent;
import java.beans.PropertyChangeListener;
import java.awt.event.ActionEvent;
import javax.swing.JCheckBox;

public class Pn_PhanCongCongNhan extends JPanel {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private JTextField txt_Ten;
	private JTable tbl_PhanCong;
	private JButton btn_XoaTrang;
	private JButton btn_Sua;
	private JButton btn_PhanCong;
	private JButton btn_Xoa;
	private JComboBox cmb_SanPham;
	private JComboBox cmb_SapXep;
	private Dao_CongNhan daoCongNhan = new Dao_CongNhan(ConnectDB.getInstance().getConnection());
//	private List<CongNhan> listCongNhan = daoCongNhan.layDS_CongNhan();

	/**
	 * Create the panel.
	 * 
	 * @throws SQLException
	 */
	public Pn_PhanCongCongNhan() throws SQLException {
		setLayout(null);

		JLabel lbl_TieuDe = new JLabel("PHÂN CÔNG CÔNG NHÂN");
		lbl_TieuDe.setBounds(10, 10, 1241, 25);
		lbl_TieuDe.setHorizontalAlignment(SwingConstants.CENTER);
		lbl_TieuDe.setFont(new Font("Tahoma", Font.BOLD, 20));
		add(lbl_TieuDe);

		JLabel lbl_Ten = new JLabel("Họ và tên");
		lbl_Ten.setHorizontalAlignment(SwingConstants.LEFT);
		lbl_Ten.setFont(new Font("Tahoma", Font.PLAIN, 14));
		lbl_Ten.setBounds(126, 78, 105, 32);
		add(lbl_Ten);

		txt_Ten = new JTextField();
		txt_Ten.setFont(new Font("Tahoma", Font.PLAIN, 14));
		txt_Ten.setColumns(10);
		txt_Ten.setBounds(253, 79, 365, 32);
		add(txt_Ten);

		JLabel lbl_CaLamViec = new JLabel("Ca Làm Việc");
		lbl_CaLamViec.setHorizontalAlignment(SwingConstants.LEFT);
		lbl_CaLamViec.setFont(new Font("Tahoma", Font.PLAIN, 14));
		lbl_CaLamViec.setBounds(122, 117, 105, 32);
		add(lbl_CaLamViec);

		btn_XoaTrang = new JButton("Xóa trắng");
		btn_XoaTrang.setToolTipText("Làm rỗng các thông tin trên");
		btn_XoaTrang.setFont(new Font("Tahoma", Font.PLAIN, 14));
		btn_XoaTrang.setBounds(792, 301, 105, 32);
		add(btn_XoaTrang);

		btn_Sua = new JButton("Sửa");

		btn_Sua.setFont(new Font("Tahoma", Font.PLAIN, 14));
		btn_Sua.setBounds(1020, 301, 105, 32);
		add(btn_Sua);

		cmb_SanPham = new JComboBox();
//		cmb_PhongBan.setModel(new DefaultComboBoxModel(layDS_PhongBan()));
		cmb_SanPham.setBackground(Color.WHITE);
		cmb_SanPham.setFont(new Font("Tahoma", Font.PLAIN, 14));
		cmb_SanPham.setBounds(253, 150, 365, 32);
		add(cmb_SanPham);

		JPanel pn_BangPhanCong = new JPanel();
		pn_BangPhanCong.setBorder(new TitledBorder(
				new EtchedBorder(EtchedBorder.LOWERED, new Color(255, 255, 255), new Color(160, 160, 160)),
				"Danh sách đã phân công", TitledBorder.LEADING, TitledBorder.TOP, null, new Color(0, 0, 0)));
		pn_BangPhanCong.setBounds(10, 342, 1241, 288);
		add(pn_BangPhanCong);
		pn_BangPhanCong.setLayout(null);

		JScrollPane slp_PhanCong = new JScrollPane();
		slp_PhanCong.setBounds(10, 34, 1221, 243);
		pn_BangPhanCong.add(slp_PhanCong);

		cmb_SapXep = new JComboBox();
		cmb_SapXep.setToolTipText("Chọn để sắp xếp bảng");
		cmb_SapXep
				.setModel(new DefaultComboBoxModel(new String[] { "Không sắp xếp", "Theo tên", "Theo ngay tham gia" }));
		cmb_SapXep.setFont(new Font("Tahoma", Font.PLAIN, 10));
		cmb_SapXep.setBounds(1118, 10, 113, 22);
		pn_BangPhanCong.add(cmb_SapXep);

		btn_Xoa = new JButton("Xóa");
		btn_Xoa.setToolTipText("Làm rỗng các thông tin trên");
		btn_Xoa.setFont(new Font("Tahoma", Font.PLAIN, 14));
		btn_Xoa.setBounds(905, 301, 105, 32);
		add(btn_Xoa);

		btn_PhanCong = new JButton("Phân Công");
		btn_PhanCong.setFont(new Font("Tahoma", Font.PLAIN, 14));
		btn_PhanCong.setBounds(1135, 301, 105, 32);
		add(btn_PhanCong);

		String[] headLinePhanCong = { "Mã", "Họ và tên", "Ca làm việc", "Sản phẩm", "Công đoạn", "Ngày phân công" };

//		tableModel_CongNhan = new TableModel_CongNhan(listCongNhan, headLinePhanCong);

//		DefaultTableCellRenderer rightRenderer = new DefaultTableCellRenderer();
//		tbl_PhanCong.getColumnModel().getColumn(0).setCellRenderer(rightRenderer);
//		JTableHeader header = tbl_PhanCong.getTableHeader();
//		header.setBackground(Color.BLUE);
//		header.setForeground(Color.WHITE);
//		header.setFont(new Font("Tahoma", Font.BOLD, 15));
//		header.setPreferredSize(new Dimension(header.getWidth(), 30));
		
		
//		tbl_PhanCong.setFont(new Font("Tahoma", Font.PLAIN, 15));
//		tbl_PhanCong.setBackground(UIManager.getColor("Button.light"));
//		tbl_PhanCong.setSelectionMode(ListSelectionModel.SINGLE_INTERVAL_SELECTION);
//		tbl_PhanCong.setSelectionBackground(new Color(190, 210, 255));
//		tbl_PhanCong.setRowHeight(35);

//		slp_PhanCong.setViewportView(tbl_PhanCong);

		JLabel lbl_SanPham = new JLabel("Sản Phẩm");
		lbl_SanPham.setHorizontalAlignment(SwingConstants.LEFT);
		lbl_SanPham.setFont(new Font("Tahoma", Font.PLAIN, 14));
		lbl_SanPham.setBounds(126, 150, 105, 32);
		add(lbl_SanPham);

		JLabel lbl_CongDoan = new JLabel("Công Đoạn");
		lbl_CongDoan.setHorizontalAlignment(SwingConstants.LEFT);
		lbl_CongDoan.setFont(new Font("Tahoma", Font.PLAIN, 14));
		lbl_CongDoan.setBounds(126, 193, 105, 32);
		add(lbl_CongDoan);

		JComboBox cmb_CongDoan = new JComboBox();
		cmb_CongDoan.setFont(new Font("Tahoma", Font.PLAIN, 14));
		cmb_CongDoan.setBackground(Color.WHITE);
		cmb_CongDoan.setBounds(253, 193, 365, 32);
		add(cmb_CongDoan);

		JPanel pn_BangCongNhan = new JPanel();
		pn_BangCongNhan.setLayout(null);
		pn_BangCongNhan.setBorder(new TitledBorder(
				new EtchedBorder(EtchedBorder.LOWERED, new Color(255, 255, 255), new Color(160, 160, 160)),
				"Danh sách công nhân", TitledBorder.LEADING, TitledBorder.TOP, null, new Color(0, 0, 0)));
		pn_BangCongNhan.setBounds(740, 47, 511, 243);
		add(pn_BangCongNhan);

		JScrollPane slp_CongNhan = new JScrollPane();
		slp_CongNhan.setBounds(10, 21, 491, 211);
		pn_BangCongNhan.add(slp_CongNhan);
		
		JCheckBox chk_Ca1 = new JCheckBox("Ca 1");
		chk_Ca1.setBounds(249, 119, 52, 32);
		add(chk_Ca1);
		
		JCheckBox chk_Ca2 = new JCheckBox("Ca 2");
		chk_Ca2.setBounds(322, 119, 52, 32);
		add(chk_Ca2);
		
		JCheckBox chk_Ca3 = new JCheckBox("Ca 3");
		chk_Ca3.setBounds(394, 119, 52, 32);
		add(chk_Ca3);
		
		JLabel lbl_NgayPhan = new JLabel("Ngày Phân");
		lbl_NgayPhan.setHorizontalAlignment(SwingConstants.LEFT);
		lbl_NgayPhan.setFont(new Font("Tahoma", Font.PLAIN, 14));
		lbl_NgayPhan.setBounds(126, 234, 105, 32);
		add(lbl_NgayPhan);
	}
}
