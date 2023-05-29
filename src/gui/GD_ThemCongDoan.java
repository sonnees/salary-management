package gui;

import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JTextField;
import javax.swing.ListSelectionModel;
import javax.swing.JLabel;
import javax.swing.JOptionPane;

import java.awt.Font;
import javax.swing.SwingConstants;
import javax.swing.UIManager;
import javax.swing.JButton;
import javax.swing.JCheckBox;
import java.awt.event.ActionListener;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.sql.Connection;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.awt.event.ActionEvent;
import javax.swing.border.TitledBorder;
import javax.swing.table.DefaultTableCellRenderer;
import javax.swing.table.JTableHeader;
import javax.swing.table.TableCellRenderer;

import dao.Dao_CongDoan;
import dao.Dao_PhongBan;
import dao.Dao_SanPham;
import db.ConnectDB;
import entity.CongDoan;
import entity.CongNhan;
import entity.SanPham;
import model.TableModel_CongDoan_DayDu;
import model.TableModel_CongDoan_Sp;
import model.TableModel_CongNhan;

import javax.swing.border.EtchedBorder;
import java.awt.Color;
import java.awt.Component;
import java.awt.Dimension;

import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.JComboBox;

public class GD_ThemCongDoan extends JFrame implements ActionListener{

	private JPanel contentPane;
	private JTextField txtMaSP;
	private JTextField txtDonGia;
	private JTextField txtSoLuong;
	private JTextField txtTenCD;
	private JTextField txtDoUuTien;
	private Dao_CongDoan daoCongDoan = new Dao_CongDoan(ConnectDB.getInstance().getConnection());
	private Dao_SanPham dao_SanPham = new Dao_SanPham(ConnectDB.getInstance().getConnection());
	private List<CongDoan> listCongDoan;
	private TableModel_CongDoan_DayDu tableModel_CongDoan;
	private JTable tbl_CongDoan;
	private JButton btnThem;
	private JButton btnSua;
	private JButton btnXoa;
	private JButton btnXoaRong;
	private JCheckBox ckboxHoanThanh;
	private SanPham sp;

	/**
	 * Launch the application.
	 */
//	public static void main(String[] args) {
//		EventQueue.invokeLater(new Runnable() {
//			public void run() {
//				try {
//					GD_ThemCongDoan frame = new GD_ThemCongDoan();
//					frame.setVisible(true);
//				} catch (Exception e) {
//					e.printStackTrace();
//				}
//			}
//		});
//	}

	/**
	 * Create the frame.
	 */
	public GD_ThemCongDoan(String maSP) throws SQLException{
		sp = dao_SanPham.timKiemSanPhamBangMa(maSP);
		listCongDoan = daoCongDoan.layDS_CongDoan(maSP);
		setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
		setLocationRelativeTo(null);
		setSize(980, 580);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));

		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JLabel lblTitle = new JLabel("CÔNG ĐOẠN");
		lblTitle.setBounds(426, 11, 120, 32);
		lblTitle.setFont(new Font("Tahoma", Font.PLAIN, 20));
		contentPane.add(lblTitle);
		
		JLabel lblMaSanPham = new JLabel("Mã sản phẩm");
		lblMaSanPham.setHorizontalAlignment(SwingConstants.LEFT);
		lblMaSanPham.setFont(new Font("Tahoma", Font.PLAIN, 14));
		lblMaSanPham.setBounds(10, 80, 105, 32);
		contentPane.add(lblMaSanPham);
		
		txtMaSP = new JTextField(maSP);
		txtMaSP.setEditable(false);
		txtMaSP.setEnabled(false);
		txtMaSP.setColumns(10);
		txtMaSP.setBounds(117, 80, 349, 30);
		txtMaSP.setFont(new Font("Tahoma", Font.BOLD, 14));
		contentPane.add(txtMaSP);
		
		
		JLabel lblDonGia = new JLabel("Đơn giá");
		lblDonGia.setHorizontalAlignment(SwingConstants.LEFT);
		lblDonGia.setFont(new Font("Tahoma", Font.PLAIN, 14));
		lblDonGia.setBounds(492, 80, 105, 32);
		contentPane.add(lblDonGia);
		
		txtDonGia = new JTextField();
		txtDonGia.setColumns(10);
		txtDonGia.setBounds(584, 80, 370, 30);
		contentPane.add(txtDonGia);
		
		JLabel lblSoLuong = new JLabel("Số lượng");
		lblSoLuong.setHorizontalAlignment(SwingConstants.LEFT);
		lblSoLuong.setFont(new Font("Tahoma", Font.PLAIN, 14));
		lblSoLuong.setBounds(492, 130, 105, 32);
		contentPane.add(lblSoLuong);

		txtSoLuong = new JTextField(sp.getSoLuong()+"");
		txtSoLuong.setColumns(10);
		txtSoLuong.setBounds(584, 130, 370, 30);
