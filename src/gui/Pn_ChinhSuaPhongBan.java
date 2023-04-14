package gui;

import java.awt.Color;
import java.awt.Component;
import java.awt.Dimension;
import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.sql.SQLException;
import java.util.Collections;

import javax.swing.DefaultComboBoxModel;
import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
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

import dao.Dao_PhongBan;
import entity.PhongBan;
import model.TableModel_PhongBan;

public class Pn_ChinhSuaPhongBan extends JPanel implements ActionListener{

	private JTextField txtMaPhongBan;
	private JTextField txtTenPhongBan;
	private JTextField txtPhanKhu;
	private JButton btnThemPK;
	private JButton btnXoaPK;
	private JButton btnSuaPK;
	private java.util.List<PhongBan> listPhongBan;
	private JButton btnXoaRong;
	private TableModel_PhongBan tableModel_PhongBan;
	private JTable tbl_PhongBan;
	private JComboBox cmb_SapXep;
	private Dao_PhongBan daoPhongBan;

	/**
	 * Create the panel.
	 */
	public Pn_ChinhSuaPhongBan() {
		setLayout(null);
		
		JLabel lblChinhSuaPB = new JLabel("CHỈNH SỬA PHÒNG BAN");
		lblChinhSuaPB.setBounds(518, 11, 258, 25);
		lblChinhSuaPB.setHorizontalAlignment(SwingConstants.CENTER);
		lblChinhSuaPB.setFont(new Font("Tahoma", Font.PLAIN, 20));
		add(lblChinhSuaPB);
		
		JLabel lblMaPhongBan = new JLabel("Mã phòng ban");
		lblMaPhongBan.setHorizontalAlignment(SwingConstants.LEFT);
		lblMaPhongBan.setFont(new Font("Tahoma", Font.PLAIN, 14));
		lblMaPhongBan.setBounds(153, 97, 105, 32);
		add(lblMaPhongBan);
		
		txtMaPhongBan = new JTextField();
		txtMaPhongBan.setColumns(10);
		txtMaPhongBan.setBounds(311, 99, 746, 32);
		add(txtMaPhongBan);
		
		JLabel lblTenPhongBan = new JLabel("Tên phòng ban");
		lblTenPhongBan.setHorizontalAlignment(SwingConstants.LEFT);
		lblTenPhongBan.setFont(new Font("Tahoma", Font.PLAIN, 14));
		lblTenPhongBan.setBounds(153, 167, 105, 32);
		add(lblTenPhongBan);
		
		txtTenPhongBan = new JTextField();
		txtTenPhongBan.setColumns(10);
		txtTenPhongBan.setBounds(311, 167, 746, 32);
		add(txtTenPhongBan);
		
		txtPhanKhu = new JTextField();
		txtPhanKhu.setColumns(10);
		txtPhanKhu.setBounds(311, 236, 746, 32);
		add(txtPhanKhu);
		
		JLabel lblPhanKhu = new JLabel("Phân khu");
		lblPhanKhu.setHorizontalAlignment(SwingConstants.LEFT);
		lblPhanKhu.setFont(new Font("Tahoma", Font.PLAIN, 14));
		lblPhanKhu.setBounds(153, 236, 105, 32);
		add(lblPhanKhu);
		
		btnThemPK = new JButton("Thêm");
		btnThemPK.setBounds(776, 279, 105, 32);
		add(btnThemPK);
		
		btnXoaPK = new JButton("Xóa");
		btnXoaPK.setBounds(915, 279, 105, 32);
		add(btnXoaPK);
		
		btnSuaPK = new JButton("Sửa");
		btnSuaPK.setBounds(1050, 279, 105, 32);
		add(btnSuaPK);
		
		JPanel panel = new JPanel();
		panel.setBorder(new TitledBorder(new EtchedBorder(EtchedBorder.LOWERED, new Color(255, 255, 255), new Color(160, 160, 160)), "Bảng phòng ban", TitledBorder.LEADING, TitledBorder.TOP, null, new Color(0, 0, 0)));
		panel.setBounds(10, 322, 1241, 370);
		add(panel);
		panel.setLayout(null);
		
		JScrollPane scrollPane = new JScrollPane();
		scrollPane.setBounds(10, 37, 1221, 322);
		panel.add(scrollPane);
		
		cmb_SapXep = new JComboBox();
		cmb_SapXep.setToolTipText("Chọn để sắp xếp bảng");
		cmb_SapXep
				.setModel(new DefaultComboBoxModel(new String[] { "Không sắp xếp", "Theo tên" }));
		cmb_SapXep.setFont(new Font("Tahoma", Font.PLAIN, 10));
		cmb_SapXep.setBounds(1118, 10, 113, 22);
		panel.add(cmb_SapXep);
		
		String[] colHeader = { "Mã phòng ban", "Tên phòng ban", "Phân khu" };
		tableModel_PhongBan = new TableModel_PhongBan(listPhongBan, colHeader);
		tbl_PhongBan = new JTable(tableModel_PhongBan) {
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
		tbl_PhongBan.getColumnModel().getColumn(0).setCellRenderer(rightRenderer);
		JTableHeader header = tbl_PhongBan.getTableHeader();
		header.setBackground(Color.BLUE);
		header.setForeground(Color.WHITE);
		header.setFont(new Font("Tahoma", Font.BOLD, 15));
		header.setPreferredSize(new Dimension(header.getWidth(), 30));
		tbl_PhongBan.setFont(new Font("Tahoma", Font.PLAIN, 15));
		tbl_PhongBan.setBackground(UIManager.getColor("Button.light"));
		tbl_PhongBan.setSelectionMode(ListSelectionModel.SINGLE_INTERVAL_SELECTION);
		tbl_PhongBan.setSelectionBackground(new Color(190, 210, 255));
		tbl_PhongBan.setRowHeight(35);
		
		scrollPane.setViewportView(tbl_PhongBan);
		
		tbl_PhongBan.addMouseListener((MouseListener) new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				int index = tbl_PhongBan.getSelectedRow();
				try {
					capNhatLenTruong(index);
				} catch (SQLException e1) {
					e1.printStackTrace();
				}
			}

			private void capNhatLenTruong(int index) throws SQLException {
				PhongBan pb = listPhongBan.get(index);

				txtTenPhongBan.setText(pb.getTenPB() != null ? pb.getTenPB() : "");
				txtPhanKhu.setText(pb.getPhanKhu() != null ? pb.getPhanKhu() : "");
			}
		});
		
