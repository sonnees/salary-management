package gui;

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
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.Period;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JScrollBar;
import javax.swing.JTable;
import javax.swing.JTextField;
import javax.swing.ListSelectionModel;
import javax.swing.SwingConstants;
import javax.swing.UIManager;
import javax.swing.DefaultComboBoxModel;
import javax.swing.JButton;
import javax.swing.JCheckBox;
import javax.swing.border.TitledBorder;
import javax.swing.table.DefaultTableCellRenderer;
import javax.swing.table.JTableHeader;
import javax.swing.table.TableCellRenderer;

import com.toedter.calendar.JDateChooser;

import dao.Dao_CongDoan;
import dao.Dao_SanPham;
import db.ConnectDB;
import entity.CongDoan;
import entity.EDonViTinh;

import entity.SanPham;
import model.TableModel_CongDoan_DayDu;
import model.TableModel_CongDoan_Sp;
import model.TableModel_SanPham;

import javax.swing.border.EtchedBorder;
import java.awt.Color;
import java.awt.Component;
import java.awt.Dimension;

import javax.swing.JScrollPane;
import javax.swing.JComboBox;

public class Pn_ChinhSuaSanPham extends JPanel implements ActionListener, PropertyChangeListener,KeyListener{
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
	private JButton btnThemCongDoan;
	private JButton btnSuaSP;
	private JButton btnXoaSP;
	private JButton btnThemSP;
	private JCheckBox chckbxHoanThanh;
	private JDateChooser dch_NgayKetThuc;
	private JDateChooser dch_NgayBatDau;
	private Dao_SanPham daoSanPham= new Dao_SanPham(ConnectDB.getInstance().getConnection());;
	private Dao_CongDoan daoCongDoan=  new Dao_CongDoan(ConnectDB.getInstance().getConnection());;
	private TableModel_CongDoan_Sp tableModel_CongDoan;
	private JTable tbl_CongDoan;
	private List<SanPham> listSanPham = daoSanPham.layDS_SanPham();
	private List<CongDoan> listCongDoan;
	private JButton btnLamRong;

