package gui;

import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JMenuBar;
import javax.swing.JMenuItem;
import javax.swing.JMenu;
import javax.swing.SwingConstants;
import java.awt.Window.Type;
import java.awt.Dialog.ModalExclusionType;
import java.awt.Color;
import javax.swing.UIManager;
import java.awt.SystemColor;
import javax.swing.JSlider;
import javax.swing.JSeparator;
import java.awt.Font;
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

public class GD_Chinh_demoDat implements ActionListener {

	private JFrame frame;
	private JMenu mnu_CongNhan;
	private JMenu mnuNVHC;
	private JMenu mnuPhongBan;
	private JMenu mnuSanPham;
	private JMenu mnuHeThong;
	private JPanel pn_TimKiemCN;
	private JPanel pn_ChinhSuaCN;
	private JMenuItem mni_TimKiemCN;
	private JMenuItem mni_ChinhSuaCN;
	private JMenuItem mni_ChamCongCN;
	private JMenuItem mni_TinhLuongCN;
	private JMenuItem mni_ThongKeCN;
	private JMenuItem mni_PhanCongCN;
	private JTabbedPane tabbedPane;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					GD_Chinh_demoDat window = new GD_Chinh_demoDat();
					window.frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the application.
	 * 
	 * @throws SQLException
	 */
	public GD_Chinh_demoDat() throws SQLException {
		initialize();
	}

	/**
	 * Initialize the contents of the frame.
	 * 
	 * @throws SQLException
	 */
	private void initialize() throws SQLException {
		frame = new JFrame();
		frame.setForeground(Color.BLUE);
		frame.getContentPane().setBackground(new Color(176, 196, 222));
		frame.setBackground(Color.BLUE);
		frame.setSize(1280, 720);
		frame.setDefaultCloseOperation(0);
		frame.setTitle("Chương trình quản lý lương sản phẩm");
		frame.setLocationByPlatform(true);
		frame.setLocationRelativeTo(null);
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame.getContentPane().setLayout(null);

		JMenuBar mnub_top = new JMenuBar();
		mnub_top.setForeground(Color.WHITE);
		mnub_top.setBackground(new Color(135, 206, 235));
		mnub_top.setBounds(0, 0, 1264, 27);
		frame.getContentPane().add(mnub_top);

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

		JMenuItem mni_TimKiemNVHC = new JMenuItem("Tìm kiếm      ");
		mni_TimKiemNVHC.setFont(new Font("Segoe UI", Font.PLAIN, 13));
		mnu_NVHC.add(mni_TimKiemNVHC);

		JMenuItem mni_ChinhSuaNVHC = new JMenuItem("Chỉnh sửa");
		mni_ChinhSuaNVHC.setFont(new Font("Segoe UI", Font.PLAIN, 13));
		mnu_NVHC.add(mni_ChinhSuaNVHC);

		JMenuItem mni_ChamCongNVHC = new JMenuItem("Chấm công");
		mni_ChamCongNVHC.setFont(new Font("Segoe UI", Font.PLAIN, 13));
		mnu_NVHC.add(mni_ChamCongNVHC);

		JMenuItem mni_TinhLuongNVHC = new JMenuItem("Tính lương");
		mni_TinhLuongNVHC.setFont(new Font("Segoe UI", Font.PLAIN, 13));
		mnu_NVHC.add(mni_TinhLuongNVHC);

		JMenuItem mni_ThongKeNVHC = new JMenuItem("Thống kê");
		mni_ThongKeNVHC.setFont(new Font("Segoe UI", Font.PLAIN, 13));
		mnu_NVHC.add(mni_ThongKeNVHC);

		JMenu mnu_PhongBan = new JMenu("    Phòng ban   ");
		mnub_top.add(mnu_PhongBan);

		JMenuItem mni_ChinhSuaPB = new JMenuItem("Chỉnh sửa   ");
		mni_ChinhSuaPB.setFont(new Font("Segoe UI", Font.PLAIN, 13));
		mnu_PhongBan.add(mni_ChinhSuaPB);

		JMenu mnu_SanPham = new JMenu("     Sản phẩm      ");
		mnub_top.add(mnu_SanPham);

		JMenuItem mni_TimKiemSP = new JMenuItem("Tìm kiếm       ");
		mni_TimKiemSP.setFont(new Font("Segoe UI", Font.PLAIN, 13));
		mnu_SanPham.add(mni_TimKiemSP);

		JMenuItem mni_ChinhSuaSP = new JMenuItem("Chỉnh sửa");
		mni_ChinhSuaSP.setFont(new Font("Segoe UI", Font.PLAIN, 13));
		mnu_SanPham.add(mni_ChinhSuaSP);

		JMenuItem mni_ThongKeSP = new JMenuItem("Thống kê");
		mni_ThongKeSP.setFont(new Font("Segoe UI", Font.PLAIN, 13));
		mnu_SanPham.add(mni_ThongKeSP);

		JMenu mnu_HeThong = new JMenu("       Hệ thống     ");
		mnub_top.add(mnu_HeThong);

		JMenuItem mni_DoiMatKhau = new JMenuItem("Đổi mật khẩu");
		mni_DoiMatKhau.setFont(new Font("Segoe UI", Font.PLAIN, 13));
		mnu_HeThong.add(mni_DoiMatKhau);

		tabbedPane = new JTabbedPane(JTabbedPane.TOP);
		tabbedPane.setBounds(0, 25, 1264, 656);
		frame.getContentPane().add(tabbedPane);

		JPanel panel_1 = new JPanel();
		panel_1.setBounds(0, 50, 1264, 631);
		frame.getContentPane().add(panel_1);

		mni_TimKiemCN.addActionListener(this);
		mni_ChinhSuaCN.addActionListener(this);
		mni_ChamCongCN.addActionListener(this);
		mni_PhanCongCN.addActionListener(this);
	}

	@Override
	public void actionPerformed(ActionEvent e) {
		Object o = e.getSource();
		if (o.equals(mni_TimKiemCN)) {
			try {
				tabbedPane.add("Tìm Kiếm Công nhân", pn_TimKiemCN = new Pn_TimKiemCongNhan());
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}
		if (o.equals(mni_ChinhSuaCN)) {
			try {
				tabbedPane.add("Chỉnh sửa Công nhân", pn_TimKiemCN = new Pn_ChinhSuaCongNhan());
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}
		if (o.equals(mni_PhanCongCN)) {
			try {
				tabbedPane.add("Phân công Công nhân", pn_TimKiemCN = new Pn_PhanCongCongNhan());
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}
		if (o.equals(mni_ChamCongCN)) {
			try {
				tabbedPane.add("Chấm công Công nhân", pn_TimKiemCN = new Pn_ChamCongCongNhan());
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}
		
	}

}
