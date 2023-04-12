package gui;

import javax.swing.JPanel; 
import javax.swing.JLabel;
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
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
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
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.beans.PropertyChangeEvent;
import java.beans.PropertyChangeListener;
import java.awt.event.ActionEvent;

public class Pn_TimKiemCongNhan extends JPanel implements ActionListener, PropertyChangeListener, KeyListener {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private JTextField txt_Ma;
	private JTextField txt_Ten;
	private JTextField txt_SoDienThoai;
	private JTable tbl_CongNhan;
	private JButton btnXoaTrang;
	private JButton btnTimKiem;
	private JComboBox cmb_PhongBan;
	private JComboBox cmb_GioiTinh;
	private JComboBox cmb_SapXep;
	private Dao_CongNhan daoCongNhan = new Dao_CongNhan(ConnectDB.getInstance().getConnection());
	private List<CongNhan> listCongNhan = daoCongNhan.layDS_CongNhan();
	private TableModel_CongNhan tableModel_CongNhan;

	/**
	 * Create the panel.
	 * 
	 * @throws SQLException
	 */
	public Pn_TimKiemCongNhan() throws SQLException {
		setLayout(null);

		JLabel lbl_TieuDe = new JLabel("TÌM KIẾM THEO CÔNG NHÂN");
		lbl_TieuDe.setBounds(10, 10, 1241, 25);
		lbl_TieuDe.setHorizontalAlignment(SwingConstants.CENTER);
		lbl_TieuDe.setFont(new Font("Tahoma", Font.BOLD, 20));
		add(lbl_TieuDe);

		JLabel lbl_Ma = new JLabel("Mã nhân viên ");
		lbl_Ma.setBounds(126, 62, 105, 32);
		lbl_Ma.setHorizontalAlignment(SwingConstants.LEFT);
		lbl_Ma.setFont(new Font("Tahoma", Font.PLAIN, 14));
		add(lbl_Ma);

		txt_Ma = new JTextField();
		txt_Ma.setFont(new Font("Tahoma", Font.PLAIN, 14));
		txt_Ma.setBounds(253, 62, 733, 32);
		add(txt_Ma);
		txt_Ma.setColumns(10);

		JLabel lbl_Ten = new JLabel("Họ và tên");
		lbl_Ten.setHorizontalAlignment(SwingConstants.LEFT);
		lbl_Ten.setFont(new Font("Tahoma", Font.PLAIN, 14));
		lbl_Ten.setBounds(126, 96, 105, 32);
		add(lbl_Ten);

		txt_Ten = new JTextField();
		txt_Ten.setFont(new Font("Tahoma", Font.PLAIN, 14));
		txt_Ten.setColumns(10);
		txt_Ten.setBounds(253, 97, 733, 32);
		add(txt_Ten);

		JLabel lbl_GioiTinh = new JLabel("Giới tính");
		lbl_GioiTinh.setHorizontalAlignment(SwingConstants.LEFT);
		lbl_GioiTinh.setFont(new Font("Tahoma", Font.PLAIN, 14));
		lbl_GioiTinh.setBounds(126, 202, 105, 32);
		add(lbl_GioiTinh);

		btnXoaTrang = new JButton("Xóa trắng");
		btnXoaTrang.setToolTipText("Làm rỗng các thông tin trên");
		btnXoaTrang.setFont(new Font("Tahoma", Font.PLAIN, 14));
		btnXoaTrang.setBounds(881, 235, 105, 32);
		add(btnXoaTrang);

		btnTimKiem = new JButton("Tìm kiếm");

		btnTimKiem.setToolTipText("Tìm kiếm công nhân từ các thông tin đã nhập");
		btnTimKiem.setFont(new Font("Tahoma", Font.PLAIN, 14));
		btnTimKiem.setBounds(1016, 235, 105, 32);
		add(btnTimKiem);

		JLabel lbl_SoDienThoai = new JLabel("Số điện thoại");
		lbl_SoDienThoai.setHorizontalAlignment(SwingConstants.LEFT);
		lbl_SoDienThoai.setFont(new Font("Tahoma", Font.PLAIN, 14));
		lbl_SoDienThoai.setBounds(126, 131, 105, 32);
		add(lbl_SoDienThoai);

		txt_SoDienThoai = new JTextField();
		txt_SoDienThoai.setFont(new Font("Tahoma", Font.PLAIN, 14));
		txt_SoDienThoai.setColumns(10);
		txt_SoDienThoai.setBounds(253, 132, 733, 32);
		add(txt_SoDienThoai);

		cmb_PhongBan = new JComboBox();
		cmb_PhongBan.setModel(new DefaultComboBoxModel(layDS_PhongBanChoCongNhan()));
		cmb_PhongBan.setBackground(Color.WHITE);
		cmb_PhongBan.setFont(new Font("Tahoma", Font.PLAIN, 14));
		cmb_PhongBan.setBounds(253, 167, 733, 32);
		add(cmb_PhongBan);

		cmb_GioiTinh = new JComboBox();
		cmb_GioiTinh.setBackground(Color.WHITE);
		cmb_GioiTinh.setFont(new Font("Tahoma", Font.PLAIN, 14));
		cmb_GioiTinh.setModel(new DefaultComboBoxModel(new String[] { "null ", "Nam", "Nữ" }));
		cmb_GioiTinh.setBounds(253, 202, 94, 32);
		add(cmb_GioiTinh);

		JPanel panel = new JPanel();
		panel.setBorder(new TitledBorder(
				new EtchedBorder(EtchedBorder.LOWERED, new Color(255, 255, 255), new Color(160, 160, 160)),
				"Danh sách công nhân", TitledBorder.LEADING, TitledBorder.TOP, null, new Color(0, 0, 0)));
		panel.setBounds(10, 274, 1241, 346);
		add(panel);
		panel.setLayout(null);

		JScrollPane scrollPane = new JScrollPane();
		scrollPane.setBounds(10, 34, 1221, 302);
		panel.add(scrollPane);

		String[] headLine = { "Mã", "Họ và tên", "Giới tính", "Ngày sinh", "Địa chỉ", "Số điện thoại",
				"Tên phòng ban" };

		tableModel_CongNhan = new TableModel_CongNhan(listCongNhan, headLine);

		tbl_CongNhan = new JTable(tableModel_CongNhan) {
			@Override
			public Component prepareRenderer(TableCellRenderer renderer, int row, int column) {
				Component c = super.prepareRenderer(renderer, row, column);
				if (isCellSelected(row, column)) {
					c.setBackground(getSelectionBackground());
				} else {
					if (row % 2 == 0) {
						c.setBackground(new Color(220, 239, 255));
					} else {
						c.setBackground(new Color(255, 255, 255));
					}
				}
				return c;
			}
		};
		DefaultTableCellRenderer rightRenderer = new DefaultTableCellRenderer();
		tbl_CongNhan.getColumnModel().getColumn(0).setCellRenderer(rightRenderer);
		JTableHeader header = tbl_CongNhan.getTableHeader();
		header.setBackground(Color.BLUE);
		header.setForeground(Color.WHITE);
		header.setFont(new Font("Tahoma", Font.BOLD, 15));
		header.setPreferredSize(new Dimension(header.getWidth(), 30));
		tbl_CongNhan.setFont(new Font("Tahoma", Font.PLAIN, 15));
		tbl_CongNhan.setBackground(UIManager.getColor("Button.light"));
		tbl_CongNhan.setSelectionMode(ListSelectionModel.SINGLE_INTERVAL_SELECTION);
		tbl_CongNhan.setSelectionBackground(new Color(190, 210, 255));
		tbl_CongNhan.setRowHeight(35);

		scrollPane.setViewportView(tbl_CongNhan);

		cmb_SapXep = new JComboBox();
		cmb_SapXep.setToolTipText("Chọn để sắp xếp bảng");
		cmb_SapXep
				.setModel(new DefaultComboBoxModel(new String[] { "Không sắp xếp", "Theo tên", "Theo ngay tham gia" }));
		cmb_SapXep.setFont(new Font("Tahoma", Font.PLAIN, 10));
		cmb_SapXep.setBounds(1118, 10, 113, 22);
		panel.add(cmb_SapXep);

		JLabel lbl_PhongBan = new JLabel("Phòng ban");
		lbl_PhongBan.setHorizontalAlignment(SwingConstants.LEFT);
		lbl_PhongBan.setFont(new Font("Tahoma", Font.PLAIN, 14));
		lbl_PhongBan.setBounds(126, 167, 71, 32);
		add(lbl_PhongBan);

		btnTimKiem.addActionListener(this);
		btnXoaTrang.addActionListener(this);
		cmb_SapXep.addActionListener(this);
		txt_SoDienThoai.addKeyListener(this);

	}

