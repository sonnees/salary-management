package gui;

import javax.swing.JPanel;
import javax.swing.JLabel;
import java.sql.Date;
import java.awt.Font;
import javax.swing.SwingConstants;
import javax.swing.UIManager;
import javax.swing.JTextField;
import javax.swing.KeyStroke;
import javax.swing.ListSelectionModel;
import javax.swing.JTable;
import javax.swing.JScrollBar;
import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JComponent;
import javax.swing.JRadioButton;
import com.toedter.components.JLocaleChooser;

import dao.Dao_NhanVienHanhChanh;
import db.ConnectDB;
import entity.EChucVu;
import entity.ETiengAnh;
import entity.ETrinhDo;
import entity.NhanVienHanhChanh;
import model.TableModel_NhanVienHanhChanh_DayDu;
import model.TableModel_NhanVienHanhChanh_RutGon;

import com.toedter.calendar.JCalendar;
import com.toedter.calendar.JDayChooser;
import com.toedter.calendar.JDateChooser;

import javax.swing.AbstractAction;
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

public class Pn_TimKiemNhanVienHanhChach extends JPanel implements ActionListener, PropertyChangeListener, KeyListener{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private JTextField txt_Ma;
	private JTextField txt_Ten;
	private JTextField txt_SoDienThoai;
	private JTable tbl_NhanVienHanhChanh;
	private JDateChooser dch_NgaySinh;
	private JButton btnXoaTrang;
	private JButton btnTimKiem;
	private JComboBox cmb_TrinhDo;
	private JComboBox cmb_TiengAnh;
	private JComboBox cmb_GioiTinh;
	private JComboBox cmb_SapXep;
	private JComboBox cmb_ChucVu;
	private JTextField txt_NgaySinh;
	private Dao_NhanVienHanhChanh daoNhanVienHanhChanh = new Dao_NhanVienHanhChanh(ConnectDB.getInstance().getConnection());
	private List<NhanVienHanhChanh> listNhanVien = daoNhanVienHanhChanh.layDS_NhanVienHanhChinh();
	private JComboBox cmb_CheDoXem;
	private TableModel_NhanVienHanhChanh_DayDu TableModel_NhanVienHanhChanh_DayDu;
	private TableModel_NhanVienHanhChanh_RutGon TableModel_NhanVienHanhChanh_RutGon;


