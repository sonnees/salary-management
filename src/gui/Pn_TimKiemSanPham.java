package gui;

import java.awt.Color;
import java.awt.Component;
import java.awt.Dimension;
import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.KeyEvent;
import java.awt.event.KeyListener;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.beans.PropertyChangeEvent;
import java.beans.PropertyChangeListener;
import java.sql.Date;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import javax.swing.DefaultComboBoxModel;
import javax.swing.JButton;
import javax.swing.JCheckBox;
import javax.swing.JComboBox;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.JTextField;
import javax.swing.ListSelectionModel;
import javax.swing.SwingConstants;
import javax.swing.UIManager;
import javax.swing.border.EtchedBorder;
import javax.swing.border.TitledBorder;
import javax.swing.table.DefaultTableCellRenderer;
import javax.swing.table.JTableHeader;
import javax.swing.table.TableCellRenderer;

import com.toedter.calendar.JDateChooser;

import dao.Dao_CongDoan;
import dao.Dao_SanPham;
import db.ConnectDB;
import entity.CongDoan;
import entity.EChucVu;
import entity.EDonViTinh;
import entity.SanPham;
import model.TableModel_CongDoan_Sp;
import model.TableModel_SanPham;

public class Pn_TimKiemSanPham extends JPanel implements ActionListener, PropertyChangeListener,KeyListener{

	private JTextField txtTenSanPham;
	private JTextField txtNgayKetThuc;
	private JTextField txtNgayBatDau;

	private TableModel_SanPham tableModel_SanPham;
	private JTable tbl_SanPham;
	private JTextField txtSoLuong;
	private String [] donViTinh = {"Chai", "Lốc", "Thùng", "Chiếc", "Đôi", "Cái"};
	private JComboBox cmbDonViTinh;
	private JScrollPane scrollPaneSP;
	private JComboBox cmb_SapXepSP;
	private JDateChooser dch_NgayKetThuc;
	private JDateChooser dch_NgayBatDau;
	
	private Dao_SanPham daoSanPham= new Dao_SanPham(ConnectDB.getInstance().getConnection());;
	private Dao_CongDoan daoCongDoan=  new Dao_CongDoan(ConnectDB.getInstance().getConnection());;
	private TableModel_CongDoan_Sp tableModel_CongDoan;
	private JTable tbl_CongDoan;
	private List<CongDoan> listCongDoan ;
	private List<SanPham> listSanPham ;
	private JButton btnTim;
	private JButton btnLamRong;
	private JTextField txtMaSp;
	private List<SanPham> listSP;
	private JComboBox cmbHoanThanh;

