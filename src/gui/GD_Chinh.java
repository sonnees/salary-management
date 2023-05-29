package gui;

import java.awt.EventQueue;
import java.awt.FlowLayout;

import javax.swing.JFrame;
import javax.swing.JMenuBar;
import javax.swing.JMenuItem;
import javax.swing.JMenu;
import javax.swing.SwingConstants;
import java.awt.Window.Type;
import java.awt.Dialog.ModalExclusionType;
import java.awt.Dimension;
import java.awt.Color;
import javax.swing.UIManager;
import javax.swing.plaf.basic.BasicButtonUI;

import java.awt.SystemColor;
import javax.swing.JSlider;
import javax.swing.JSeparator;
import java.awt.Font;
import java.awt.LayoutManager;

import javax.swing.JScrollPane;
import javax.swing.JSplitPane;
import javax.swing.JToolBar;
import javax.swing.JInternalFrame;
import javax.swing.JDesktopPane;
import javax.swing.JTabbedPane;
import javax.swing.JPanel;
import javax.swing.JTable;
import javax.swing.JLabel;
import javax.swing.AbstractAction;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.SQLException;

import javax.swing.Action;
import javax.swing.ImageIcon;
import javax.swing.JButton;

public class GD_Chinh extends JFrame implements ActionListener {
	private JMenu mnu_CongNhan;
	private JMenu mnuNVHC;
	private JMenu mnuPhongBan;
	private JMenu mnuSanPham;
	private JMenu mnuHeThong;
	private JMenuItem mni_TimKiemCN;
	private JMenuItem mni_ChinhSuaCN;
	private JMenuItem mni_ChamCongCN;
	private JMenuItem mni_TinhLuongCN;
	private JMenuItem mni_ThongKeCN;
	private JMenuItem mni_PhanCongCN;
	private TatTab tabbedPane;
	private JMenuItem mni_TimKiemNVHC;
	private JMenuItem mni_ChinhSuaNVHC;
	private JMenuItem mni_ChamCongNVHC;
	private JMenuItem mni_TinhLuongNVHC;
	private JMenuItem mni_ThongKeNVHC;
	private JMenuItem mni_ChinhSuaPB;
	private JMenuItem mni_DoiMatKhau;
	private JMenuItem mni_DangXuat;

	private JMenuItem mni_TimKiemSP;
	private JMenuItem mni_ChinhSuaSP;
	private JMenuItem mni_ThongKeSP;

//	private static GD_Chinh frame;

	/**
	 * Create the application.
	 * 
	 * @throws SQLException
	 */
	public GD_Chinh() throws SQLException {
		initialize();
//		frame = new GD_Chinh();
//		frame.setVisible(true);
	}