//		txtSoLuong.setEnabled(false);
		contentPane.add(txtSoLuong);
		
		
		JLabel lblTenCD = new JLabel("Tên công đoạn");
		lblTenCD.setHorizontalAlignment(SwingConstants.LEFT);
		lblTenCD.setFont(new Font("Tahoma", Font.PLAIN, 14));
		lblTenCD.setBounds(10, 130, 105, 32);
		contentPane.add(lblTenCD);
		
		txtTenCD = new JTextField();
		txtTenCD.setColumns(10);
		txtTenCD.setBounds(117, 130, 349, 30);
		contentPane.add(txtTenCD);
		
		JLabel lblDoUuTien = new JLabel("Độ ưu tiên");
		lblDoUuTien.setHorizontalAlignment(SwingConstants.LEFT);
		lblDoUuTien.setFont(new Font("Tahoma", Font.PLAIN, 14));
		lblDoUuTien.setBounds(10, 180, 105, 32);
		contentPane.add(lblDoUuTien);
		
		txtDoUuTien = new JTextField();
		txtDoUuTien.setColumns(10);
		txtDoUuTien.setBounds(117, 180, 196, 30);
		contentPane.add(txtDoUuTien);
		
		btnXoaRong = new JButton("Làm rỗng");
		btnXoaRong.setBounds(492, 180, 100, 32);
		contentPane.add(btnXoaRong);
		
		JLabel lblHoanThanh = new JLabel("Hoàn thành");
		lblHoanThanh.setHorizontalAlignment(SwingConstants.LEFT);
		lblHoanThanh.setFont(new Font("Tahoma", Font.PLAIN, 14));
		lblHoanThanh.setBounds(336, 180, 88, 32);
		contentPane.add(lblHoanThanh);
		
		ckboxHoanThanh = new JCheckBox("");
		ckboxHoanThanh.setBounds(426, 180, 53, 30);
		contentPane.add(ckboxHoanThanh);
		
		btnThem = new JButton("Thêm");
		btnThem.setBounds(613, 180, 100, 32);
		contentPane.add(btnThem);
		
		btnSua = new JButton("Sửa");
		btnSua.setBounds(734, 180, 100, 32);
		contentPane.add(btnSua);
		
		btnXoa = new JButton("Xóa");
		btnXoa.setBounds(854, 180, 100, 32);
		contentPane.add(btnXoa);
		
		JPanel panel = new JPanel();
		panel.setLayout(null);
		panel.setBorder(new TitledBorder(new EtchedBorder(EtchedBorder.LOWERED, new Color(255, 255, 255), new Color(160, 160, 160)), "Bảng công đoạn", TitledBorder.LEADING, TitledBorder.TOP, null, new Color(0, 0, 0)));
		panel.setBounds(10, 223, 944, 307);
		contentPane.add(panel);
		
		JScrollPane scrollPane = new JScrollPane();
		scrollPane.setBounds(10, 37, 924, 259);
		panel.add(scrollPane);
		
		JComboBox cmb_SapXep = new JComboBox();
		cmb_SapXep.setToolTipText("Chọn để sắp xếp bảng");
		cmb_SapXep.setFont(new Font("Tahoma", Font.PLAIN, 10));
		cmb_SapXep.setBounds(821, 11, 113, 22);
		panel.add(cmb_SapXep);
		

		
		String[] headLine = { "Mã công đoạn", "Tên công đoạn", "Độ ưu tiên", "Đơn giá", "Số lượng","Hoàn thành"};
		
		listCongDoan = daoCongDoan.layDS_CongDoan(maSP);
		
		tableModel_CongDoan = new TableModel_CongDoan_DayDu(listCongDoan, headLine);
		
		tbl_CongDoan = new JTable(tableModel_CongDoan) {
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
		tbl_CongDoan.getColumnModel().getColumn(0).setCellRenderer(rightRenderer);
		JTableHeader header = tbl_CongDoan.getTableHeader();
		header.setBackground(Color.BLUE);
		header.setForeground(Color.WHITE);
		header.setFont(new Font("Tahoma", Font.BOLD, 15));
		header.setPreferredSize(new Dimension(header.getWidth(), 30));
		tbl_CongDoan.setFont(new Font("Tahoma", Font.PLAIN, 15));
		tbl_CongDoan.setBackground(UIManager.getColor("Button.light"));
		tbl_CongDoan.setSelectionMode(ListSelectionModel.SINGLE_INTERVAL_SELECTION);
		tbl_CongDoan.setSelectionBackground(new Color(190, 210, 255));
		tbl_CongDoan.setRowHeight(35);
		
		scrollPane.setViewportView(tbl_CongDoan);
		
		tbl_CongDoan.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				int index = tbl_CongDoan.getSelectedRow();
				try {
					capNhatLenTruong(index);
				} catch (SQLException e1) {
					e1.printStackTrace();
				}
			}
		
			private void capNhatLenTruong(int index) throws SQLException {
				CongDoan cd = listCongDoan.get(index);
				txtTenCD.setText(cd.getTenCD() != null ? cd.getTenCD(): "");
				txtDoUuTien.setText(cd.getDoUuTien()+"");
				txtDonGia.setText(cd.getDonGia()+"");
				txtSoLuong.setText(cd.getSoLuong()+"");
				ckboxHoanThanh.setSelected(cd.isHoanThanh()== true ? cd.isHoanThanh():false);
			}
		});
		btnXoaRong.addActionListener(this);
		btnThem.addActionListener(this);
		btnXoa.addActionListener(this);
		btnSua.addActionListener(this);
		ckboxHoanThanh.addActionListener(this);
	}

	@Override
	public void actionPerformed(ActionEvent e) {
		// TODO Auto-generated method stub
		Object o = e.getSource();
		if (o.equals(btnXoaRong)) {
			lamRong();
		}
		else if (o.equals(btnThem)) {
			CongDoan cd = null;
			try {
				
				cd = new CongDoan(txtTenCD.getText().strip(), 
						Integer.parseInt(txtDoUuTien.getText().strip()), 
						Long.parseLong(txtDonGia.getText().strip()), 
						Integer.parseInt(txtSoLuong.getText().strip()), 
						sp, 
						layIsHoanThanh());
			}catch (NumberFormatException e2) {
				e2.printStackTrace();
			}
			boolean rs = daoCongDoan.themCongDoan(cd);
			if(rs) {
				JOptionPane.showMessageDialog(this, "Thêm thành công!", "Phần Mềm Tính Lương", 1);
				try {
					listCongDoan = daoCongDoan.layDS_CongDoan(sp.getMaSP());
				} catch (SQLException e1) {
					e1.printStackTrace();
				}
				updateTable();
			}
			else 
				JOptionPane.showMessageDialog(this, "Thêm thất bại!", "Phần Mềm Tính Lương", 2);
				
			lamRong();
			
		}
		else if (o.equals(btnXoa)) {
			int index = tbl_CongDoan.getSelectedRow();
			
			if(index<0) {
				JOptionPane.showMessageDialog(this, "Chưa chọn công đoạn!", "Phần Mềm Tính Lương", 2);
				return;
			}
			
			int i = JOptionPane.showConfirmDialog(
					this, "Bạn có muốn xóa công đoạn có mã \""
							+ listCongDoan.get(index).getMaCD() + "\" không?",
					"Phần Mềm Tính Lương", 2);
			if (i == 0) {
				try {
					daoCongDoan.xoaCongDoan(listCongDoan.get(index).getMaCD());
					listCongDoan= daoCongDoan.layDS_CongDoan(sp.getMaSP());
					updateTable();
					JOptionPane.showMessageDialog(this, "Xóa thành công!", "Phần Mềm Tính Lương", 1);
				} catch (Exception e2) {
					JOptionPane.showMessageDialog(this, "Xóa thất bại!", "Phần Mềm Tính Lương", 2);
				}
			} else
				return;
			lamRong();
		}
		else if (o.equals(btnSua)) {
			int index = tbl_CongDoan.getSelectedRow();
			
			if(index<0) {
				JOptionPane.showMessageDialog(this, "Chưa chọn công đoạn!", "Phần Mềm Tính Lương", 2);
				return;
			}
			CongDoan cd = null;
			try {
				cd = new CongDoan(txtTenCD.getText().strip(), 
						Integer.parseInt(txtDoUuTien.getText().strip()), 
						Long.parseLong(txtDonGia.getText().strip()), 
						Integer.parseInt(txtSoLuong.getText().strip()), 
						sp, 
						layIsHoanThanh());
			}catch (NumberFormatException e2) {
				e2.printStackTrace();
			}
			CongDoan cdCu = listCongDoan.get(index);
			int i = JOptionPane.showConfirmDialog(
					this, "Sửa thông tin sản phẩm có mã '"
							+ cdCu.getMaCD(), "Phần Mềm Tính Lương", 2);
			if (i == 0) {
				cd.setMaCD(cdCu.getMaCD());
				boolean rs = daoCongDoan.suaCongDoan(cd);
				if(rs) {
					JOptionPane.showMessageDialog(this, "Sửa thành công!", "Phần Mềm Tính Lương", 1);
					try {
						listCongDoan = daoCongDoan.layDS_CongDoan(sp.getMaSP());
					} catch (SQLException e1) {
						e1.printStackTrace();
					}
					updateTable();
				}
				else 
					JOptionPane.showMessageDialog(this, "Sửa thất bại!", "Phần Mềm Tính Lương", 2);
			} else
				return;
			}
	}

	private List<String> layDS_SanPhamChoCongDoan() throws SQLException {
		Dao_SanPham daoSanpham = new Dao_SanPham(ConnectDB.getInstance().getConnection());
		List<String> list = new ArrayList<String>();
		daoSanpham.layDS_SanPhamCuaCongDoan().forEach(i -> list.add(i.getMaSP()));

		return list;
	}
	
	private void updateTable() {
		tableModel_CongDoan.setList(listCongDoan);
		tbl_CongDoan.updateUI();

	}
	
	private boolean layIsHoanThanh() {
		if (ckboxHoanThanh.isSelected())
			return true;
		return false;
	}
	
	private void lamRong() {
		// TODO Auto-generated method stub
		txtMaSP.setText(sp.getMaSP());
		txtTenCD.setText("");
//		txtSoLuong.setText("");
		txtDoUuTien.setText("");
		txtDonGia.setText("");
	}
}