	/**
	 * Create the panel.
	 * @throws SQLException 
	 */
	public Pn_TimKiemNhanVienHanhChach() throws SQLException {
		setLayout(null);
		
		JLabel lbl_TieuDe = new JLabel("TÌM KIẾM THEO NHÂN VIÊN HÀNH CHÁNH");
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
		txt_Ma.setBounds(253, 62, 245, 32);
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
		txt_Ten.setBounds(253, 97, 245, 32);
		add(txt_Ten);
		
		JLabel lbl_GioiTinh = new JLabel("Giới tính");
		lbl_GioiTinh.setHorizontalAlignment(SwingConstants.LEFT);
		lbl_GioiTinh.setFont(new Font("Tahoma", Font.PLAIN, 14));
		lbl_GioiTinh.setBounds(126, 202, 105, 32);
		add(lbl_GioiTinh);
		
		JLabel lbl_TrinhDo = new JLabel("Trình độ");
		lbl_TrinhDo.setHorizontalAlignment(SwingConstants.LEFT);
		lbl_TrinhDo.setFont(new Font("Tahoma", Font.PLAIN, 14));
		lbl_TrinhDo.setBounds(772, 96, 94, 32);
		add(lbl_TrinhDo);
		
		btnXoaTrang = new JButton("Xóa trắng");
		btnXoaTrang.setToolTipText("Làm rỗng các thông tin trên");
		btnXoaTrang.setFont(new Font("Tahoma", Font.PLAIN, 14));
		btnXoaTrang.setBounds(881, 235, 105, 32);
		add(btnXoaTrang);
		
		btnTimKiem = new JButton("Tìm kiếm");

		btnTimKiem.setToolTipText("Tìm kiếm nhân viên từ các thông tin đã nhập");
		btnTimKiem.setFont(new Font("Tahoma", Font.PLAIN, 14));
		btnTimKiem.setBounds(1016, 235, 105, 32);
		add(btnTimKiem);
		
		cmb_TrinhDo = new JComboBox();
		cmb_TrinhDo.setModel(new DefaultComboBoxModel(new String[] {"null",ETrinhDo.DUOIDAIHOC.layTrinhDo(),ETrinhDo.DAIHOC.layTrinhDo(),ETrinhDo.TRENDAIHOC.layTrinhDo()}));
		cmb_TrinhDo.setBackground(Color.WHITE);
		cmb_TrinhDo.setFont(new Font("Tahoma", Font.PLAIN, 14));
		cmb_TrinhDo.setBounds(876, 97, 245, 32);
		add(cmb_TrinhDo);
		
		JLabel lbl_SoDienThoai = new JLabel("Số điện thoại");
		lbl_SoDienThoai.setHorizontalAlignment(SwingConstants.LEFT);
		lbl_SoDienThoai.setFont(new Font("Tahoma", Font.PLAIN, 14));
		lbl_SoDienThoai.setBounds(126, 131, 105, 32);
		add(lbl_SoDienThoai);
		
		txt_SoDienThoai = new JTextField();
		txt_SoDienThoai.setFont(new Font("Tahoma", Font.PLAIN, 14));
		txt_SoDienThoai.setColumns(10);
		txt_SoDienThoai.setBounds(253, 132, 245, 32);
		add(txt_SoDienThoai);
		
		JLabel lbl_TiengAnh = new JLabel("Tiếng anh");
		lbl_TiengAnh.setHorizontalAlignment(SwingConstants.LEFT);
		lbl_TiengAnh.setFont(new Font("Tahoma", Font.PLAIN, 14));
		lbl_TiengAnh.setBounds(772, 131, 78, 32);
		add(lbl_TiengAnh);
		
		cmb_TiengAnh = new JComboBox();
		cmb_TiengAnh.setModel(new DefaultComboBoxModel(new String[] {"null",ETiengAnh.YEU.layTiengAnh(),ETiengAnh.KHA.layTiengAnh(),ETiengAnh.GIOI.layTiengAnh()}));
		cmb_TiengAnh.setBackground(Color.WHITE);
		cmb_TiengAnh.setFont(new Font("Tahoma", Font.PLAIN, 14));
		cmb_TiengAnh.setBounds(876, 132, 245, 32);
		add(cmb_TiengAnh);
		
		cmb_GioiTinh = new JComboBox();
		cmb_GioiTinh.setBackground(Color.WHITE);
		cmb_GioiTinh.setFont(new Font("Tahoma", Font.PLAIN, 14));
		cmb_GioiTinh.setModel(new DefaultComboBoxModel(new String[] {"null ", "Nam", "Nữ"}));
		cmb_GioiTinh.setBounds(253, 202, 94, 32);
		add(cmb_GioiTinh);
		
		JPanel panel = new JPanel();
		panel.setBorder(new TitledBorder(new EtchedBorder(EtchedBorder.LOWERED, new Color(255, 255, 255), new Color(160, 160, 160)), "B\u1EA3ng nh\u00E2n vi\u00EAn h\u00E0nh ch\u00E1nh", TitledBorder.LEADING, TitledBorder.TOP, null, new Color(0, 0, 0)));
		panel.setBounds(10, 274, 1241, 346);
		add(panel);
		panel.setLayout(null);
		
		JScrollPane scp_Bang = new JScrollPane();
		scp_Bang.setBounds(10, 34, 1221, 302);
		panel.add(scp_Bang);
		
		
		
		String[] headLine_tableDayDu = {"Mã","Họ và tên","Giới tính","Ngày sinh","Địa chỉ","Số điện thoại","ngày tham gia","Chứ vụ","Trình độ","Tiếng anh","Lương cơ bản","Tên phòng ban"};
		String[] headLine_tableRutGon = {"Họ và tên","Giới tính","Ngày sinh","Số điện thoại","Chứ vụ","Lương cơ bản"};
		
		
		TableModel_NhanVienHanhChanh_DayDu = new TableModel_NhanVienHanhChanh_DayDu(listNhanVien, headLine_tableDayDu);
		TableModel_NhanVienHanhChanh_RutGon = new TableModel_NhanVienHanhChanh_RutGon(listNhanVien, headLine_tableRutGon);
		
		tbl_NhanVienHanhChanh = new JTable(TableModel_NhanVienHanhChanh_RutGon) {
			@Override
            public Component prepareRenderer(TableCellRenderer renderer, int row, int column) {
                Component c = super.prepareRenderer(renderer, row, column);
                if (isCellSelected(row, column)) {
                    c.setBackground(getSelectionBackground());
                } else {
                    if (row % 2 == 0) {
                        c.setBackground(new Color(220, 239,255));
                    } else {
                        c.setBackground(new Color(255, 255, 255));
                    }
                }
                return c;
            }
		};
		DefaultTableCellRenderer rightRenderer = new DefaultTableCellRenderer();
        tbl_NhanVienHanhChanh.getColumnModel().getColumn(0).setCellRenderer(rightRenderer);
        JTableHeader header = tbl_NhanVienHanhChanh.getTableHeader();
        header.setBackground(Color.BLUE);
        header.setForeground(Color.WHITE);
        header.setFont(new Font("Tahoma", Font.BOLD, 15));
        header.setPreferredSize(new Dimension(header.getWidth(), 30));
		tbl_NhanVienHanhChanh.setFont(new Font("Tahoma", Font.PLAIN, 15));
		tbl_NhanVienHanhChanh.setBackground(UIManager.getColor("Button.light"));
		tbl_NhanVienHanhChanh.setSelectionMode(ListSelectionModel.SINGLE_INTERVAL_SELECTION);
		tbl_NhanVienHanhChanh.setSelectionBackground(new Color(190, 210, 255));
		tbl_NhanVienHanhChanh.setRowHeight(35);
		
		scp_Bang.setViewportView(tbl_NhanVienHanhChanh);
		
		cmb_SapXep = new JComboBox();
		cmb_SapXep.setToolTipText("Chọn để sắp xếp bảng");
		cmb_SapXep.setModel(new DefaultComboBoxModel(new String[] {"Không sắp xếp", "Theo tên", "Theo ngay tham gia"}));
		cmb_SapXep.setFont(new Font("Tahoma", Font.PLAIN, 10));
		cmb_SapXep.setBounds(1118, 10, 113, 22);
		panel.add(cmb_SapXep);
		
		cmb_CheDoXem = new JComboBox();
		cmb_CheDoXem.setModel(new DefaultComboBoxModel(new String[] {"Xem rút gọn", "Xem đầy đủ"}));
		cmb_CheDoXem.setToolTipText("Thay đổi chế độ xem\r\n");
		cmb_CheDoXem.setFont(new Font("Tahoma", Font.PLAIN, 10));
		cmb_CheDoXem.setBounds(1026, 10, 82, 22);
		panel.add(cmb_CheDoXem);
		
		JLabel lbl_NgaySinh = new JLabel("Ngày sinh");
		lbl_NgaySinh.setHorizontalAlignment(SwingConstants.LEFT);
		lbl_NgaySinh.setFont(new Font("Tahoma", Font.PLAIN, 14));
		lbl_NgaySinh.setBounds(126, 167, 71, 32);
		add(lbl_NgaySinh);
		
		dch_NgaySinh = new JDateChooser();
		dch_NgaySinh.getCalendarButton().setFont(new Font("Tahoma", Font.PLAIN, 14));
		dch_NgaySinh.setBounds(476, 167, 22, 32);
		dch_NgaySinh.setDate(new java.util.Date());
		dch_NgaySinh.setDate(null);
		add(dch_NgaySinh);
		dch_NgaySinh.setFont(new Font("Tahoma", Font.PLAIN, 14));
		
		JLabel lbl_ChucVu = new JLabel("Chức vụ");
		lbl_ChucVu.setHorizontalAlignment(SwingConstants.LEFT);
		lbl_ChucVu.setFont(new Font("Tahoma", Font.PLAIN, 14));
		lbl_ChucVu.setBounds(772, 62, 78, 32);
		add(lbl_ChucVu);
	
		cmb_ChucVu = new JComboBox();
		cmb_ChucVu.setModel(new DefaultComboBoxModel(new String[] {"null",EChucVu.NV_CSKH.layChucVu(),EChucVu.NV_IT.layChucVu(),EChucVu.NV_KETOAN.layChucVu(),EChucVu.NV_MARKETING.layChucVu(),EChucVu.NV_NHANSU.layChucVu()}));
		cmb_ChucVu.setFont(new Font("Tahoma", Font.PLAIN, 14));
		cmb_ChucVu.setBackground(Color.WHITE);
		cmb_ChucVu.setBounds(876, 62, 245, 32);
		add(cmb_ChucVu);
		
		txt_NgaySinh = new JTextField();
		txt_NgaySinh.setEditable(false);
		txt_NgaySinh.setBackground(Color.WHITE);
		txt_NgaySinh.setFont(new Font("Tahoma", Font.PLAIN, 14));
		txt_NgaySinh.setColumns(10);
		txt_NgaySinh.setBounds(253, 167, 223, 32);
		add(txt_NgaySinh);
	
		btnTimKiem.addActionListener(this);
		btnTimKiem.getInputMap(JComponent.WHEN_IN_FOCUSED_WINDOW)
					.put(KeyStroke.getKeyStroke("control pressed F"), "a");
		btnTimKiem.getActionMap().put("a", new AbstractAction() {
			@Override
			public void actionPerformed(ActionEvent e) {
				btnTimKiem.doClick();
			}
		});
		btnXoaTrang.addActionListener(this);
		btnXoaTrang.getInputMap(JComponent.WHEN_IN_FOCUSED_WINDOW)
							.put(KeyStroke.getKeyStroke("control pressed Q"), "a");
		btnXoaTrang.getActionMap().put("a", new AbstractAction() {
            @Override
            public void actionPerformed(ActionEvent e) {
            	btnXoaTrang.doClick();
            }
        });
		
		cmb_SapXep.addActionListener(this);
		dch_NgaySinh.addPropertyChangeListener(this);
		txt_SoDienThoai.addKeyListener(this);
		cmb_CheDoXem.addActionListener(this);
	
	}