		btnXoaRong = new JButton("Xóa Rỗng");
		btnXoaRong.setBounds(637, 279, 105, 32);
		add(btnXoaRong);
	}

	private void updateTable() {
		tableModel_PhongBan.setList(listPhongBan);
		tbl_PhongBan.updateUI();
	}
	private String layThayDoi(PhongBan pbCu, PhongBan pbMoi) {
		String thayDoi = "";
		
		if(!pbCu.getTenPB().equals(pbMoi.getTenPB()))
			thayDoi += "    *Tên phòng ban: '"+pbCu.getTenPB()+"' thành '"+pbMoi.getTenPB()+"'\n";
		if(!pbCu.getPhanKhu().equals(pbCu.getPhanKhu()))
			thayDoi += "    *Phân khu: '"+pbCu.getPhanKhu()+"' thành '"+pbMoi.getPhanKhu()+"'\n";
		
		return thayDoi;
	}

	@Override
	public void actionPerformed(ActionEvent e) {
		// TODO Auto-generated method stub
		Object o = e.getSource();
		if(o.equals(btnXoaRong)) {
			txtTenPhongBan.setText("");
			txtPhanKhu.setText("");
		}
		else 
			if(o.equals(btnXoaPK)) {
				int index = tbl_PhongBan.getSelectedRow();
				
				if(index<0) {
					JOptionPane.showMessageDialog(this, "Chưa chọn phòng ban!", "Phần Mềm Tính Lương", 2);
					return;
				}
				
				int i = JOptionPane.showConfirmDialog(
						this, "Bạn có muốn xóa phòng ban có mã \""
								+ listPhongBan.get(index).getMaPB() + "\" không?",
						"Phần Mềm Tính Lương", 2);
				if (i == 0) {
					try {
						daoPhongBan.xoaPhongBan(listPhongBan.get(index).getMaPB());
						
						listPhongBan = daoPhongBan.layDS_PhongBan();
						updateTable();
						JOptionPane.showMessageDialog(this, "Xóa thành công!", "Phần Mềm Tính Lương", 1);
					} catch (Exception e2) {
						JOptionPane.showMessageDialog(this, "Xóa thất bại!", "Phần Mềm Tính Lương", 2);
					}
				} else
					return;
				
			}
		else 
			if(o.equals(btnThemPK)) {
				PhongBan pb = null;
				pb = new PhongBan(txtTenPhongBan.getText().trim(), txtPhanKhu.getText().trim());

				
				boolean rs = daoPhongBan.themPhongBan(pb);
				if(rs) {
					JOptionPane.showMessageDialog(this, "Thêm thành công!", "Phần Mềm Tính Lương", 1);
					try {
						listPhongBan = daoPhongBan.layDS_PhongBan();
					} catch (SQLException e1) {
						e1.printStackTrace();
					}
					updateTable();
				}
				else 
					JOptionPane.showMessageDialog(this, "Thêm thất bại!", "Phần Mềm Tính Lương", 2);
					
			}
			else 
				if(o.equals(btnSuaPK)) {
					int index = tbl_PhongBan.getSelectedRow();
					if(index<0) {
						JOptionPane.showMessageDialog(this, "Chưa chọn phòng ban!", "Phần Mềm Tính Lương", 2);
						return;
					}
					
					PhongBan pb = null;
					pb = new PhongBan(
								txtTenPhongBan.getText().trim(), 
								txtPhanKhu.getText().trim()
								);
					
					PhongBan pbCu = listPhongBan.get(index);
					String thayDoi = layThayDoi(pbCu, pb);
					
					if(thayDoi.equals("")) {
						JOptionPane.showMessageDialog(this, "Không có sự thay đổi mới nào!","Phần Mềm Tính Lương", 2);
						return;
					}
					
					int i = JOptionPane.showConfirmDialog(
							this, "Sửa thông tin phòng ban có mã '"
									+ pbCu.getMaPB()+ "':\n"+thayDoi,
							"Phần Mềm Tính Lương", 2);
					if (i == 0) {
						boolean rs = daoPhongBan.suaPhongBan(pb);
						if (rs) {
							JOptionPane.showMessageDialog(this, "Sửa thành công!", "Phần Mềm Tính Lương", 1);
							try {
								listPhongBan = daoPhongBan.layDS_PhongBan();
							} catch (SQLException e1) {
								e1.printStackTrace();
							}
							updateTable();
						}
						else 
							JOptionPane.showMessageDialog(this, "Sửa thất bại!", "Phần Mềm Tính Lương", 2);
					} 
					else
						return;
				}
				else if (o.equals(cmb_SapXep)) {
					if (cmb_SapXep.getSelectedIndex() == 0) {
						Collections.sort(listPhongBan, (pb1, pb2) -> pb1.getMaPB().compareTo(pb2.getMaPB()));
						updateTable();
					} else if (cmb_SapXep.getSelectedIndex() == 1) {
						Collections.sort(listPhongBan, (pb1, pb2) -> layKQSoSanh(pb1.getTenPB(), pb2.getTenPB()));
						updateTable();
					}
				}
		
	}
	private int layKQSoSanh(String tenpb1, String tenpb2) {

		String[] arrTenPB1 = tenpb1.split(" ");
		String[] arrTenPB2 = tenpb2.split(" ");

		if (arrTenPB1[arrTenPB1.length - 1].compareTo(arrTenPB2[arrTenPB2.length - 1]) != 0)
			return arrTenPB1[arrTenPB1.length - 1].compareTo(arrTenPB2[arrTenPB2.length - 1]);

		return arrTenPB1[arrTenPB1.length - 1].compareTo(arrTenPB2[arrTenPB2.length - 1]);
	}

}
