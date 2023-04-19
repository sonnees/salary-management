package gui;

import javax.swing.JPanel;
import javax.swing.JLabel;
import javax.swing.JOptionPane;

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
import dao.Dao_PhongBan;
import db.ConnectDB;
import entity.EChucVu;
import entity.ETiengAnh;
import entity.ETrinhDo;
import entity.NhanVienHanhChanh;
import entity.PhongBan;
import model.TableModel_NhanVienHanhChanh_DayDu;
import model.TableModel_NhanVienHanhChanh_RutGon;

import com.toedter.calendar.JCalendar;
import com.toedter.calendar.JDayChooser;
import com.toedter.calendar.JDateChooser;

import javax.swing.AbstractAction;
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

public class Pn_ChinhSuaNhanVienHanhChach extends JPanel implements ActionListener, PropertyChangeListener, KeyListener{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private JTextField txt_DiaChi;
	private JTextField txt_Ten;
	private JTextField txt_SoDienThoai;
	private JTable tbl_NhanVienHanhChanh;
	private JDateChooser dch_NgaySinh;
	private JButton btnLamRong;
	private JButton btnSua;
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
	private JTextField txt_NgayThamGia;
	private JLabel lbl_PhongBan;
	private JComboBox cmb_PhongBan;
	private JDateChooser dch_NgayThamGia;
	private JButton btnXoa;
	private JTextField txt_LuongCoBan;
	private JButton btnThem;
	
	private String[] tiengAnh = {"Mức yếu", "Mức khá", "Mức giỏi"};
	private String[] trinhDo = {"Dưới Đại học", "Đại học", "Trên Đại học"};
	private String[] chuVu = {"Nhân viên chăm sóc khách hàng", "Nhân viên IT", "Nhân viên kế toán", "Nhân viên marketing", "Nhân viên nhân sự"};
	

