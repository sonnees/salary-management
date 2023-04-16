package gui;

import java.awt.Color;
import java.awt.EventQueue;
import java.awt.Font;
import java.awt.Toolkit;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.SQLException;

import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JPasswordField;
import javax.swing.JTextField;
import javax.swing.UIManager;
import javax.swing.border.EmptyBorder;

import dao.Dao_TaiKhoan;
import db.ConnectDB;
import entity.TaiKhoan;

public class GD_DangNhap extends JFrame implements ActionListener {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private JPanel contentPane;
	private JTextField txt_Gmail;
	private JPasswordField txt_Password;
	private JButton btnDangNhap;
	private JButton btnThoat;
	private JButton btnHienPass;
	private boolean password = true;
	private Dao_TaiKhoan daoTaiKhoan = new Dao_TaiKhoan(ConnectDB.getInstance().getConnection());
	private JButton btnQuenMatKhau;
	private TaiKhoan tk;
	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					GD_DangNhap frame = new GD_DangNhap();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the frame.
	 */
	public GD_DangNhap() {
		setTitle("Chương trình quản lý lương sản phẩm");
		setIconImage(Toolkit.getDefaultToolkit().getImage("image\\logo.png"));
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 464, 213);
		setLocationRelativeTo(null);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));

		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JLabel lbl_Gmail = new JLabel("Nhập gmail");
		lbl_Gmail.setFont(new Font("Tahoma", Font.PLAIN, 16));
		lbl_Gmail.setBounds(10, 30, 97, 32);
		contentPane.add(lbl_Gmail);
		
		txt_Gmail = new JTextField();
		txt_Gmail.setFont(new Font("Tahoma", Font.PLAIN, 16));
		txt_Gmail.setColumns(10);
		txt_Gmail.setBackground(UIManager.getColor("Button.highlight"));
		txt_Gmail.setBounds(127, 30, 313, 32);
		contentPane.add(txt_Gmail);
		
		JLabel lbl_Password = new JLabel("Nhập password");
		lbl_Password.setFont(new Font("Tahoma", Font.PLAIN, 16));
		lbl_Password.setBounds(10, 76, 117, 32);
		contentPane.add(lbl_Password);
		
		txt_Password = new JPasswordField();
		txt_Password.setFont(new Font("Tahoma", Font.PLAIN, 16));
		txt_Password.setColumns(10);
		txt_Password.setBackground(Color.WHITE);
		txt_Password.setBounds(127, 76, 279, 32);
		contentPane.add(txt_Password);
		
		btnDangNhap = new JButton("Đăng nhập");
		btnDangNhap.setBackground(UIManager.getColor("Button.background"));
		btnDangNhap.setFont(new Font("Tahoma", Font.PLAIN, 14));
		btnDangNhap.setBounds(127, 128, 112, 25);
		contentPane.add(btnDangNhap);
		
		btnThoat = new JButton("Thoát");
		btnThoat.setFont(new Font("Tahoma", Font.PLAIN, 14));
		btnThoat.setBackground(UIManager.getColor("Button.background"));
		btnThoat.setBounds(249, 128, 100, 25);
		contentPane.add(btnThoat);
		
		btnHienPass = new JButton("");
		btnHienPass.setIcon(new ImageIcon("image\\password.png"));
		btnHienPass.setBounds(406, 76, 34, 32);
		contentPane.add(btnHienPass);
		
		btnQuenMatKhau = new JButton("Quên mật khẩu");
		btnQuenMatKhau.setEnabled(false);
		btnQuenMatKhau.setFont(new Font("Tahoma", Font.PLAIN, 9));
		btnQuenMatKhau.setBackground(new Color(240, 240, 240));
		btnQuenMatKhau.setBounds(350, 150, 100, 25);
		contentPane.add(btnQuenMatKhau);
		btnQuenMatKhau.setBorderPainted(false);
		btnQuenMatKhau.setFocusPainted(false);
		
		btnHienPass.addActionListener(this);
		btnDangNhap.addActionListener(this);
		btnThoat.addActionListener(this);
		btnQuenMatKhau.addActionListener(this);
	}

	@SuppressWarnings("deprecation")
	public void actionPerformed(ActionEvent e) {
		Object o = e.getSource();
		if (o.equals(btnHienPass)) {
			if (password) {
				txt_Password.setEchoChar((char) 0);
				password = false;
				return;
			}
			txt_Password.setEchoChar('•');
			password = true;
		}
		else if(o.equals(btnDangNhap)) {
			if(txt_Gmail.getText().strip()=="" || txt_Password.getText().strip()=="") {
				JOptionPane.showMessageDialog(this, "Vui lòng nhập đủ các thông tin", "Chương trình quản lý lương sản phẩm", 2);
				return;
			}
			
			tk = null;
			 
			try {
				tk = daoTaiKhoan.timKiemTaiKhoanBangGmail(txt_Gmail.getText().strip());
				if(tk!=null) 
					btnQuenMatKhau.setEnabled(true);
					
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			
			if(tk == null) {
				JOptionPane.showMessageDialog(this, "Gmail Không đúng", "Chương trình quản lý lương sản phẩm", 2);
				return;
			}
			
			char[] password = txt_Password.getPassword();
			String passwordString = new String(password);
			if(!tk.getMatKhau().equals(passwordString)) {
				JOptionPane.showMessageDialog(this, "Mật khẩu sai", "Chương trình quản lý lương sản phẩm", 2);
				return;
			}
			
			if(tk.getVaiTro().equals("ADMIN")) {
				this.setVisible(false);
				try {
					new GD_Chinh_demoDat2();
				} catch (SQLException e1) {
					e1.printStackTrace();
				}
			}
			else {
				
			}
			
			
		}
		else if(o.equals(btnQuenMatKhau)) {
			this.setVisible(false);
			new GD_QuenMatKhau(tk).setVisible(true);
		}
			
		else System.exit(0);
		
	}
}
