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
import model.TableModel_DShanCongCongNhan;

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

public class Pn_ChinhSuaCongNhan extends JPanel implements ActionListener, PropertyChangeListener, KeyListener {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private JTextField txt_Ten;
	private JTextField txt_SoDienThoai;
	private JTextField txt_NgaySinh;
	private JTextField txt_DiaChi;
	private JTable tbl_CongNhan;
	private JButton btn_XoaTrang;
	private JButton btn_Sua;
	private JButton btn_Them;
	private JButton btn_Xoa;
	private JComboBox cmb_PhongBan;
	private JComboBox cmb_GioiTinh;
	private JComboBox cmb_SapXep;
	private JDateChooser dch_NgaySinh;
	private Dao_CongNhan daoCongNhan = new Dao_CongNhan(ConnectDB.getInstance().getConnection());
	private List<CongNhan> listCongNhan = daoCongNhan.layDS_CongNhan();
	private TableModel_CongNhan tableModel_CongNhan;
	

	/**
	 * Create the panel.
	 * 
	 * @throws SQLException
	 */
	public Pn_ChinhSuaCongNhan() throws SQLException {
		setLayout(null);

		JLabel lbl_TieuDe = new JLabel("CHỈNH SỬA CÔNG NHÂN");
		lbl_TieuDe.setBounds(10, 10, 1241, 25);
		lbl_TieuDe.setHorizontalAlignment(SwingConstants.CENTER);
		lbl_TieuDe.setFont(new Font("Tahoma", Font.BOLD, 20));
		add(lbl_TieuDe);

		JLabel lbl_Ten = new JLabel("Họ và tên");
		lbl_Ten.setHorizontalAlignment(SwingConstants.LEFT);
		lbl_Ten.setFont(new Font("Tahoma", Font.PLAIN, 14));
		lbl_Ten.setBounds(126, 61, 105, 32);
		add(lbl_Ten);

		txt_Ten = new JTextField();
		txt_Ten.setFont(new Font("Tahoma", Font.PLAIN, 14));
		txt_Ten.setColumns(10);
		txt_Ten.setBounds(253, 62, 365, 32);
		add(txt_Ten);

		JLabel lbl_GioiTinh = new JLabel("Giới tính");
		lbl_GioiTinh.setHorizontalAlignment(SwingConstants.LEFT);
		lbl_GioiTinh.setFont(new Font("Tahoma", Font.PLAIN, 14));
		lbl_GioiTinh.setBounds(126, 96, 105, 32);
		add(lbl_GioiTinh);

		btn_XoaTrang = new JButton("Xóa trắng");
		btn_XoaTrang.setToolTipText("Làm rỗng các thông tin trên");
		btn_XoaTrang.setFont(new Font("Tahoma", Font.PLAIN, 14));
		btn_XoaTrang.setBounds(790, 241, 105, 32);
		add(btn_XoaTrang);

		btn_Sua = new JButton("Sửa");

		btn_Sua.setToolTipText("Tìm kiếm công nhân từ các thông tin đã nhập");
		btn_Sua.setFont(new Font("Tahoma", Font.PLAIN, 14));
		btn_Sua.setBounds(1135, 241, 105, 32);
		add(btn_Sua);

		JLabel lbl_SoDienThoai = new JLabel("Số điện thoại");
		lbl_SoDienThoai.setHorizontalAlignment(SwingConstants.LEFT);
		lbl_SoDienThoai.setFont(new Font("Tahoma", Font.PLAIN, 14));
		lbl_SoDienThoai.setBounds(708, 61, 105, 32);
		add(lbl_SoDienThoai);

		txt_SoDienThoai = new JTextField();
		txt_SoDienThoai.setFont(new Font("Tahoma", Font.PLAIN, 14));
		txt_SoDienThoai.setColumns(10);
		txt_SoDienThoai.setBounds(835, 62, 365, 32);
		add(txt_SoDienThoai);

		cmb_PhongBan = new JComboBox();
		cmb_PhongBan.setModel(new DefaultComboBoxModel(layDS_PhongBanChoCongNhan().toArray()));
		cmb_PhongBan.setBackground(Color.WHITE);
		cmb_PhongBan.setFont(new Font("Tahoma", Font.PLAIN, 14));
		cmb_PhongBan.setBounds(835, 131, 365, 32);
		add(cmb_PhongBan);

		cmb_GioiTinh = new JComboBox();
		cmb_GioiTinh.setBackground(Color.WHITE);
		cmb_GioiTinh.setFont(new Font("Tahoma", Font.PLAIN, 14));
		cmb_GioiTinh.setModel(new DefaultComboBoxModel(new String[] { "Nam", "Nữ" }));
		cmb_GioiTinh.setBounds(253, 96, 94, 32);
		add(cmb_GioiTinh);

		JPanel pn_Bang = new JPanel();
		pn_Bang.setBorder(new TitledBorder(
				new EtchedBorder(EtchedBorder.LOWERED, new Color(255, 255, 255), new Color(160, 160, 160)),
				"Danh sách công nhân", TitledBorder.LEADING, TitledBorder.TOP, null, new Color(0, 0, 0)));
		pn_Bang.setBounds(10, 274, 1241, 346);
		add(pn_Bang);
		pn_Bang.setLayout(null);

		JScrollPane scrollPane = new JScrollPane();
		scrollPane.setBounds(10, 34, 1221, 302);
		pn_Bang.add(scrollPane);

		cmb_SapXep = new JComboBox();
		cmb_SapXep.setToolTipText("Chọn để sắp xếp bảng");
		cmb_SapXep
				.setModel(new DefaultComboBoxModel(new String[] { "Không sắp xếp", "Theo tên", "Theo ngay tham gia" }));
		cmb_SapXep.setFont(new Font("Tahoma", Font.PLAIN, 10));
		cmb_SapXep.setBounds(1118, 10, 113, 22);
		pn_Bang.add(cmb_SapXep);

		JLabel lbl_PhongBan = new JLabel("Phòng ban");
		lbl_PhongBan.setHorizontalAlignment(SwingConstants.LEFT);
		lbl_PhongBan.setFont(new Font("Tahoma", Font.PLAIN, 14));
		lbl_PhongBan.setBounds(708, 131, 71, 32);
		add(lbl_PhongBan);

		btn_Xoa = new JButton("Xóa");
		btn_Xoa.setToolTipText("Làm rỗng các thông tin trên");
		btn_Xoa.setFont(new Font("Tahoma", Font.PLAIN, 14));
		btn_Xoa.setBounds(1020, 241, 105, 32);
		add(btn_Xoa);

		JLabel lbl_DiaChi = new JLabel("Địa chỉ");
		lbl_DiaChi.setHorizontalAlignment(SwingConstants.LEFT);
		lbl_DiaChi.setFont(new Font("Tahoma", Font.PLAIN, 14));
		lbl_DiaChi.setBounds(708, 96, 105, 32);
		add(lbl_DiaChi);

		txt_DiaChi = new JTextField();
		txt_DiaChi.setFont(new Font("Tahoma", Font.PLAIN, 14));
		txt_DiaChi.setColumns(10);
		txt_DiaChi.setBounds(835, 97, 365, 32);
		add(txt_DiaChi);

		JLabel lbl_NgaySinh = new JLabel("Ngày sinh");
		lbl_NgaySinh.setHorizontalAlignment(SwingConstants.LEFT);
		lbl_NgaySinh.setFont(new Font("Tahoma", Font.PLAIN, 14));
		lbl_NgaySinh.setBounds(126, 131, 105, 32);
		add(lbl_NgaySinh);

		txt_NgaySinh = new JTextField();
		txt_NgaySinh.setFont(new Font("Tahoma", Font.PLAIN, 14));
		txt_NgaySinh.setColumns(10);
		txt_NgaySinh.setBounds(253, 131, 183, 32);
		add(txt_NgaySinh);

		dch_NgaySinh = new JDateChooser();
		dch_NgaySinh.setBounds(437, 131, 22, 32);
		add(dch_NgaySinh);

		btn_Them = new JButton("Thêm");
		btn_Them.setToolTipText("Làm rỗng các thông tin trên");
		btn_Them.setFont(new Font("Tahoma", Font.PLAIN, 14));
		btn_Them.setBounds(905, 241, 105, 32);
		add(btn_Them);

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

		tbl_CongNhan.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				int index = tbl_CongNhan.getSelectedRow();
				try {
					capNhatLenTruong(index);
				} catch (SQLException e1) {
					e1.printStackTrace();
				}
			}