	/**
	 * Create the panel.
	 * @throws SQLException 
	 */
	public Pn_TimKiemSanPham() throws SQLException {
		setLayout(null);
		setSize(1290,820);
		
			listSanPham = daoSanPham.layDS_SanPham();
			listCongDoan = daoCongDoan.layDS_CongDoan();
		
		
		
		JLabel lblChinhSuaSP = new JLabel("TÌM KIẾM SẢN PHẨM");
		lblChinhSuaSP.setBounds(518, 11, 258, 25);
		lblChinhSuaSP.setHorizontalAlignment(SwingConstants.CENTER);
		lblChinhSuaSP.setFont(new Font("Tahoma", Font.PLAIN, 20));
		add(lblChinhSuaSP);
		
		JLabel lblTenSanPham = new JLabel("Tên sản phẩm");
		lblTenSanPham.setHorizontalAlignment(SwingConstants.LEFT);
		lblTenSanPham.setFont(new Font("Tahoma", Font.PLAIN, 14));
		lblTenSanPham.setBounds(671, 68, 105, 32);
		add(lblTenSanPham);
		
		txtTenSanPham = new JTextField();
		txtTenSanPham.setColumns(10);
		txtTenSanPham.setBounds(833, 70, 413, 32);
		add(txtTenSanPham);
		
		JLabel lblDonViTinh = new JLabel("Đơn vị tính");
		lblDonViTinh.setHorizontalAlignment(SwingConstants.LEFT);
		lblDonViTinh.setFont(new Font("Tahoma", Font.PLAIN, 14));
		lblDonViTinh.setBounds(37, 192, 105, 32);
		
		add(lblDonViTinh);
		cmbDonViTinh = new JComboBox();
		cmbDonViTinh.setBounds(175, 194, 120, 32);
		cmbDonViTinh.setModel(new DefaultComboBoxModel(donViTinh));
		add(cmbDonViTinh);
		
		JLabel lblNgayKetThuc = new JLabel("Ngày kết thúc");
		lblNgayKetThuc.setHorizontalAlignment(SwingConstants.LEFT);
		lblNgayKetThuc.setFont(new Font("Tahoma", Font.PLAIN, 14));
		lblNgayKetThuc.setBounds(671, 129, 105, 32);
		add(lblNgayKetThuc);
		
		dch_NgayBatDau = new JDateChooser();
		dch_NgayBatDau.setBounds(566, 131, 22, 32);
		add(dch_NgayBatDau);
		
		txtNgayKetThuc = new JTextField();
		((JTextField) txtNgayKetThuc).setColumns(10);
		txtNgayKetThuc.setBounds(833, 131, 394, 32);
		add(txtNgayKetThuc);
		
		dch_NgayKetThuc = new JDateChooser();
		dch_NgayKetThuc.setBounds(1224, 129, 22, 32);
		add(dch_NgayKetThuc);
		
		txtNgayBatDau = new JTextField();
		((JTextField) txtNgayBatDau).setColumns(10);
		txtNgayBatDau.setBounds(175, 131, 394, 32);
		add(txtNgayBatDau);
		JLabel lblSoLuong = new JLabel("Số lượng");
		lblSoLuong.setHorizontalAlignment(SwingConstants.LEFT);
		lblSoLuong.setFont(new Font("Tahoma", Font.PLAIN, 14));
		lblSoLuong.setBounds(329, 192, 80, 32);
		add(lblSoLuong);
		
		txtSoLuong = new JTextField();
		txtSoLuong.setColumns(10);
		txtSoLuong.setBounds(410, 194, 178, 32);
		add(txtSoLuong);
		
		JLabel lblNgayBatDau = new JLabel("Ngày bắt đầu");
		lblNgayBatDau.setHorizontalAlignment(SwingConstants.LEFT);
		lblNgayBatDau.setFont(new Font("Tahoma", Font.PLAIN, 14));
		lblNgayBatDau.setBounds(37, 129, 105, 32);
		add(lblNgayBatDau);
		
		JLabel lblHoanThanh = new JLabel("Hoàn thành");
		lblHoanThanh.setHorizontalAlignment(SwingConstants.LEFT);
		lblHoanThanh.setFont(new Font("Tahoma", Font.PLAIN, 14));
		lblHoanThanh.setBounds(671, 192, 105, 32);
		add(lblHoanThanh);
		
		JPanel pnSP = new JPanel();
		pnSP.setLayout(null);
		pnSP.setBorder(new TitledBorder(new EtchedBorder(EtchedBorder.LOWERED, new Color(255, 255, 255), new Color(160, 160, 160)), "Bảng sản phẩm", TitledBorder.LEADING, TitledBorder.TOP, null, new Color(0, 0, 0)));
		pnSP.setBounds(10, 313, 1260, 398);
		add(pnSP);
		
		cmbHoanThanh = new JComboBox();
		cmbHoanThanh.setToolTipText("Chọn để sắp xếp bảng");
		cmbHoanThanh
		.setModel(new DefaultComboBoxModel(new String[] { "Tất cả", "Hoàn thành", "Chưa hoàn thành" }));
		cmbHoanThanh.setFont(new Font("Tahoma", Font.PLAIN, 10));
		cmbHoanThanh.setBounds(833, 194, 413, 32);
		add(cmbHoanThanh);
		
		scrollPaneSP = new JScrollPane();
		scrollPaneSP.setBounds(10, 37, 1240, 350);
		pnSP.add(scrollPaneSP);
		
		cmb_SapXepSP = new JComboBox();
		cmb_SapXepSP.setToolTipText("Chọn để sắp xếp bảng");
		cmb_SapXepSP
		.setModel(new DefaultComboBoxModel(new String[] { "Không sắp xếp", "Theo tên", "Theo ngày bắt đầu" }));
		cmb_SapXepSP.setFont(new Font("Tahoma", Font.PLAIN, 10));
		cmb_SapXepSP.setBounds(1137, 11, 113, 22);
		pnSP.add(cmb_SapXepSP);
		
		String[] HeaderSP = {"Mã sản phẩm","Tên sản phẩm", "Đơn vị tính", "Số lượng", "Ngày bắt đầu", "Ngày kết thúc", "Hoàn thành" };
		tableModel_SanPham = new TableModel_SanPham(listSanPham, HeaderSP);
		tbl_SanPham = new JTable(tableModel_SanPham) {
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
		tbl_SanPham.getColumnModel().getColumn(0).setCellRenderer(rightRenderer);
		JTableHeader header = tbl_SanPham.getTableHeader();
		header.setBackground(Color.BLUE);
		header.setForeground(Color.WHITE);
		header.setFont(new Font("Tahoma", Font.BOLD, 15));
		header.setPreferredSize(new Dimension(header.getWidth(), 30));
		tbl_SanPham.setFont(new Font("Tahoma", Font.PLAIN, 15));
		tbl_SanPham.setBackground(UIManager.getColor("Button.light"));
		tbl_SanPham.setSelectionMode(ListSelectionModel.SINGLE_INTERVAL_SELECTION);
		tbl_SanPham.setSelectionBackground(new Color(190, 210, 255));
		tbl_SanPham.setRowHeight(35);
		
		scrollPaneSP.setViewportView(tbl_SanPham);
		
		tbl_SanPham.addMouseListener((MouseListener) new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				int index = tbl_SanPham.getSelectedRow();
				try {
					capNhatLenTruong(index);
				} catch (SQLException e1) {
					e1.printStackTrace();
				}
			}

			private void capNhatLenTruong(int index) throws SQLException {
				SanPham sp = listSanPham.get(index);
				txtMaSp.setText(sp.getMaSP() != null ? sp.getMaSP() : "");
				txtTenSanPham.setText(sp.getTenSP() != null ? sp.getTenSP() : "");
				int temp=0;
				List<String> a =layDS_DonViTinh();
				for(String i :donViTinh) {
					if(i.equalsIgnoreCase(sp.getDonViTinh().layDonViTinh())) {
						cmbDonViTinh.setSelectedIndex(temp);
						break;
					}
					temp+=1;
				}
				txtSoLuong.setText(sp.getSoLuong()+"");
				dch_NgayBatDau.setDate(sp.getNgayBatDau()!=null
						?java.sql.Date.valueOf(sp.getNgayBatDau() ):null);
				dch_NgayKetThuc.setDate(sp.getNgayKetThuc()!=null
						?java.sql.Date.valueOf(sp.getNgayKetThuc()):null);
				if (sp.isHoanThanh())
					cmbHoanThanh.setSelectedIndex(1);
				else 
					cmbHoanThanh.setSelectedIndex(2);
			
			}
		});
		
		
		btnTim = new JButton("Tìm kiếm");
		btnTim.setBounds(1084, 258, 162, 32);
		add(btnTim);
		