	@SuppressWarnings("deprecation")
	@Override
	public void actionPerformed(ActionEvent e) {
		Object o = e.getSource();
		if (o.equals(btnXoaTrang)) {
			txt_Ma.setText("");
			txt_Ten.setText("");
			txt_SoDienThoai.setText("");
			cmb_PhongBan.setSelectedIndex(0);
			cmb_GioiTinh.setSelectedIndex(0);

		} else if (o.equals(btnTimKiem)) {
			try {
				PhongBan p = layPhongBan();
				listCongNhan = daoCongNhan.timKiemCongNhan(txt_Ma.getText().strip(), txt_Ten.getText().strip(),
						txt_SoDienThoai.getText().strip(), p, layGioiTinh());
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			updateTable();
		} else if (o.equals(cmb_SapXep)) {
			if (cmb_SapXep.getSelectedIndex() == 0) {
				Collections.sort(listCongNhan, (nv1, nv2) -> nv1.getMaCN().compareTo(nv2.getMaCN()));
				updateTable();
			} else if (cmb_SapXep.getSelectedIndex() == 1) {
				Collections.sort(listCongNhan, (nv1, nv2) -> layKQSoSanh(nv1.getTenCN(), nv2.getTenCN()));
				updateTable();
			} else if (cmb_SapXep.getSelectedIndex() == 2) {
				Collections.sort(listCongNhan, (nv1, nv2) -> nv1.getNgaySinh().compareTo(nv2.getNgaySinh()));
				updateTable();
			}
		}
	}

	private int layKQSoSanh(String tenNVHC1, String tenNVHC2) {

		String[] arrTenNVHC1 = tenNVHC1.split(" ");
		String[] arrTenNVHC2 = tenNVHC2.split(" ");

		if (arrTenNVHC1[arrTenNVHC1.length - 1].compareTo(arrTenNVHC2[arrTenNVHC2.length - 1]) != 0)
			return arrTenNVHC1[arrTenNVHC1.length - 1].compareTo(arrTenNVHC2[arrTenNVHC2.length - 1]);

		return arrTenNVHC1[arrTenNVHC1.length - 1].compareTo(arrTenNVHC2[arrTenNVHC2.length - 1]);
	}

	private void updateTable() {
		tableModel_CongNhan.setList(listCongNhan);
		tbl_CongNhan.updateUI();
	}

	private String layGioiTinh() {
		if (cmb_GioiTinh.getSelectedIndex() != 0)
			if (cmb_GioiTinh.getSelectedIndex() == 1)
				return "Nam";
			else
				return "Nữ";
		return "";
	}

	private PhongBan layPhongBan() throws SQLException {
		Dao_PhongBan phongBan = new Dao_PhongBan(ConnectDB.getInstance().getConnection());

		String tenPB = (String) layDS_PhongBanChoCongNhan()[cmb_PhongBan.getSelectedIndex()];

		return phongBan.timKiemPhongBanBangTen(tenPB);
	}

	@Override
	public void propertyChange(PropertyChangeEvent evt) {

	}

	@Override
	public void keyTyped(KeyEvent e) {
		char c = e.getKeyChar();
		if (!(Character.isDigit(c) || (c == KeyEvent.VK_BACK_SPACE) || (c == KeyEvent.VK_DELETE))) {
			e.consume();
			return;
		}

		if (txt_SoDienThoai.getText().length() >= 10) {
			e.consume();
		}
	}

	@Override
	public void keyPressed(KeyEvent e) {
	}

	@Override
	public void keyReleased(KeyEvent e) {

	}

	private Object[] layDS_PhongBanChoCongNhan() throws SQLException {
		Dao_PhongBan dao_PhongBan = new Dao_PhongBan(ConnectDB.getInstance().getConnection());
		List<String> list = new ArrayList<String>();
		list.add("null");
		dao_PhongBan.layDS_PhongBanChoCongNhan().forEach(i -> list.add(i.getTenPB()));

		return list.toArray();
	}
}