	/**
	 * Create the panel.
	 * @throws SQLException 
	 */
	public Pn_ChinhSuaNhanVienHanhChach() throws SQLException {
		setLayout(null);
		JLabel lbl_TieuDe = new JLabel("CHỈNH SỬA NHÂN VIÊN HÀNH CHÁNH");
		lbl_TieuDe.setBounds(10, 10, 1241, 25);
		lbl_TieuDe.setHorizontalAlignment(SwingConstants.CENTER);
		lbl_TieuDe.setFont(new Font("Tahoma", Font.BOLD, 20));
		add(lbl_TieuDe);
		
		JLabel lbl_DiaChi = new JLabel("Địa chỉ");
		lbl_DiaChi.setBounds(71, 167, 105, 32);
		lbl_DiaChi.setHorizontalAlignment(SwingConstants.LEFT);
		lbl_DiaChi.setFont(new Font("Tahoma", Font.PLAIN, 14));
		add(lbl_DiaChi);
		
		txt_DiaChi = new JTextField();
		txt_DiaChi.setFont(new Font("Tahoma", Font.PLAIN, 14));
		txt_DiaChi.setBounds(170, 168, 517, 32);
		add(txt_DiaChi);
		txt_DiaChi.setColumns(10);
		
		JLabel lbl_Ten = new JLabel("Họ và tên");
		lbl_Ten.setHorizontalAlignment(SwingConstants.LEFT);
		lbl_Ten.setFont(new Font("Tahoma", Font.PLAIN, 14));
		lbl_Ten.setBounds(71, 62, 105, 32);
		add(lbl_Ten);
		

		txt_Ten = new JTextField();
		txt_Ten.setFont(new Font("Tahoma", Font.PLAIN, 14));
		txt_Ten.setColumns(10);
		txt_Ten.setBounds(170, 63, 158, 32);
		add(txt_Ten);
		
		JLabel lbl_GioiTinh = new JLabel("Giới tính");
		lbl_GioiTinh.setHorizontalAlignment(SwingConstants.LEFT);
		lbl_GioiTinh.setFont(new Font("Tahoma", Font.PLAIN, 14));
		lbl_GioiTinh.setBounds(448, 62, 78, 32);
		add(lbl_GioiTinh);
		
		JLabel lbl_TrinhDo = new JLabel("Trình độ");
		lbl_TrinhDo.setHorizontalAlignment(SwingConstants.LEFT);
		lbl_TrinhDo.setFont(new Font("Tahoma", Font.PLAIN, 14));
		lbl_TrinhDo.setBounds(448, 133, 71, 32);
		add(lbl_TrinhDo);
		
		btnLamRong = new JButton("Làm Rỗng");
		btnLamRong.setToolTipText("Làm rỗng các thông tin trên");
		btnLamRong.setFont(new Font("Tahoma", Font.PLAIN, 14));
		btnLamRong.setBounds(1057, 234, 105, 32);
		add(btnLamRong);
		
		btnSua = new JButton("Sửa");

		btnSua.setToolTipText("Chỉnh sửa thông tin  của đối tượng đang chọn");
		btnSua.setFont(new Font("Tahoma", Font.PLAIN, 14));
		btnSua.setBounds(922, 234, 105, 32);
		add(btnSua);
		
		cmb_TrinhDo = new JComboBox();
		cmb_TrinhDo.setModel(new DefaultComboBoxModel(trinhDo));
		cmb_TrinhDo.setBackground(Color.WHITE);
		cmb_TrinhDo.setFont(new Font("Tahoma", Font.PLAIN, 14));
		cmb_TrinhDo.setBounds(529, 133, 158, 32);
		add(cmb_TrinhDo);
		
		JLabel lbl_SoDienThoai = new JLabel("Số điện thoại");
		lbl_SoDienThoai.setHorizontalAlignment(SwingConstants.LEFT);
		lbl_SoDienThoai.setFont(new Font("Tahoma", Font.PLAIN, 14));
		lbl_SoDienThoai.setBounds(71, 98, 105, 32);
		add(lbl_SoDienThoai);
		
		txt_SoDienThoai = new JTextField();
		txt_SoDienThoai.setFont(new Font("Tahoma", Font.PLAIN, 14));
		txt_SoDienThoai.setColumns(10);
		txt_SoDienThoai.setBounds(170, 98, 158, 32);
		add(txt_SoDienThoai);
		
		JLabel lbl_TiengAnh = new JLabel("Tiếng anh");
		lbl_TiengAnh.setHorizontalAlignment(SwingConstants.LEFT);
		lbl_TiengAnh.setFont(new Font("Tahoma", Font.PLAIN, 14));
		lbl_TiengAnh.setBounds(71, 133, 78, 32);
		add(lbl_TiengAnh);
		
		cmb_TiengAnh = new JComboBox();
		cmb_TiengAnh.setModel(new DefaultComboBoxModel(tiengAnh));
		cmb_TiengAnh.setBackground(Color.WHITE);
		cmb_TiengAnh.setFont(new Font("Tahoma", Font.PLAIN, 14));
		cmb_TiengAnh.setBounds(170, 133, 158, 32);
		add(cmb_TiengAnh);
		
		cmb_GioiTinh = new JComboBox();
		cmb_GioiTinh.setBackground(Color.WHITE);
		cmb_GioiTinh.setFont(new Font("Tahoma", Font.PLAIN, 14));
		cmb_GioiTinh.setModel(new DefaultComboBoxModel(new String[] {"Nam", "Nữ"}));
		cmb_GioiTinh.setBounds(529, 62, 158, 32);
		add(cmb_GioiTinh);
		
		JPanel panel = new JPanel();
		panel.setBorder(new TitledBorder(new EtchedBorder(EtchedBorder.LOWERED, new Color(255, 255, 255), new Color(160, 160, 160)), "B\u1EA3ng nh\u00E2n vi\u00EAn h\u00E0nh ch\u00E1nh", TitledBorder.LEADING, TitledBorder.TOP, null, new Color(0, 0, 0)));
		panel.setBounds(10, 274, 1241, 346);
		add(panel);
		panel.setLayout(null);
		
		JScrollPane scrollPane = new JScrollPane();
		scrollPane.setBounds(10, 34, 1221, 302);
		panel.add(scrollPane);
		
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
		lbl_NgaySinh.setBounds(448, 98, 71, 32);
		add(lbl_NgaySinh);
		
		dch_NgaySinh = new JDateChooser();
		dch_NgaySinh.getCalendarButton().setFont(new Font("Tahoma", Font.PLAIN, 14));
		dch_NgaySinh.setBounds(665, 98, 22, 32);
		dch_NgaySinh.setDate(new java.util.Date());
		dch_NgaySinh.setDate(null);
		add(dch_NgaySinh);
		dch_NgaySinh.setFont(new Font("Tahoma", Font.PLAIN, 14));
		
		JLabel lbl_ChucVu = new JLabel("Chức vụ");
		lbl_ChucVu.setHorizontalAlignment(SwingConstants.LEFT);
		lbl_ChucVu.setFont(new Font("Tahoma", Font.PLAIN, 14));
		lbl_ChucVu.setBounds(813, 62, 78, 32);
		add(lbl_ChucVu);
	
		cmb_ChucVu = new JComboBox();
		cmb_ChucVu.setModel(new DefaultComboBoxModel(chuVu));
		cmb_ChucVu.setFont(new Font("Tahoma", Font.PLAIN, 14));
		cmb_ChucVu.setBackground(Color.WHITE);
		cmb_ChucVu.setBounds(944, 62, 218, 32);
		add(cmb_ChucVu);
		
		txt_NgaySinh = new JTextField();
		txt_NgaySinh.setEditable(false);
		txt_NgaySinh.setBackground(Color.WHITE);
		txt_NgaySinh.setFont(new Font("Tahoma", Font.PLAIN, 14));
		txt_NgaySinh.setColumns(10);
		txt_NgaySinh.setBounds(529, 98, 139, 32);
		add(txt_NgaySinh);
		
		JLabel lbl_NgayThamGia = new JLabel("Ngày tham gia");
		lbl_NgayThamGia.setHorizontalAlignment(SwingConstants.LEFT);
		lbl_NgayThamGia.setFont(new Font("Tahoma", Font.PLAIN, 14));
		lbl_NgayThamGia.setBounds(813, 133, 94, 32);
		add(lbl_NgayThamGia);
		
		dch_NgayThamGia = new JDateChooser();
		dch_NgayThamGia.getCalendarButton().setFont(new Font("Tahoma", Font.PLAIN, 14));
		dch_NgayThamGia.setBounds(1141, 133, 22, 32);
		add(dch_NgayThamGia);
		
		txt_NgayThamGia = new JTextField();
		txt_NgayThamGia.setFont(new Font("Tahoma", Font.PLAIN, 14));
		txt_NgayThamGia.setEditable(false);
		txt_NgayThamGia.setColumns(10);
		txt_NgayThamGia.setBackground(Color.WHITE);
		txt_NgayThamGia.setBounds(944, 133, 199, 32);
		add(txt_NgayThamGia);
		
		lbl_PhongBan = new JLabel("Phòng ban");
		lbl_PhongBan.setHorizontalAlignment(SwingConstants.LEFT);
		lbl_PhongBan.setFont(new Font("Tahoma", Font.PLAIN, 14));
		lbl_PhongBan.setBounds(813, 98, 78, 32);
		add(lbl_PhongBan);
		
		cmb_PhongBan = new JComboBox();
		cmb_PhongBan.setModel(new DefaultComboBoxModel(layDS_PhongBan()));
		cmb_PhongBan.setFont(new Font("Tahoma", Font.PLAIN, 14));
		cmb_PhongBan.setBackground(Color.WHITE);
		cmb_PhongBan.setBounds(944, 98, 218, 32);
		add(cmb_PhongBan);
		
		btnXoa = new JButton("Xóa");
		btnXoa.setToolTipText("Xóa đối tượng đang chọn");
		btnXoa.setFont(new Font("Tahoma", Font.PLAIN, 14));
		btnXoa.setBounds(787, 234, 105, 32);
		add(btnXoa);
		
		JLabel lbl_LuongCoBan = new JLabel("Lương cơ bản");
		lbl_LuongCoBan.setHorizontalAlignment(SwingConstants.LEFT);
		lbl_LuongCoBan.setFont(new Font("Tahoma", Font.PLAIN, 14));
		lbl_LuongCoBan.setBounds(813, 167, 105, 32);
		add(lbl_LuongCoBan);
		
		txt_LuongCoBan = new JTextField();
		txt_LuongCoBan.setFont(new Font("Tahoma", Font.PLAIN, 14));
		txt_LuongCoBan.setColumns(10);
		txt_LuongCoBan.setBounds(944, 168, 218, 32);
		add(txt_LuongCoBan);
		
		btnThem = new JButton("Thêm");
		btnThem.setToolTipText("Thêm mới một đối tượng");
		btnThem.setFont(new Font("Tahoma", Font.PLAIN, 14));
		btnThem.setBounds(657, 234, 105, 32);
		add(btnThem);
		
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
		
		scrollPane.setViewportView(tbl_NhanVienHanhChanh);
		
		tbl_NhanVienHanhChanh.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				int index = tbl_NhanVienHanhChanh.getSelectedRow();
				try {
					capNhatLenTruong(index);
				} catch (SQLException e1) {
					e1.printStackTrace();
				}
			}