			private void capNhatLenTruong(int index) throws SQLException {
				CongNhan cn = listCongNhan.get(index);

				txt_Ten.setText(cn.getTenCN() != null ? cn.getTenCN() : "");
				cmb_GioiTinh.setSelectedIndex(cn.isGioiTinh() == true ? 1 : 0);
				dch_NgaySinh.setDate(cn.getNgaySinh() != null ? java.sql.Date.valueOf(cn.getNgaySinh()) : null);
				txt_DiaChi.setText(cn.getDiaChi() != null ? cn.getDiaChi() : "");
				txt_SoDienThoai.setText(cn.getSoDienThoai() != null ? cn.getSoDienThoai() : "");

				List<String> a = layDS_PhongBanChoCongNhan();
				int n = 0;
				for (String sp : a) {
					if (sp.equalsIgnoreCase(cn.getPhongBan().getTenPB())) {
						cmb_PhongBan.setSelectedIndex(n);
						break;
					}
					n++;
				}
			}
		});

		btn_Sua.addActionListener(this);
		btn_Xoa.addActionListener(this);
		btn_Them.addActionListener(this);
		btn_XoaTrang.addActionListener(this);

		dch_NgaySinh.addPropertyChangeListener(this);
		cmb_SapXep.addActionListener(this);
		txt_SoDienThoai.addKeyListener(this);
	}

	@SuppressWarnings("deprecation")
	@Override
	public void actionPerformed(ActionEvent e) {
		Object o = e.getSource();
		if (o.equals(btn_XoaTrang)) {
			txt_Ten.setText("");
			cmb_GioiTinh.setSelectedIndex(0);
			txt_SoDienThoai.setText("");
			dch_NgaySinh.setDate(null);
			txt_DiaChi.setText("");
			cmb_PhongBan.setSelectedIndex(0);

		} else if (o.equals(btn_Xoa)) {
			int index = tbl_CongNhan.getSelectedRow();
			if (index < 0) {
				JOptionPane.showMessageDialog(this, "Chưa chọn công nhân!", "Phần Mềm Tính Lương", 2);
				return;
			}
			int i = JOptionPane.showConfirmDialog(this,
					"Bạn có muốn xóa công nhân có mã \"" + listCongNhan.get(index).getMaCN() + "\" không?",
					"Phần Mềm Tính Lương", 2);
			if (i == 0) {
				try {
					daoCongNhan.xoaCongNhan(listCongNhan.get(index).getMaCN());

					listCongNhan = daoCongNhan.layDS_CongNhan();
					capNhatBang();
					JOptionPane.showMessageDialog(this, "Xóa thành công!", "Phần Mềm Tính Lương", 2);
				} catch (Exception e2) {
					JOptionPane.showMessageDialog(this, "Xóa thất bại!", "Phần Mềm Tính Lương", 2);
				}
			} else
				return;
		} else if (o.equals(btn_Sua)) {
			int index = tbl_CongNhan.getSelectedRow();
			if (index < 0) {
				JOptionPane.showMessageDialog(this, "Chưa chọn công nhân!", "Phần Mềm Tính Lương", 2);
				return;
			}
			CongNhan cn = new CongNhan();
			CongNhan cnCu = listCongNhan.get(index);
			try {
				cn = new CongNhan(cnCu.getMaCN(), txt_Ten.getText().strip(), layIsGioiTinh(),
						dch_NgaySinh.getDate() != null
								? LocalDate.parse(new SimpleDateFormat("yyyy-MM-dd").format(dch_NgaySinh.getDate()))
								: null,
						txt_DiaChi.getText().strip(), txt_SoDienThoai.getText().strip(), layPhongBan());
				LocalDate ngayHienTai = java.time.LocalDate.now();
				int namSinh = Period.between(cn.getNgaySinh(), ngayHienTai).getYears();
				if (namSinh < 18) {
					JOptionPane.showMessageDialog(this,
							"Công nhân vừa nhập chỉ " + namSinh + " tuổi, không đủ tuổi để lao động!",
							"Phần Mềm Tính Lương", 2);
					return;
				}
			} catch (NumberFormatException e2) {
				e2.printStackTrace();
			} catch (SQLException e2) {
				e2.printStackTrace();
			}
			String thayDoi = layThayDoi(cnCu, cn);
			if (thayDoi.equals("")) {
				JOptionPane.showMessageDialog(this, "Không có sự thay đổi mới nào!", "Phần Mềm Tính Lương", 2);
				return;
			}
			int i = JOptionPane.showConfirmDialog(this,
					"Sửa thông tin công nhân có mã '" + cnCu.getMaCN() + "':\n" + thayDoi, "Phần Mềm Tính Lương", 2);
			if (i == 0) {
				boolean rs = daoCongNhan.suaCongNhan(cn);
				if (rs) {
					JOptionPane.showMessageDialog(this, "Sửa thành công!", "Phần Mềm Tính Lương", 1);
					try {
						listCongNhan = daoCongNhan.layDS_CongNhan();
					} catch (SQLException e1) {
						e1.printStackTrace();
					}
					capNhatBang();
				} else
					JOptionPane.showMessageDialog(this, "Sửa thất bại!", "Phần Mềm Tính Lương", 1);
			}
		} else if (o.equals(btn_Them)) {
			CongNhan cn = null;
			try {
				cn = new CongNhan(txt_Ten.getText().strip(), layIsGioiTinh(),
						dch_NgaySinh.getDate() != null
								? LocalDate.parse(new SimpleDateFormat("yyyy-MM-dd").format(dch_NgaySinh.getDate()))
								: null,
						txt_DiaChi.getText().strip(), txt_SoDienThoai.getText().strip(), layPhongBan());
				LocalDate ngayHienTai = java.time.LocalDate.now();
				int namSinh = Period.between(cn.getNgaySinh(), ngayHienTai).getYears();
				if (namSinh < 18) {
					JOptionPane.showMessageDialog(this,
							"Công nhân vừa nhập chỉ " + namSinh + " tuổi, không đủ tuổi để lao động!",
							"Phần Mềm Tính Lương", 2);
					return;
				}
			} catch (NumberFormatException e2) {
				e2.printStackTrace();
			} catch (SQLException e2) {
				e2.printStackTrace();
			}

			boolean rs = daoCongNhan.themCongNhan(cn);
			if (rs) {
				JOptionPane.showMessageDialog(this, "Thêm thành công!", "Phần Mềm Tính Lương", 1);
				try {
					listCongNhan = daoCongNhan.layDS_CongNhan();
				} catch (SQLException e1) {
					e1.printStackTrace();
				}
				capNhatBang();
			} else
				JOptionPane.showMessageDialog(this, "Thêm thất bại!", "Phần Mềm Tính Lương", 2);

		}

		else if (o.equals(cmb_SapXep)) {
			if (cmb_SapXep.getSelectedIndex() == 0) {
				Collections.sort(listCongNhan, (nv1, nv2) -> nv1.getMaCN().compareTo(nv2.getMaCN()));
				capNhatBang();
			} else if (cmb_SapXep.getSelectedIndex() == 1) {
				Collections.sort(listCongNhan, (nv1, nv2) -> layKQSoSanh(nv1.getTenCN(), nv2.getTenCN()));
				capNhatBang();
			} else if (cmb_SapXep.getSelectedIndex() == 2) {
				Collections.sort(listCongNhan, (nv1, nv2) -> nv1.getNgaySinh().compareTo(nv2.getNgaySinh()));
				capNhatBang();
			}
		}

	}

	private String layThayDoi(CongNhan cnCu, CongNhan cnMoi) {
		String thayDoi = "";
		if (!cnCu.getTenCN().equals(cnMoi.getTenCN()))
			thayDoi += "    *Tên nhân viên: '" + cnCu.getTenCN() + "' thành '" + cnMoi.getTenCN() + "'\n";
		if (cnCu.isGioiTinh() != cnMoi.isGioiTinh())
			thayDoi += "    *Giới tính: '" + (cnCu.isGioiTinh() == false ? "Nam" : "Nữ") + "' thành '"
					+ (cnMoi.isGioiTinh() == false ? "Nam" : "Nữ") + "'\n";
		if (cnCu.getNgaySinh().compareTo(cnMoi.getNgaySinh()) != 0)
			thayDoi += "    *Ngày sinh: '" + new SimpleDateFormat("dd/MM/yyyy").format(Date.valueOf(cnCu.getNgaySinh()))
					+ "' thành '" + new SimpleDateFormat("dd/MM/yyyy").format(Date.valueOf(cnMoi.getNgaySinh()))
					+ "'\n";
		if (!cnCu.getDiaChi().equals(cnMoi.getDiaChi()))
			thayDoi += "    *Địa chỉ: '" + cnCu.getDiaChi() + "' thành '" + cnMoi.getDiaChi() + "'\n";
		if (!cnCu.getSoDienThoai().equals(cnMoi.getSoDienThoai()))
			thayDoi += "    *Số điện thoại: '" + cnCu.getSoDienThoai() + "' thành '" + cnMoi.getSoDienThoai() + "'\n";
		if (!cnCu.getPhongBan().getMaPB().equals(cnMoi.getPhongBan().getMaPB()))
			thayDoi += "    *Phòng ban: '" + cnCu.getPhongBan().getTenPB() + "' thành '"
					+ cnMoi.getPhongBan().getTenPB() + "'\n";
		return thayDoi;
	}

	private PhongBan layPhongBan() throws SQLException {
		Dao_PhongBan phongBan = new Dao_PhongBan(ConnectDB.getInstance().getConnection());

		String tenPB = (String) layDS_PhongBanChoCongNhan().toArray()[cmb_PhongBan.getSelectedIndex()];

		return phongBan.timKiemPhongBanBangTen(tenPB);
	}

	private boolean layIsGioiTinh() {
		if (cmb_GioiTinh.getSelectedIndex() == 0)
			return false;
		else
			return true;
	}

	private String layGioiTinh() {
		if (cmb_GioiTinh.getSelectedIndex() != 0)
			if (cmb_GioiTinh.getSelectedIndex() == 1)
				return "Nam";
			else
				return "Nữ";
		return "";
	}

	private int layKQSoSanh(String tenNVHC1, String tenNVHC2) {

		String[] arrTenNVHC1 = tenNVHC1.split(" ");
		String[] arrTenNVHC2 = tenNVHC2.split(" ");

		if (arrTenNVHC1[arrTenNVHC1.length - 1].compareTo(arrTenNVHC2[arrTenNVHC2.length - 1]) != 0)
			return arrTenNVHC1[arrTenNVHC1.length - 1].compareTo(arrTenNVHC2[arrTenNVHC2.length - 1]);

		return arrTenNVHC1[arrTenNVHC1.length - 1].compareTo(arrTenNVHC2[arrTenNVHC2.length - 1]);
	}

	private void capNhatBang() {
		tableModel_CongNhan.setList(listCongNhan);
		tbl_CongNhan.updateUI();
	}

	private List<String> layDS_PhongBanChoCongNhan() throws SQLException {
		Dao_PhongBan dao_PhongBan = new Dao_PhongBan(ConnectDB.getInstance().getConnection());
		List<String> list = new ArrayList<String>();
		dao_PhongBan.layDS_PhongBanChoCongNhan().forEach(i -> list.add(i.getTenPB()));

		return list;
	}

	@Override
	public void propertyChange(PropertyChangeEvent evt) {
		Object o = evt.getSource();
		if (o.equals(dch_NgaySinh) && dch_NgaySinh.getDate() != null)
			txt_NgaySinh.setText(new SimpleDateFormat("dd/MM/yyyy").format(dch_NgaySinh.getDate()));
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
}