	/**
	 * Create the panel.
	 * @throws SQLException 
	 */
	public Pn_ChinhSuaSanPham() throws SQLException{
		setLayout(null);
		setSize(1290,820);
		
		JLabel lblChinhSuaSP = new JLabel("CHỈNH SỬA SẢN PHẨM");
		lblChinhSuaSP.setBounds(518, 11, 258, 25);
		lblChinhSuaSP.setHorizontalAlignment(SwingConstants.CENTER);
		lblChinhSuaSP.setFont(new Font("Tahoma", Font.PLAIN, 20));
		add(lblChinhSuaSP);
		
		JLabel lblTenSanPham = new JLabel("Tên sản phẩm");
		lblTenSanPham.setHorizontalAlignment(SwingConstants.LEFT);
		lblTenSanPham.setFont(new Font("Tahoma", Font.PLAIN, 14));
		lblTenSanPham.setBounds(20, 90, 105, 32);
		add(lblTenSanPham);
		
		txtTenSanPham = new JTextField();
		txtTenSanPham.setColumns(10);
		txtTenSanPham.setBounds(135, 90, 413, 32);
		add(txtTenSanPham);
		
		JLabel lblDonViTinh = new JLabel("Đơn vị tính");
		lblDonViTinh.setHorizontalAlignment(SwingConstants.LEFT);
		lblDonViTinh.setFont(new Font("Tahoma", Font.PLAIN, 14));
		lblDonViTinh.setBounds(20, 250, 105, 32);
		
		add(lblDonViTinh);
		cmbDonViTinh = new JComboBox();
		cmbDonViTinh.setBounds(135, 250, 80, 32);
		cmbDonViTinh.setModel(new DefaultComboBoxModel(donViTinh));
		add(cmbDonViTinh);
		
		JLabel lblNgayKetThuc = new JLabel("Ngày kết thúc");
		lblNgayKetThuc.setHorizontalAlignment(SwingConstants.LEFT);
		lblNgayKetThuc.setFont(new Font("Tahoma", Font.PLAIN, 14));
		lblNgayKetThuc.setBounds(20, 200, 105, 32);
		add(lblNgayKetThuc);
		
		dch_NgayBatDau = new JDateChooser();
		dch_NgayBatDau.setBounds(526, 150, 22, 32);
		add(dch_NgayBatDau);
		
		txtNgayKetThuc = new JTextField();
		txtNgayKetThuc.setColumns(10);
		txtNgayKetThuc.setBounds(135, 200, 394, 32);
		add(txtNgayKetThuc);
		
		dch_NgayKetThuc = new JDateChooser();
		dch_NgayKetThuc.setBounds(526, 200, 22, 32);
		add(dch_NgayKetThuc);
		
		txtNgayBatDau = new JTextField();
		txtNgayBatDau.setColumns(10);
		txtNgayBatDau.setBounds(135, 150, 394, 32);
		add(txtNgayBatDau);
		JLabel lblSoLuong = new JLabel("Số lượng");
		lblSoLuong.setHorizontalAlignment(SwingConstants.LEFT);
		lblSoLuong.setFont(new Font("Tahoma", Font.PLAIN, 14));
		lblSoLuong.setBounds(243, 250, 80, 32);
		add(lblSoLuong);
		
		txtSoLuong = new JTextField();
		txtSoLuong.setColumns(10);
		txtSoLuong.setBounds(318, 250, 80, 32);
		add(txtSoLuong);
		
		JLabel lblNgayBatDau = new JLabel("Ngày bắt đầu");
		lblNgayBatDau.setHorizontalAlignment(SwingConstants.LEFT);
		lblNgayBatDau.setFont(new Font("Tahoma", Font.PLAIN, 14));
		lblNgayBatDau.setBounds(20, 150, 105, 32);
		add(lblNgayBatDau);
		
		JLabel lblHoanThanh = new JLabel("Hoàn thành");
		lblHoanThanh.setHorizontalAlignment(SwingConstants.LEFT);
		lblHoanThanh.setFont(new Font("Tahoma", Font.PLAIN, 14));
		lblHoanThanh.setBounds(424, 250, 105, 32);
		add(lblHoanThanh);
		
		
		chckbxHoanThanh = new JCheckBox("");
		
		chckbxHoanThanh.setBounds(519, 250, 29, 32);
		
		add(chckbxHoanThanh);
		
		btnThemSP = new JButton("Thêm");
		btnThemSP.setBounds(177, 320, 105, 32);
		add(btnThemSP);
		
		btnXoaSP = new JButton("Xóa");
		btnXoaSP.setBounds(424, 320, 105, 32);
		btnXoaSP.setEnabled(false);
		add(btnXoaSP);
		
		btnSuaSP = new JButton("Sửa");
		btnSuaSP.setBounds(302, 320, 105, 32);
		add(btnSuaSP);
		
		btnThemCongDoan = new JButton("Thêm công đoạn");
		btnThemCongDoan.setEnabled(false);
		btnThemCongDoan.setBounds(1073, 345, 177, 32);
		add(btnThemCongDoan);
		
		JPanel pnSP = new JPanel();
		pnSP.setLayout(null);
		pnSP.setBorder(new TitledBorder(new EtchedBorder(EtchedBorder.LOWERED, new Color(255, 255, 255), new Color(160, 160, 160)), "Danh sách sản phẩm", TitledBorder.LEADING, TitledBorder.TOP, null, new Color(0, 0, 0)));
		pnSP.setBounds(10, 385, 1255, 326);
		add(pnSP);
		
		scrollPaneSP = new JScrollPane();
		scrollPaneSP.setBounds(10, 37, 1235, 278);
		pnSP.add(scrollPaneSP);
		
		cmb_SapXepSP = new JComboBox();
		cmb_SapXepSP.setToolTipText("Chọn để sắp xếp bảng");
		cmb_SapXepSP
		.setModel(new DefaultComboBoxModel(new String[] { "Sắp xếp theo mã","Sắp xếp theo ngày bắt đầu" }));
		cmb_SapXepSP.setFont(new Font("Tahoma", Font.PLAIN, 10));
		cmb_SapXepSP.setBounds(1132, 11, 113, 22);
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
//				btnThemCongDoan.setEnabled(true);
				btnXoaSP.setEnabled(true);
				try {
					capNhatLenTruong(index);
				} catch (SQLException e1) {
					e1.printStackTrace();
				}
			}