			private void capNhatLenTruong(int index) throws SQLException {
				NhanVienHanhChanh nv = listNhanVien.get(index);
				
				txt_DiaChi.setText(nv.getDiaChi()!=null?nv.getDiaChi():"");
				txt_Ten.setText(nv.getTenNVHC()!=null?nv.getTenNVHC():"");
				txt_SoDienThoai.setText(nv.getSoDienThoai()!=null?nv.getSoDienThoai():"");
				txt_LuongCoBan.setText(nv.getLuongCoBan()+"");
				dch_NgaySinh.setDate(nv.getNgaySinh()!=null?java.sql.Date.valueOf(nv.getNgaySinh()):null);
				dch_NgayThamGia.setDate(nv.getNgayTGCT()!=null?java.sql.Date.valueOf(nv.getNgayTGCT()):null);
				cmb_GioiTinh.setSelectedIndex(nv.isGioiTinh()==true?1:0);
				
				int temp=0;
				for(String i : tiengAnh) {
					if(nv.getTiengAnh().layTiengAnh().equals(i)) {
						cmb_TiengAnh.setSelectedIndex(temp);
						break;
					}
					temp+=1;
				}
				
				temp=0;
				for(String i : chuVu) {
					if(nv.getChucVu().layChucVu().equals(i)) {
						cmb_ChucVu.setSelectedIndex(temp);
						break;
					}
					temp+=1;
				}
				
				
				temp=0;
				for(String i : trinhDo) {
					if(nv.getTrinhDo().layTrinhDo().equals(i)) {
						cmb_TrinhDo.setSelectedIndex(temp);
						break;
					}
					temp+=1;
				}
				
				temp=0;
				for(Object i : layDS_PhongBan()) {
					if(nv.getPhongBan().getMaPB().equals(i)) {
						cmb_PhongBan.setSelectedIndex(temp);
						break;
					}
					temp+=1;
				}	
			}
		});
		btnSua.addActionListener(this);
		btnLamRong.addActionListener(this);
		btnXoa.addActionListener(this);
		cmb_SapXep.addActionListener(this);
		dch_NgaySinh.addPropertyChangeListener(this);
		dch_NgayThamGia.addPropertyChangeListener(this);
		txt_SoDienThoai.addKeyListener(this);
		cmb_CheDoXem.addActionListener(this);
		txt_LuongCoBan.addKeyListener(new KeyListener() {
			@Override
			public void keyTyped(KeyEvent e) {
				char c = e.getKeyChar();
		        if (!(Character.isDigit(c))) 
		            e.consume();   
			}
			
			@Override
			public void keyReleased(KeyEvent e) {
			}
			
			@Override
			public void keyPressed(KeyEvent e) {
			}
		});
		btnThem.addActionListener(this);
		btnThem.getInputMap(JComponent.WHEN_IN_FOCUSED_WINDOW).put(KeyStroke.getKeyStroke("control ENTER"), "buttonAction");
		btnThem.getActionMap().put("buttonAction", new AbstractAction() {
            @Override
            public void actionPerformed(ActionEvent e) {
            	btnThem.doClick();
            }
        });

	}

	@SuppressWarnings("deprecation")
	@Override
	public void actionPerformed(ActionEvent e) {
		Object o = e.getSource();
		if(o.equals(btnLamRong)) {
			txt_DiaChi.setText("");
			txt_Ten.setText("");
			txt_SoDienThoai.setText("");
			dch_NgaySinh.setDate(null);
			dch_NgayThamGia.setDate(null);
			cmb_ChucVu.setSelectedIndex(0);
			cmb_TrinhDo.setSelectedIndex(0);
			cmb_TiengAnh.setSelectedIndex(0);
			cmb_GioiTinh.setSelectedIndex(0);
			cmb_PhongBan.setSelectedIndex(0);
			txt_NgaySinh.setText("");
			txt_NgayThamGia.setText("");
			txt_LuongCoBan.setText("");
		}
		else if(o.equals(btnXoa)) {
			int index = tbl_NhanVienHanhChanh.getSelectedRow();
			
			if(index<0) {
				JOptionPane.showMessageDialog(this, "Chưa chọn nhân viên!", "Phần Mềm Tính Lương", 2);
				return;
			}
			
			int i = JOptionPane.showConfirmDialog(
					this, "Bạn có muốn xóa nhân viên có mã \""
							+ listNhanVien.get(index).getMaNVHC() + "\" không?",
					"Phần Mềm Tính Lương", 2);
			if (i == 0) {
				try {
					daoNhanVienHanhChanh.xoaNhanVienHanhChanh(listNhanVien.get(index).getMaNVHC());
					
					listNhanVien = daoNhanVienHanhChanh.layDS_NhanVienHanhChinh();
					updateTable();
					JOptionPane.showMessageDialog(this, "Xóa thành công!", "Phần Mềm Tính Lương", 1);
				} catch (Exception e2) {
					JOptionPane.showMessageDialog(this, "Xóa thất bại!", "Phần Mềm Tính Lương", 2);
				}
			} else
				return;
			
		}
		else if(o.equals(btnSua)) {
			int index = tbl_NhanVienHanhChanh.getSelectedRow();
			if(index<0) {
				JOptionPane.showMessageDialog(this, "Chưa chọn nhân viên!", "Phần Mềm Tính Lương", 2);
				return;
			}
			
			NhanVienHanhChanh nv = null;
			try {
				nv = new NhanVienHanhChanh(
						txt_Ten.getText().strip(),
						layIsGioiTinh(),
						dch_NgaySinh.getDate()!=null?LocalDate.parse(new SimpleDateFormat("yyyy-MM-dd").format(dch_NgaySinh.getDate())):null,
						txt_DiaChi.getText().strip(),
						txt_SoDienThoai.getText().strip(),
						dch_NgayThamGia.getDate()!=null?LocalDate.parse(new SimpleDateFormat("yyyy-MM-dd").format(dch_NgayThamGia.getDate())):null,
						layEChuVu(),
						layETrinhDo(),
						layETiengAnh(),
						!txt_LuongCoBan.getText().equals("")?Long.parseLong(txt_LuongCoBan.getText()):0l,
						layPhongBan()
						);
				
				LocalDate ngayHienTai = java.time.LocalDate.now();
				int namSinh = Period.between(nv.getNgaySinh(), ngayHienTai).getYears();
				
				if(namSinh<18) {
					JOptionPane.showMessageDialog(this, "Nhân viên vừa nhập chỉ "+namSinh+" tuổi, không đủ tuổi để lao động!","Phần Mềm Tính Lương", 2);
					return;
				}
				
				if(nv.getNgayTGCT().compareTo(ngayHienTai)>0) {
					JOptionPane.showMessageDialog(this, "Ngày tham gia không được lớn hơn ngày hiện tại!","Phần Mềm Tính Lương", 2);
					return;
				}
					
				
			} catch (NumberFormatException e2) {
				e2.printStackTrace();
			} catch (SQLException e2) {
				e2.printStackTrace();
			}
			
			NhanVienHanhChanh nvCu = listNhanVien.get(index);
			String thayDoi = layThayDoi(nvCu, nv);
			
			if(thayDoi.equals("")) {
				JOptionPane.showMessageDialog(this, "Không có sự thay đổi mới nào!","Phần Mềm Tính Lương", 2);
				return;
			}
			
			int i = JOptionPane.showConfirmDialog(
					this, "Sửa thông tin nhân viên có mã '"
							+ nvCu.getMaNVHC()+ "':\n"+thayDoi,
					"Phần Mềm Tính Lương", 2);
			if (i == 0) {
				nv.setMaNVHC(nvCu.getMaNVHC());
				boolean rs = daoNhanVienHanhChanh.suaNhanVienHanhChach(nv);
				if(rs) {
					JOptionPane.showMessageDialog(this, "Sửa thành công!", "Phần Mềm Tính Lương", 1);
					try {
						listNhanVien = daoNhanVienHanhChanh.layDS_NhanVienHanhChinh();
					} catch (SQLException e1) {
						e1.printStackTrace();
					}
					updateTable();
				}
				else 
					JOptionPane.showMessageDialog(this, "Thêm thất bại!", "Phần Mềm Tính Lương", 2);
			} else
				return;
		}
		else if(o.equals(btnThem)) {
			NhanVienHanhChanh nv = null;
			try {
				nv = new NhanVienHanhChanh(
						txt_Ten.getText().strip(),
						layIsGioiTinh(),
						dch_NgaySinh.getDate()!=null?LocalDate.parse(new SimpleDateFormat("yyyy-MM-dd").format(dch_NgaySinh.getDate())):null,
						txt_DiaChi.getText().strip(),
						txt_SoDienThoai.getText().strip(),
						dch_NgayThamGia.getDate()!=null?LocalDate.parse(new SimpleDateFormat("yyyy-MM-dd").format(dch_NgayThamGia.getDate())):null,
						layEChuVu(),
						layETrinhDo(),
						layETiengAnh(),
						!txt_LuongCoBan.getText().equals("")?Long.parseLong(txt_LuongCoBan.getText()):0l,
						layPhongBan()
						);
				
				LocalDate ngayHienTai = java.time.LocalDate.now();
				int namSinh = Period.between(nv.getNgaySinh(), ngayHienTai).getYears();
				
				if(namSinh<18) {
					JOptionPane.showMessageDialog(this, "Nhân viên vừa nhập chỉ "+namSinh+" tuổi, không đủ tuổi để lao động!","Phần Mềm Tính Lương", 2);
					return;
				}
				
				if(nv.getNgayTGCT().compareTo(ngayHienTai)>0) {
					JOptionPane.showMessageDialog(this, "Ngày tham gia không được lớn hơn ngày hiện tại!","Phần Mềm Tính Lương", 2);
					return;
				}
					
				
			} catch (NumberFormatException e2) {
				e2.printStackTrace();
			} catch (SQLException e2) {
				e2.printStackTrace();
			}
			
			boolean rs = daoNhanVienHanhChanh.themNhanVienHanhChach(nv);
			if(rs) {
				JOptionPane.showMessageDialog(this, "Thêm thành công!", "Phần Mềm Tính Lương", 1);
				try {
					listNhanVien = daoNhanVienHanhChanh.layDS_NhanVienHanhChinh();
				} catch (SQLException e1) {
					e1.printStackTrace();
				}
				updateTable();
			}
			else 
				JOptionPane.showMessageDialog(this, "Thêm thất bại!", "Phần Mềm Tính Lương", 2);
				
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

	private String layThayDoi(NhanVienHanhChanh nvCu, NhanVienHanhChanh nvMoi) {
		String thayDoi = "";
		
		if(!nvCu.getTenNVHC().equals(nvMoi.getTenNVHC()))
			thayDoi += "    *Tên nhân viên: '"+nvCu.getTenNVHC()+"' thành '"+nvMoi.getTenNVHC()+"'\n";
		if(nvCu.isGioiTinh()!=nvMoi.isGioiTinh())
			thayDoi += "    *Giới tính: '"+(nvCu.isGioiTinh()==false?"Nam":"Nữ")+"' thành '"+(nvMoi.isGioiTinh()==false?"Nam":"Nữ")+"'\n";
		if(nvCu.getNgaySinh().compareTo(nvMoi.getNgaySinh())!=0)
			thayDoi += "    *Ngày sinh: '"+new SimpleDateFormat("dd/MM/yyyy").format(Date.valueOf(nvCu.getNgaySinh()))+"' thành '"+new SimpleDateFormat("dd/MM/yyyy").format(Date.valueOf(nvMoi.getNgaySinh()))+"'\n";
		if(!nvCu.getDiaChi().equals(nvMoi.getDiaChi()))
			thayDoi += "    *Địa chỉ: '"+nvCu.getDiaChi()+"' thành '"+nvMoi.getDiaChi()+"'\n";
		if(!nvCu.getSoDienThoai().equals(nvMoi.getSoDienThoai()))
			thayDoi += "    *Số điện thoại: '"+nvCu.getSoDienThoai()+"' thành '"+nvMoi.getSoDienThoai()+"'\n";
		if(nvCu.getNgayTGCT().compareTo(nvMoi.getNgayTGCT())!=0)
			thayDoi += "    *Ngày tham gia: '"+new SimpleDateFormat("dd/MM/yyyy").format(Date.valueOf(nvCu.getNgayTGCT()))+"' thành '"+new SimpleDateFormat("dd/MM/yyyy").format(Date.valueOf(nvMoi.getNgayTGCT()))+"'\n";
		if(!nvCu.getChucVu().equals(nvMoi.getChucVu()))
			thayDoi += "    *Chức vụ: '"+nvCu.getChucVu().layChucVu()+"' thành '"+nvMoi.getChucVu().layChucVu()+"'\n";
		if(!nvCu.getTrinhDo().equals(nvMoi.getTrinhDo()))
			thayDoi += "    *Trình độ: '"+nvCu.getTrinhDo().layTrinhDo()+"' thành '"+nvMoi.getTrinhDo().layTrinhDo()+"'\n";
		if(!nvCu.getTiengAnh().equals(nvMoi.getTiengAnh()))
			thayDoi += "    *Tiếng anh: '"+nvCu.getTiengAnh().layTiengAnh()+"' thành '"+nvMoi.getTiengAnh().layTiengAnh()+"'\n";
		if(nvCu.getLuongCoBan()!=nvMoi.getLuongCoBan())
			thayDoi += "    *Lương cơ bản: '"+new DecimalFormat("###,###,###").format(nvCu.getLuongCoBan())+" vnd"+"' thành '"+new DecimalFormat("###,###,###").format(nvMoi.getLuongCoBan())+" vnd"+"'\n";
		if(!nvCu.getPhongBan().getMaPB().equals(nvMoi.getPhongBan().getMaPB()))
			thayDoi += "    *Phòng ban: '"+nvCu.getPhongBan().getTenPB()+"' thành '"+nvMoi.getPhongBan().getTenPB()+"'\n";
		return thayDoi;
	}

	private PhongBan layPhongBan() throws SQLException {
		Dao_PhongBan phongBan = new Dao_PhongBan(ConnectDB.getInstance().getConnection());
		String tenPB = layDS_PhongBan()[cmb_PhongBan.getSelectedIndex()].toString();
		return phongBan.timKiemPhongBanBangTen(tenPB);
	}

	private boolean layIsGioiTinh() {
		if(cmb_GioiTinh.getSelectedIndex()==0)
			return false;
		else return true;
	}

	private ETiengAnh layETiengAnh() {
		switch (cmb_TiengAnh.getSelectedIndex()) {
		case 0: 
			return ETiengAnh.YEU;
		case 1: 
			return ETiengAnh.KHA;
		case 2: 
			return ETiengAnh.GIOI;
		
		default:
			return ETiengAnh.YEU;
		}
	}

	private ETrinhDo layETrinhDo() {
		switch (cmb_TrinhDo.getSelectedIndex()) {
		case 0: 
			return ETrinhDo.DUOIDAIHOC;
		case 1: 
			return ETrinhDo.DAIHOC;
		case 2: 
			return ETrinhDo.TRENDAIHOC;
		
		default:
			return ETrinhDo.DUOIDAIHOC;
		}
	}

	private EChucVu layEChuVu() {
		switch (cmb_ChucVu.getSelectedIndex()) {
		case 0: 
			return EChucVu.NV_CSKH;
		case 1: 
			return EChucVu.NV_IT;
		case 2: 
			return EChucVu.NV_KETOAN;
		case 3: 
			return EChucVu.NV_MARKETING;
		case 4: 
			return EChucVu.NV_NHANSU;
		default:
			return EChucVu.NV_CSKH;
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
		if(o.equals(dch_NgayThamGia) && dch_NgayThamGia.getDate()!=null) 
			txt_NgayThamGia.setText(new SimpleDateFormat("dd/MM/yyyy").format(dch_NgayThamGia.getDate()) );
		
	}

	@Override
	public void keyTyped(KeyEvent e) {
		char c = e.getKeyChar();
        if (!(Character.isDigit(c))) 
            e.consume();       
        if (txt_SoDienThoai.getText().length() >= 10) 
            e.consume(); 
	}

	@Override
	public void keyPressed(KeyEvent e) {
	}

	@Override
	public void keyReleased(KeyEvent e) {
	}
	
	private Object[] layDS_PhongBan() throws SQLException {
		Dao_PhongBan dao_PhongBan = new Dao_PhongBan(ConnectDB.getInstance().getConnection());
		
		List<String> list = new ArrayList<String>();
		dao_PhongBan.layDS_PhongBan().forEach(i-> list.add(i.getTenPB()));
		
		return list.toArray();
	}
}