	@SuppressWarnings("deprecation")
	@Override
	public void actionPerformed(ActionEvent e) {
		Object o = e.getSource();
		if(o.equals(btnXoaTrang)) {
			txt_Ma.setText("");
			txt_Ten.setText("");
			txt_SoDienThoai.setText("");
			dch_NgaySinh.setDate(null);
			cmb_ChucVu.setSelectedIndex(0);
			cmb_TrinhDo.setSelectedIndex(0);
			cmb_TiengAnh.setSelectedIndex(0);
			cmb_GioiTinh.setSelectedIndex(0);
			txt_NgaySinh.setText("");
			
		}
		else if(o.equals(btnTimKiem)) {
			try {
				listNhanVien = daoNhanVienHanhChanh.timKiem(
						txt_Ma.getText().strip(),
						txt_Ten.getText().strip(),
						layGioiTinh(),
						dch_NgaySinh.getDate()!=null?Date.valueOf(LocalDate.parse(new SimpleDateFormat("yyyy-MM-dd").format(dch_NgaySinh.getDate()) )):null,
						txt_SoDienThoai.getText().strip(),
						layChuVu(),
						layTrinhDo(),
						layTiengAnh());
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			
			updateTable();
		}
		else if(o.equals(cmb_SapXep)) {
			if(cmb_SapXep.getSelectedIndex()==0) {
				Collections.sort(listNhanVien,
						(nv1,nv2) -> nv1.getMaNVHC().compareTo(nv2.getMaNVHC()));
				updateTable();
			} 
			else if(cmb_SapXep.getSelectedIndex()==1) {
				Collections.sort(listNhanVien,
						(nv1,nv2) -> layKQSoSanh(nv1.getTenNVHC(),nv2.getTenNVHC()));
				updateTable();
			}
			else if(cmb_SapXep.getSelectedIndex()==2) {
				Collections.sort(listNhanVien,
						(nv1,nv2) -> nv1.getNgaySinh().compareTo(nv2.getNgaySinh()));
				updateTable();
			}
		}
		else if(o.equals(cmb_CheDoXem)) {
			updateTable();
		}
	}

	private int layKQSoSanh(String tenNVHC1, String tenNVHC2) {
		String[] arrTenNVHC1 = tenNVHC1.split(" ");
		String[] arrTenNVHC2 = tenNVHC2.split(" ");
		
		if(arrTenNVHC1[arrTenNVHC1.length-1].compareTo(arrTenNVHC2[arrTenNVHC2.length-1])!=0) 
			return arrTenNVHC1[arrTenNVHC1.length-1].compareTo(arrTenNVHC2[arrTenNVHC2.length-1]);
		
		return arrTenNVHC1[arrTenNVHC1.length-1].compareTo(arrTenNVHC2[arrTenNVHC2.length-1]);
	}

	private void updateTable() {
		TableModel_NhanVienHanhChanh_DayDu.setList(listNhanVien);
		TableModel_NhanVienHanhChanh_RutGon.setList(listNhanVien);
		
		if(cmb_CheDoXem.getSelectedIndex()==0) 
			tbl_NhanVienHanhChanh.setModel(TableModel_NhanVienHanhChanh_RutGon);
		else 
			tbl_NhanVienHanhChanh.setModel(TableModel_NhanVienHanhChanh_DayDu);
		
		tbl_NhanVienHanhChanh.updateUI();
	}

	private String layTiengAnh() {
		switch (cmb_TiengAnh.getSelectedIndex()) {
		case 0: 
			return "";
		case 1: 
			return ETiengAnh.YEU.layTiengAnh();
		case 2: 
			return ETiengAnh.KHA.layTiengAnh();
		case 3: 
			return ETiengAnh.GIOI.layTiengAnh();
		default:
			return "";
		}
	}

	private String layTrinhDo() {
		switch (cmb_TrinhDo.getSelectedIndex()) {
		case 0: 
			return "";
		case 1: 
			return ETrinhDo.DUOIDAIHOC.layTrinhDo();
		case 2: 
			return ETrinhDo.DAIHOC.layTrinhDo();
		case 3: 
			return ETrinhDo.TRENDAIHOC.layTrinhDo();
		default:
			return "";
		}
	}

	private String layChuVu() {
		switch (cmb_ChucVu.getSelectedIndex()) {
		case 0: 
			return "";
		case 1: 
			return EChucVu.NV_CSKH.layChucVu();
		case 2: 
			return EChucVu.NV_IT.layChucVu();
		case 3: 
			return EChucVu.NV_KETOAN.layChucVu();
		case 4: 
			return EChucVu.NV_MARKETING.layChucVu();
		case 5: 
			return EChucVu.NV_NHANSU.layChucVu();
		default:
			return "";
		}
	}

	private String layGioiTinh() {
		if(cmb_GioiTinh.getSelectedIndex()!=0)
			if(cmb_GioiTinh.getSelectedIndex()==1)
				return "Nam";
			else return "Nữ";
		return "";
	}

	@Override
	public void propertyChange(PropertyChangeEvent evt) {
		Object o = evt.getSource();
		if(o.equals(dch_NgaySinh) && dch_NgaySinh.getDate()!=null) 
			txt_NgaySinh.setText(new SimpleDateFormat("dd/MM/yyyy").format(dch_NgaySinh.getDate()) );
	}

	@Override
	public void keyTyped(KeyEvent e) {
		char c = e.getKeyChar();
        if (!(Character.isDigit(c))) {
            e.consume(); 
            return;
        }
        
        if (txt_SoDienThoai.getText().length() >= 10) {
            e.consume(); 
            return;
        }
	}

	@Override
	public void keyPressed(KeyEvent e) {
	}

	@Override
	public void keyReleased(KeyEvent e) {
		
	}
}