			private void capNhatLenTruong(int index) throws SQLException {
				SanPham sp = listSanPham.get(index);
				int temp=0;
				for(String i :donViTinh) {
					if(sp.getDonViTinh().layDonViTinh().equals(i)) {
						cmbDonViTinh.setSelectedIndex(temp);
						break;
					}
					temp+=1;
				}
				txtTenSanPham.setText(sp.getTenSP());
				txtSoLuong.setText(sp.getSoLuong()+"");
				dch_NgayBatDau.setDate(sp.getNgayBatDau()!=null
						?java.sql.Date.valueOf(sp.getNgayBatDau() ):null);
				dch_NgayKetThuc.setDate(sp.getNgayKetThuc()!=null
						?java.sql.Date.valueOf(sp.getNgayKetThuc()):null);
				chckbxHoanThanh.setSelected(sp.isHoanThanh()== true ? sp.isHoanThanh():false );
				if (sp.isHoanThanh() == true) {
					btnThemCongDoan.setEnabled(false);
				}else 
					btnThemCongDoan.setEnabled(true);
				listCongDoan = daoCongDoan.layDS_CongDoan(sp.getMaSP());
				tableModel_CongDoan.setList(listCongDoan);
				tbl_CongDoan.updateUI();
			}
		});
		
		JPanel pnCD = new JPanel();
		pnCD.setLayout(null);
		pnCD.setBorder(new TitledBorder(new EtchedBorder(EtchedBorder.LOWERED, new Color(255, 255, 255), new Color(160, 160, 160)), "Danh sách công đoạn của sản phẩm", TitledBorder.LEADING, TitledBorder.TOP, null, new Color(0, 0, 0)));
		pnCD.setBounds(582, 47, 683, 287);
		add(pnCD);
		
		JScrollPane scrollPaneCD = new JScrollPane();
		scrollPaneCD.setBounds(10, 37, 663, 239);
		pnCD.add(scrollPaneCD);
		String[] HeaderCD = { "Mã công đoạn", "Tên công đoạn", "Độ ưu tiên", "Số lượng", "Hoàn thành" };
		tableModel_CongDoan = new TableModel_CongDoan_Sp(listCongDoan, HeaderCD);
		tbl_CongDoan = new JTable(tableModel_CongDoan) {
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
		
		DefaultTableCellRenderer leftRenderer = new DefaultTableCellRenderer();
		tbl_CongDoan.getColumnModel().getColumn(0).setCellRenderer(leftRenderer);
		JTableHeader header1 = tbl_CongDoan.getTableHeader();
		header1.setBackground(Color.BLUE);
		header1.setForeground(Color.WHITE);
		header1.setFont(new Font("Tahoma", Font.BOLD, 15));
		header1.setPreferredSize(new Dimension(header1.getWidth(), 30));
		tbl_CongDoan.setFont(new Font("Tahoma", Font.PLAIN, 15));
		tbl_CongDoan.setBackground(UIManager.getColor("Button.light"));
		tbl_CongDoan.setSelectionMode(ListSelectionModel.SINGLE_INTERVAL_SELECTION);
		tbl_CongDoan.setSelectionBackground(new Color(190, 210, 255));
		tbl_CongDoan.setRowHeight(35);
		
		scrollPaneCD.setViewportView(tbl_CongDoan);
		
		btnSuaSP.addActionListener(this);
		btnXoaSP.addActionListener(this);
		btnThemSP.addActionListener(this);
		btnThemCongDoan.addActionListener(this);
		dch_NgayBatDau.addPropertyChangeListener(this);
		dch_NgayKetThuc.addPropertyChangeListener(this);	
		cmbDonViTinh.addActionListener(this);
		
		btnLamRong = new JButton("Làm rỗng");
		btnLamRong.setBounds(54, 320, 105, 32);
		add(btnLamRong);
		btnLamRong.addActionListener(this);
		
	}
	
	private EDonViTinh layDonViTinh() {
		switch (cmbDonViTinh.getSelectedIndex()) {
		case 0:
			return EDonViTinh.CHAI;
		case 1:
			return EDonViTinh.LOC;
		case 2:
			return EDonViTinh.THUNG;
		case 3:
			return EDonViTinh.CHIEC;
		case 4:
			return EDonViTinh.DOI;
		default:
			 return EDonViTinh.CAI;
		
		}
	}
	private List<String> layDS_DonViTinh() throws SQLException {
		Dao_SanPham daoSanPham = new Dao_SanPham(ConnectDB.getInstance().getConnection());
		List<String> list = new ArrayList<String>();
		daoSanPham.layDS_SanPham().forEach(i -> list.add(i.getDonViTinh().layDonViTinh()));
		return list;
	}
	
	private void lamRong() {
		txtTenSanPham.setText("");
		txtNgayKetThuc.setText("");
		txtNgayBatDau.setText("");
		cmbDonViTinh.setSelectedIndex(-1);
		dch_NgayBatDau.setDate(null);
		dch_NgayKetThuc.setDate(null);
		txtSoLuong.setText("");
		
	}
	private boolean layIsHoanThanh() {
		if (chckbxHoanThanh.isSelected())
			return true;
		return false;
	}
	@Override
	public void actionPerformed(ActionEvent e) {
		// TODO Auto-generated method stub
		Object o = e.getSource();
		if( o.equals(btnLamRong)) {
			lamRong();
			updateTable();
			btnXoaSP.setEnabled(false);
		}
		else if (o.equals(btnThemSP)) {
			SanPham sp = null;
			try {
				sp = new SanPham(txtTenSanPham.getText().strip(), layDonViTinh(),
								Integer.parseInt(txtSoLuong.getText()),
								dch_NgayBatDau.getDate()!=null?LocalDate.parse(new SimpleDateFormat("yyyy-MM-dd").format(dch_NgayBatDau.getDate())):null,
								dch_NgayKetThuc.getDate()!=null?LocalDate.parse(new SimpleDateFormat("yyyy-MM-dd").format(dch_NgayKetThuc.getDate())):null, 
								false
						);
				if(sp.getNgayKetThuc().compareTo(sp.getNgayBatDau())<0) {
					JOptionPane.showMessageDialog(this, "Ngày kết thúc không được nhỏ hơn ngày bắt đầu!","Phần Mềm Tính Lương", 2);
					return;
				}
					
				
			} catch (NumberFormatException e2) {
				e2.printStackTrace();
			}
			
			boolean rs = daoSanPham.themSanPham(sp);
			if(rs) {
				JOptionPane.showMessageDialog(this, "Thêm thành công!", "Phần Mềm Tính Lương", 1);
				try {
					listSanPham = daoSanPham.layDS_SanPham();
				} catch (SQLException e1) {
					e1.printStackTrace();
				}
				updateTable();
			}
			else 
				JOptionPane.showMessageDialog(this, "Thêm thất bại!", "Phần Mềm Tính Lương", 2);
				
			lamRong();
		}
		else if (o.equals(btnXoaSP)) {
				int index = tbl_SanPham.getSelectedRow();
				
				if(index<0) {
					JOptionPane.showMessageDialog(this, "Chưa chọn sản phẩm!", "Phần Mềm Tính Lương", 2);
					return;
				}
				
				int i = JOptionPane.showConfirmDialog(
						this, "Bạn có muốn xóa sản phẩm có mã \""
								+ listSanPham.get(index).getMaSP() + "\" không?",
						"Phần Mềm Tính Lương", 2);
				if (i == 0) {
					try {
						daoSanPham.xoaSanPham(listSanPham.get(index).getMaSP());
						
						listSanPham = daoSanPham.layDS_SanPham();
						listCongDoan = null;
						updateTable();
						JOptionPane.showMessageDialog(this, "Xóa thành công!", "Phần Mềm Tính Lương", 1);
					} catch (Exception e2) {
						JOptionPane.showMessageDialog(this, "Xóa thất bại!", "Phần Mềm Tính Lương", 2);
					}
				} else
					return;
				lamRong();
			}
		else if (o.equals(btnSuaSP)) {
					int index = tbl_SanPham.getSelectedRow();
					if(index<0) {
						JOptionPane.showMessageDialog(this, "Chưa chọn sản phẩm!", "Phần Mềm Tính Lương", 2);
						return;
					}
					
					SanPham sp = null;
					try {
						sp = new SanPham(
								txtTenSanPham.getText().strip(), layDonViTinh(),
								Integer.parseInt(txtSoLuong.getText()),
								dch_NgayBatDau.getDate()!=null?LocalDate.parse(new SimpleDateFormat("yyyy-MM-dd").format(dch_NgayBatDau.getDate())):null,
								dch_NgayKetThuc.getDate()!=null?LocalDate.parse(new SimpleDateFormat("yyyy-MM-dd").format(dch_NgayKetThuc.getDate())):null, 
								layIsHoanThanh()
								);
						if(sp.getNgayKetThuc().compareTo(sp.getNgayBatDau())<0) {
							JOptionPane.showMessageDialog(this, "Ngày kết thúc không được nhỏ hơn ngày bắt đầu!","Phần Mềm Tính Lương", 2);
							return;
						}
					} catch (NumberFormatException e2) {
						e2.printStackTrace();
					}
					
					SanPham spCu = listSanPham.get(index);
					String thayDoi = layThayDoi(spCu, sp);
					
					if(thayDoi.equals("")) {
						JOptionPane.showMessageDialog(this, "Không có sự thay đổi mới nào!","Phần Mềm Tính Lương", 2);
						return;
					}
					
					int i = JOptionPane.showConfirmDialog(
							this, "Sửa thông tin sản phẩm có mã '"
									+ spCu.getMaSP()+ "':\n"+thayDoi,
							"Phần Mềm Tính Lương", 2);
					if (i == 0) {
						sp.setMaSP(spCu.getMaSP());
						boolean rs = daoSanPham.suaSanPham(sp);
						if(rs) {
							JOptionPane.showMessageDialog(this, "Sửa thành công!", "Phần Mềm Tính Lương", 1);
							try {
								listSanPham = daoSanPham.layDS_SanPham();
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
		else if (o.equals(cmb_SapXepSP)) {
					if (cmb_SapXepSP.getSelectedIndex() == 0) {
						Collections.sort(listSanPham, (sp1, sp2) -> sp1.getMaSP().compareTo(sp2.getMaSP()));
						updateTable();
					} else if(cmb_SapXepSP.getSelectedIndex()==1) {
						Collections.sort(listSanPham,
								(sp1,sp2) -> sp1.getNgayBatDau().compareTo(sp2.getNgayBatDau()));
						updateTable();
					}
				}
		else if (o.equals(btnThemCongDoan)) {
				int index = tbl_SanPham.getSelectedRow();
				
				if(index<0) {
					JOptionPane.showMessageDialog(this, "Chưa chọn sản phẩm!", "Phần Mềm Tính Lương", 2);
					return;
				}
				try {
					new GD_ThemCongDoan(listSanPham.get(index).getMaSP()).setVisible(true);
				} catch (SQLException e1) {
					e1.printStackTrace();
				}		
			}
		
	}

	private int layKQSoSanh(String tenSP, String tenSP2) {
		String[] arrTenSP1 = tenSP.split(" ");
		String[] arrTenSP2 = tenSP2.split(" ");

		if (arrTenSP1[arrTenSP1.length - 1].compareTo(arrTenSP2[arrTenSP2.length - 1]) != 0)
			return arrTenSP1[arrTenSP1.length - 1].compareTo(arrTenSP2[arrTenSP2.length - 1]);

		return arrTenSP1[arrTenSP1.length - 1].compareTo(arrTenSP2[arrTenSP2.length - 1]);
	}

	private String layThayDoi(SanPham spCu, SanPham sp) {
		String thayDoi = "";
		if(!spCu.getTenSP().equals(sp.getTenSP()))
			thayDoi += "    *Tên sản phẩm: '"+spCu.getTenSP()+"' thành '"+sp.getTenSP()+"'\n";
		if(spCu.getDonViTinh()!=sp.getDonViTinh())
			thayDoi += "    *Đơn vị tính: '"+(spCu.getDonViTinh().layDonViTinh())+"' thành '"+(sp.getDonViTinh().layDonViTinh())+"'\n";
		if(spCu.getSoLuong()!= sp.getSoLuong())
			thayDoi += "    *Số lượng: '"+spCu.getSoLuong()+"' thành '"+sp.getSoLuong()+"'\n";
		if(spCu.getNgayBatDau().compareTo(sp.getNgayBatDau())!=0)
			thayDoi += "    *Ngày bắt đầu: '"+new SimpleDateFormat("dd/MM/yyyy").format(Date.valueOf(spCu.getNgayBatDau()))+"' thành '"+new SimpleDateFormat("dd/MM/yyyy").format(Date.valueOf(sp.getNgayBatDau()))+"'\n";
		if(spCu.getNgayKetThuc().compareTo(sp.getNgayKetThuc())!=0)
			thayDoi += "    *Ngày kết thúc: '"+new SimpleDateFormat("dd/MM/yyyy").format(Date.valueOf(spCu.getNgayKetThuc()))+"' thành '"+new SimpleDateFormat("dd/MM/yyyy").format(Date.valueOf(sp.getNgayKetThuc()))+"'\n";
		if(spCu.isHoanThanh()!=sp.isHoanThanh())
			thayDoi += "    *Hoàn thành: '"+(spCu.isHoanThanh()==true?"Hoàn thành":"Chưa hoàn thành")+"' thành '"+(sp.isHoanThanh()==false?"Chưa hoàn thành":"Hoàn thành")+"'\n";
	
		return thayDoi;
	}

	private void updateTable() {
		tableModel_SanPham.setList(listSanPham);
		tbl_SanPham.updateUI();
		
		tableModel_CongDoan.setList(listCongDoan);
		tbl_CongDoan.updateUI();
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
}