		btnLamRong = new JButton("Làm rỗng");
		btnLamRong.setBounds(912, 258, 162, 32);
		add(btnLamRong);
		
		btnTim.addActionListener(this);
		btnLamRong.addActionListener(this);
		dch_NgayBatDau.addPropertyChangeListener(this);
		dch_NgayKetThuc.addPropertyChangeListener(this);	
		cmbDonViTinh.addActionListener(this);
		
		txtMaSp = new JTextField();
		txtMaSp.setColumns(10);
		txtMaSp.setBounds(175, 70, 413, 32);
		add(txtMaSp);
		
		JLabel lblMa = new JLabel("Mã sản phẩm");
		lblMa.setHorizontalAlignment(SwingConstants.LEFT);
		lblMa.setFont(new Font("Tahoma", Font.PLAIN, 14));
		lblMa.setBounds(37, 68, 105, 32);
		add(lblMa);
		
	}
	private String layDonViTinh() {
		switch (cmbDonViTinh.getSelectedIndex()) {
		case 0:
			return EDonViTinh.CHAI.layDonViTinh();
		case 1:	
			return EDonViTinh.LOC.layDonViTinh();
		case 2:
			return EDonViTinh.THUNG.layDonViTinh();
		case 3:
			return EDonViTinh.CHIEC.layDonViTinh();
		case 4:
			return EDonViTinh.DOI.layDonViTinh();
		case 5:
			 return EDonViTinh.CAI.layDonViTinh();
		default:
			return "";	
		}
	}
	
	
	private List<String> layDS_DonViTinh() throws SQLException {
		Dao_SanPham daoSanPham = new Dao_SanPham(ConnectDB.getInstance().getConnection());
		List<String> list = new ArrayList<String>();
		daoSanPham.layDS_SanPham().forEach(i -> list.add(i.getDonViTinh().layDonViTinh()));
		return list;
	}
	private String layIsHoanThanh() {
		if (cmbHoanThanh.getSelectedIndex() == 1)
			return "1";
		else if (cmbHoanThanh.getSelectedIndex() == 2)
			return "0";
		return "";
		
	}
	
	
	@Override
	public void keyTyped(KeyEvent e) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public void keyPressed(KeyEvent e) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public void keyReleased(KeyEvent e) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public void propertyChange(PropertyChangeEvent evt) {
		// TODO Auto-generated method stub
		Object o = evt.getSource();
		if (o.equals(dch_NgayBatDau) && dch_NgayBatDau.getDate() != null)
			txtNgayBatDau.setText(new SimpleDateFormat("dd/MM/yyyy").format(dch_NgayBatDau.getDate()));
		if (o.equals(dch_NgayKetThuc) && dch_NgayKetThuc.getDate() != null)
			txtNgayKetThuc.setText(new SimpleDateFormat("dd/MM/yyyy").format(dch_NgayKetThuc.getDate()));
	}
	@Override
	public void actionPerformed(ActionEvent e) {
		// TODO Auto-generated method stub
		Object o = e.getSource();
		if (o.equals(btnLamRong)) {
			lamRong();
			updateTable();
		}
		if (o.equals(btnTim)) {
//			String ma = txtMaSp.getText().strip();
//			String ten = txtTenSanPham.getText().strip();
//			int sl = Integer.parseInt(txtSoLuong.getText().strip());
//			LocalDate BD=  dch_NgayBatDau.getDate()!=null?LocalDate.parse(new SimpleDateFormat("yyyy-MM-dd").format(dch_NgayBatDau.getDate())):null;
//			LocalDate KT=  dch_NgayKetThuc.getDate()!=null?LocalDate.parse(new SimpleDateFormat("yyyy-MM-dd").format(dch_NgayKetThuc.getDate())):null;
//			listCongNhan = daoCongNhan.timKiemCongNhan(txt_Ma.getText().strip(), txt_Ten.getText().strip(),
//			txt_SoDienThoai.getText().strip(), p, layGioiTinh(),txt_DiaChi.getText().strip());
			
			
			try {
				listSP = daoSanPham.layDS_SanPhamTheoTimKiem(txtMaSp.getText().strip(), 
						txtTenSanPham.getText().strip(), 
						layDonViTinh(),
						txtSoLuong.getText().strip() ,
						dch_NgayBatDau.getDate()!=null?Date.valueOf(LocalDate.parse(new SimpleDateFormat("yyyy-MM-dd").format(dch_NgayBatDau.getDate()) )):null,
						dch_NgayKetThuc.getDate()!=null?Date.valueOf(LocalDate.parse(new SimpleDateFormat("yyyy-MM-dd").format(dch_NgayKetThuc.getDate()) )):null,
						layIsHoanThanh());
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			tableModel_SanPham.setList(listSP);
			tbl_SanPham.updateUI();
		}
	}
	
	private void updateTable() {
		tableModel_SanPham.setList(listSanPham);
		tbl_SanPham.updateUI();
	}
	
	private void lamRong() {
		txtMaSp.setText("");
		txtTenSanPham.setText("");
		txtNgayKetThuc.setText("");
		txtNgayBatDau.setText("");
		cmbDonViTinh.setSelectedIndex(-1);
		dch_NgayBatDau.setDate(null);
		dch_NgayKetThuc.setDate(null);
		txtSoLuong.setText("");
	}
}