	/**
	 * Initialize the contents of the frame.
	 * 
	 * @throws SQLException
	 */
	private void initialize() throws SQLException {
		setForeground(Color.BLUE);
		getContentPane().setBackground(new Color(176, 196, 222));
		setBackground(Color.BLUE);
		setSize(1280, 720);

		setDefaultCloseOperation(0);
		setTitle("Chương trình quản lý lương sản phẩm");
		setLocationByPlatform(true);
		setLocationRelativeTo(null);
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		getContentPane().setLayout(null);

		JMenuBar mnub_top = new JMenuBar();
		mnub_top.setForeground(Color.WHITE);
		mnub_top.setBackground(new Color(135, 206, 235));
		mnub_top.setBounds(0, 0, 1264, 27);
		getContentPane().add(mnub_top);

		mnu_CongNhan = new JMenu("      Công nhân   ");
		mnub_top.add(mnu_CongNhan);

		mni_TimKiemCN = new JMenuItem("Tìm kiếm      ");
		mni_TimKiemCN.setFont(new Font("Segoe UI", Font.PLAIN, 13));
		mni_TimKiemCN.setIcon(null);
		mni_TimKiemCN.setHorizontalAlignment(SwingConstants.LEFT);
		mnu_CongNhan.add(mni_TimKiemCN);

		mni_ChinhSuaCN = new JMenuItem("Chỉnh sửa  ");
		mni_ChinhSuaCN.setFont(new Font("Segoe UI", Font.PLAIN, 13));
		mnu_CongNhan.add(mni_ChinhSuaCN);

		mni_PhanCongCN = new JMenuItem("Phân công");
		mni_PhanCongCN.setFont(new Font("Segoe UI", Font.PLAIN, 13));
		mnu_CongNhan.add(mni_PhanCongCN);

		mni_ChamCongCN = new JMenuItem("Chấm công");
		mni_ChamCongCN.setFont(new Font("Segoe UI", Font.PLAIN, 13));
		mnu_CongNhan.add(mni_ChamCongCN);

		mni_TinhLuongCN = new JMenuItem("Tính lương");
		mni_TinhLuongCN.setFont(new Font("Segoe UI", Font.PLAIN, 13));
		mnu_CongNhan.add(mni_TinhLuongCN);

		mni_ThongKeCN = new JMenuItem("Thống kê");
		mni_ThongKeCN.setFont(new Font("Segoe UI", Font.PLAIN, 13));
		mnu_CongNhan.add(mni_ThongKeCN);

		JMenu mnu_NVHC = new JMenu("NV hành chánh ");
		mnub_top.add(mnu_NVHC);

		mni_TimKiemNVHC = new JMenuItem("Tìm kiếm      ");
		mni_TimKiemNVHC.setFont(new Font("Segoe UI", Font.PLAIN, 13));
		mnu_NVHC.add(mni_TimKiemNVHC);

		mni_ChinhSuaNVHC = new JMenuItem("Chỉnh sửa");
		mni_ChinhSuaNVHC.setFont(new Font("Segoe UI", Font.PLAIN, 13));
		mnu_NVHC.add(mni_ChinhSuaNVHC);

		mni_ChamCongNVHC = new JMenuItem("Chấm công");
		mni_ChamCongNVHC.setFont(new Font("Segoe UI", Font.PLAIN, 13));
		mnu_NVHC.add(mni_ChamCongNVHC);

		mni_TinhLuongNVHC = new JMenuItem("Tính lương");
		mni_TinhLuongNVHC.setFont(new Font("Segoe UI", Font.PLAIN, 13));
		mnu_NVHC.add(mni_TinhLuongNVHC);

		mni_ThongKeNVHC = new JMenuItem("Thống kê");
		mni_ThongKeNVHC.setFont(new Font("Segoe UI", Font.PLAIN, 13));
		mnu_NVHC.add(mni_ThongKeNVHC);

		JMenu mnu_PhongBan = new JMenu("    Phòng ban   ");
		mnub_top.add(mnu_PhongBan);

		mni_ChinhSuaPB = new JMenuItem("Chỉnh sửa   ");
		mni_ChinhSuaPB.setFont(new Font("Segoe UI", Font.PLAIN, 13));
		mnu_PhongBan.add(mni_ChinhSuaPB);

		JMenu mnu_SanPham = new JMenu("     Sản phẩm      ");
		mnub_top.add(mnu_SanPham);

		mni_TimKiemSP = new JMenuItem("Tìm kiếm       ");
		mni_TimKiemSP.setFont(new Font("Segoe UI", Font.PLAIN, 13));
		mnu_SanPham.add(mni_TimKiemSP);

		mni_ChinhSuaSP = new JMenuItem("Chỉnh sửa");
		mni_ChinhSuaSP.setFont(new Font("Segoe UI", Font.PLAIN, 13));
		mnu_SanPham.add(mni_ChinhSuaSP);

		mni_ThongKeSP = new JMenuItem("Thống kê");
		mni_ThongKeSP.setFont(new Font("Segoe UI", Font.PLAIN, 13));
		mnu_SanPham.add(mni_ThongKeSP);

		JMenu mnu_HeThong = new JMenu("       Hệ thống     ");
		mnub_top.add(mnu_HeThong);

		mni_DoiMatKhau = new JMenuItem("Đổi mật khẩu");
		mni_DoiMatKhau.setFont(new Font("Segoe UI", Font.PLAIN, 13));
		mnu_HeThong.add(mni_DoiMatKhau);

		mni_DangXuat = new JMenuItem("Đăng xuất");
		mni_DangXuat.setFont(new Font("Segoe UI", Font.PLAIN, 13));
		mnu_HeThong.add(mni_DangXuat);

		tabbedPane = new TatTab();
		tabbedPane.setBounds(0, 25, 1264, 656);
		getContentPane().add(tabbedPane);

		mni_TimKiemCN.addActionListener(this);
		mni_ChinhSuaCN.addActionListener(this);
		mni_ChamCongCN.addActionListener(this);
		mni_PhanCongCN.addActionListener(this);
		mni_TinhLuongCN.addActionListener(this);
		mni_ThongKeCN.addActionListener(this);

		mni_TimKiemNVHC.addActionListener(this);
		mni_ChinhSuaNVHC.addActionListener(this);
		mni_ChamCongNVHC.addActionListener(this);
		mni_TinhLuongNVHC.addActionListener(this);
		mni_ChinhSuaPB.addActionListener(this);
		mni_DoiMatKhau.addActionListener(this);
		mni_DangXuat.addActionListener(this);
		mni_ThongKeNVHC.addActionListener(this);

		mni_TimKiemSP.addActionListener(this);
		mni_ChinhSuaSP.addActionListener(this);

	}

	@Override
	public void actionPerformed(ActionEvent e) {
		Object o = e.getSource();
		if (o.equals(mni_TimKiemNVHC)) {
			try {
				tabbedPane.add("Tìm Kiếm Nhân Viên Hành Chánh", new Pn_TimKiemNhanVienHanhChach());
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		} else if (o.equals(mni_ChinhSuaNVHC)) {
			try {
				tabbedPane.add("Chỉnh Sửa Nhân Viên Hành Chánh", new Pn_ChinhSuaNhanVienHanhChach());
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		} else if (o.equals(mni_ChamCongNVHC)) {
			try {
				tabbedPane.add("Chấm Công Nhân Viên Hành Chánh", new Pn_ChamCongNhanVienHanhChach());
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		} else if (o.equals(mni_TinhLuongNVHC)) {
			try {
				tabbedPane.add("Tính Lương Nhân Viên Hành Chánh", new Pn_TinhLuongNVHC());
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		} else if (o.equals(mni_ThongKeNVHC)) {
			try {
				tabbedPane.add("Thống Kê Nhân Viên Hành Chánh", new Pn_ThongKeNVHC());
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		} else if (o.equals(mni_DangXuat)) {
			try {
//				frame= new GD_Chinh();
//				frame.setVisible(false);
				this.setVisible(false);
				(new GD_DangNhap()).setVisible(true);
				;
			} catch (Exception e1) {
				e1.printStackTrace();
			}
		}

		else if (o.equals(mni_TimKiemCN)) {
			try {
				tabbedPane.add("Tìm Kiếm Công Nhân", new Pn_TimKiemCongNhan());
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		} else if (o.equals(mni_ChinhSuaCN)) {
			try {
				tabbedPane.add("Chỉnh Sửa Công Nhân", new Pn_ChinhSuaCongNhan());
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		} else if (o.equals(mni_PhanCongCN)) {
			try {
				tabbedPane.add("Phân Công Công Nhân", new Pn_PhanCongCongNhan());
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		} else if (o.equals(mni_ChamCongCN)) {
			try {
				tabbedPane.add("Chấm Công Công Nhân", new Pn_ChamCongCongNhan());
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		} else if (o.equals(mni_TinhLuongCN)) {
			try {
				tabbedPane.add("Tính lương Công Nhân", new Pn_TinhLuongCongNhan());
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		} else if (o.equals(mni_ThongKeCN)) {
			try {
				tabbedPane.add("Thống kê theo Công Nhân", new Pn_ThongKeCongNhan());
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}

		else if (o.equals(mni_ChinhSuaPB)) {
			try {
				tabbedPane.add("Chỉnh Sửa Phòng Ban", new Pn_ChinhSuaPhongBan());
			} catch (Exception e1) {
				e1.printStackTrace();
			}
		} else if (o.equals(mni_ChinhSuaSP)) {
			try {
				tabbedPane.add("Chỉnh Sửa sản phẩm", new Pn_ChinhSuaSanPham());
			} catch (Exception e1) {
				e1.printStackTrace();
			}
		}
		else if (o.equals(mni_TimKiemSP)) {
			try {
				tabbedPane.add("Tìm kiếm sản phẩm", new Pn_TimKiemSanPham());
			} catch (Exception e1) {
				e1.printStackTrace();
			}
		}
		else if (o.equals(mni_ThongKeSP)) {
			try {
				tabbedPane.add("Thống kê sản phẩm", new Pn_ThongKeSanPham());
			} catch (Exception e1) {
				e1.printStackTrace();
			}
		}
	}

}
