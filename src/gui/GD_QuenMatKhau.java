package gui;

import java.util.Properties;
import java.util.Random;

import javax.mail.*;
import javax.mail.internet.*;
import java.awt.Color;
import java.awt.Dimension;
import java.awt.EventQueue;
import java.awt.Font;
import java.awt.Toolkit;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.KeyEvent;
import java.awt.event.KeyListener;
import java.sql.SQLException;

import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JTextField;
import javax.swing.UIManager;
import javax.swing.border.EmptyBorder;

import dao.Dao_TaiKhoan;
import db.ConnectDB;
import entity.TaiKhoan;
import javax.swing.border.TitledBorder;


import javax.swing.border.EtchedBorder;

public class GD_QuenMatKhau extends JFrame implements ActionListener, KeyListener {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private JPanel contentPane;
	private JButton btnXacNhanMa;
	private boolean password = true;
	private Dao_TaiKhoan daoTaiKhoan = new Dao_TaiKhoan(ConnectDB.getInstance().getConnection());
	private JTextField txt_ma;
	private JLabel lbl_TitleMaXacNhanHai;
	private JButton btnGuiLai;
	private JPanel pnl_Buoc2;
	private JButton btnXacNhanDoiMatKhau;
	private JButton btnThoat;
	private JLabel lbl_Title;
	private JLabel lbl_Password;
	private JTextField txt_Password;
	private JTextField txt_RePassword;
	private static TaiKhoan taiKhoan = new TaiKhoan("sson12131415@gmail.com", null, null, null);
	private static String ma;
	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					GD_QuenMatKhau frame = new GD_QuenMatKhau(new TaiKhoan());
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
	public GD_QuenMatKhau(TaiKhoan tk) {
//		taiKhoan = tk;
		setTitle("Chương trình quản lý lương sản phẩm");
		setIconImage(Toolkit.getDefaultToolkit().getImage("image\\logo.png"));
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 558, 489);
		setLocationRelativeTo(null);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));

		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JPanel pnl_b1 = new JPanel();
		pnl_b1.setBorder(new TitledBorder(null, "B\u01B0\u1EDBc 1 : X\u00E1c \u0111\u1ECBnh danh t\u00EDnh", TitledBorder.LEADING, TitledBorder.TOP, null, null));
		pnl_b1.setBounds(82, 54, 402, 188);
		contentPane.add(pnl_b1);
		pnl_b1.setLayout(null);
		
		JLabel lbl_TitleMaXacNhanMot = new JLabel("Mã xác nhận đã được gửi \r\n");
		lbl_TitleMaXacNhanMot.setBounds(22, 26, 305, 32);
		pnl_b1.add(lbl_TitleMaXacNhanMot);
		lbl_TitleMaXacNhanMot.setFont(new Font("Tahoma", Font.PLAIN, 16));
		
		lbl_TitleMaXacNhanHai = new JLabel("đến gmail '"+taiKhoan.getGmail().strip()+"'");
		lbl_TitleMaXacNhanHai.setBounds(22, 48, 305, 32);
		pnl_b1.add(lbl_TitleMaXacNhanHai);
		lbl_TitleMaXacNhanHai.setFont(new Font("Tahoma", Font.PLAIN, 16));
		
		JLabel lbl_Ma = new JLabel("Nhập mã");
		lbl_Ma.setBounds(22, 90, 117, 32);
		pnl_b1.add(lbl_Ma);
		lbl_Ma.setFont(new Font("Tahoma", Font.PLAIN, 16));
		
		txt_ma = new JTextField();
		txt_ma.setBounds(109, 90, 193, 43);
		pnl_b1.add(txt_ma);
		txt_ma.setFont(new Font("Tahoma", Font.PLAIN, 25));
		txt_ma.setColumns(10);
		txt_ma.setBackground(Color.WHITE);
		
		btnGuiLai = new JButton("");
		btnGuiLai.setToolTipText("Gửi lại mã xác nhận");
		btnGuiLai.setBounds(303, 90, 40, 41);
		pnl_b1.add(btnGuiLai);
		btnGuiLai.setIcon(new ImageIcon("image\\reload.png"));
		
		btnXacNhanMa = new JButton("Xác nhận");
		btnXacNhanMa.setBounds(109, 141, 112, 25);
		pnl_b1.add(btnXacNhanMa);
		btnXacNhanMa.setBackground(UIManager.getColor("Button.background"));
		btnXacNhanMa.setFont(new Font("Tahoma", Font.PLAIN, 14));
		
		pnl_Buoc2 = new JPanel();
		pnl_Buoc2.setLayout(null);
		pnl_Buoc2.setBorder(new TitledBorder(new EtchedBorder(EtchedBorder.LOWERED, new Color(255, 255, 255), new Color(160, 160, 160)), "B\u01B0\u1EDBc 2 : \u0110\u1ED5i m\u1EADt kh\u1EA9u", TitledBorder.LEADING, TitledBorder.TOP, null, new Color(0, 0, 0)));
		pnl_Buoc2.setBounds(10, 252, 524, 158);
		contentPane.add(pnl_Buoc2);
		
		btnXacNhanDoiMatKhau = new JButton("Xác nhận");
		btnXacNhanDoiMatKhau.setToolTipText("<html>MỨC ĐỘ AN TOÀN CỦA MẬT KHẨU<br><br> \"màu đỏ\": Mật khẩu của bạn đang ở mức yếu, bao gồm chữ<br> \"màu vàng\": Mật khẩu của bạn đang ở mức khá, bao gồm chữ và số<br> \"màu xanh\": Mật khẩu của bạn đang ở mức mạnh, bao gồm chữ, số và ký tự đặc biệt</html>");

		btnXacNhanDoiMatKhau.setEnabled(false);
		btnXacNhanDoiMatKhau.setFont(new Font("Tahoma", Font.PLAIN, 14));
		btnXacNhanDoiMatKhau.setBackground(UIManager.getColor("Button.background"));
		btnXacNhanDoiMatKhau.setBounds(181, 111, 112, 25);
		pnl_Buoc2.add(btnXacNhanDoiMatKhau);
		
		lbl_Password = new JLabel("Mật khẩu mới");
		lbl_Password.setFont(new Font("Tahoma", Font.PLAIN, 16));
		lbl_Password.setBounds(10, 27, 117, 32);
		pnl_Buoc2.add(lbl_Password);
		
		txt_Password = new JTextField();
		txt_Password.setEditable(false);
		txt_Password.setFont(new Font("Tahoma", Font.PLAIN, 14));
		txt_Password.setColumns(10);
		txt_Password.setBackground(Color.WHITE);
		txt_Password.setBounds(181, 28, 239, 32);
		pnl_Buoc2.add(txt_Password);
		
		JLabel lbl_RePassword = new JLabel("Nhập lại mật khẩu mới");
		lbl_RePassword.setFont(new Font("Tahoma", Font.PLAIN, 16));
		lbl_RePassword.setBounds(10, 69, 173, 32);
		pnl_Buoc2.add(lbl_RePassword);
		
		txt_RePassword = new JTextField();
		txt_RePassword.setEditable(false);
		txt_RePassword.setFont(new Font("Tahoma", Font.PLAIN, 14));
		txt_RePassword.setColumns(10);
		txt_RePassword.setBackground(Color.WHITE);
		txt_RePassword.setBounds(181, 70, 239, 32);
		pnl_Buoc2.add(txt_RePassword);
		
		btnThoat = new JButton("Thoát");
		btnThoat.setBounds(434, 420, 100, 25);
		contentPane.add(btnThoat);
		btnThoat.setFont(new Font("Tahoma", Font.PLAIN, 14));
		btnThoat.setBackground(UIManager.getColor("Button.background"));
		
		lbl_Title = new JLabel("Quên Mật Khẩu");
		lbl_Title.setFont(new Font("Tahoma", Font.BOLD, 20));
		lbl_Title.setBounds(187, 10, 183, 32);
		contentPane.add(lbl_Title);
		
		guiMa();
		
		btnXacNhanMa.addActionListener(this);
		btnThoat.addActionListener(this);
		btnXacNhanDoiMatKhau.addActionListener(this);
		btnGuiLai.addActionListener(this);
		txt_Password.addKeyListener(this);
	}

	public void actionPerformed(ActionEvent e) {
		Object o = e.getSource();
		if (o.equals(btnGuiLai)) {
			guiMa();
			JOptionPane.showMessageDialog(this, "Email đã được gửi lại thành công!","Phần Mềm Tính Lương", 2);
		}
		else if(o.equals(btnXacNhanMa)) {
			if(!txt_ma.getText().equals(ma)) {
				JOptionPane.showMessageDialog(this, "Mã xác nhận không đúng!","Phần Mềm Tính Lương", 2);
				return;
			} 
			
			JOptionPane.showMessageDialog(this, "Xác thực thành công, Mời bạn làm bước 2","Phần Mềm Tính Lương", 2);
			
			txt_ma.setEditable(false);
			btnXacNhanMa.setEnabled(false);
			btnGuiLai.setEnabled(false);
			
			txt_Password.setEditable(true);
		}
		else if(o.equals(btnXacNhanDoiMatKhau)) {
			if(!txt_Password.getText().equals(txt_RePassword.getText())) {
				JOptionPane.showMessageDialog(this, "2 mật khẩu không khớp!", "Phần Mềm Tính Lương", 2);
				return;
			}
			int i = JOptionPane.showConfirmDialog(
					this, "Xác nhận lưu mật khẩu mới",
					"Phần Mềm Tính Lương", 2);
			if (i == 0) {
				taiKhoan.setMatKhau(txt_Password.getText());
				boolean rs = false;
				try {
					rs = daoTaiKhoan.chinhSuaTaiKhoan(taiKhoan);
				} catch (SQLException e2) {
					e2.printStackTrace();
				}
				if(rs) {
					JOptionPane.showMessageDialog(this, "Đổi mật khẩu thành công!", "Phần Mềm Tính Lương", 1);
					this.setVisible(false);
					new GD_DangNhap().setVisible(true);
					try {
					} catch (Exception e1) {
						e1.printStackTrace();
					}
				}
				else 
					JOptionPane.showMessageDialog(this, "Đổi mật khẩu thất bại!", "Phần Mềm Tính Lương", 2);
			} else
				return;
		}
		else if(o.equals(btnThoat)) {
			this.setVisible(false);
			new GD_DangNhap().setVisible(true);
		}
		
	}
	
	/**
	 * hàm lấy mã ngẫu nhiên 6 chữ số gồm: chữ hoa, chữ thường và số
	 * @return ma 6 số
	 */
	public static String layMaNgauNhien() {
        int length = 6;
        String uppercaseChars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
        String lowercaseChars = "abcdefghijklmnopqrstuvwxyz";
        String numbers = "0123456789";
        String validChars = uppercaseChars + lowercaseChars + numbers;
        Random random = new Random();
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < length; i++) {
            int randomIndex = random.nextInt(validChars.length());
            sb.append(validChars.charAt(randomIndex));
        }
        return sb.toString();
    }
	
	/**
	 * hàm gửi mail
	 */
	public static void guiMa() {	
		String host = "smtp.gmail.com";
	      String port = "587";
	      String username = "neesson620@gmail.com";
	      String password = "fqcoxhtsxnrvuxsu";

	      Properties props = new Properties();
	      props.put("mail.smtp.auth", "true");
	      props.put("mail.smtp.starttls.enable", "true");
	      props.put("mail.smtp.host", host);
	      props.put("mail.smtp.port", port);

	      Session session = Session.getInstance(props,
	         new javax.mail.Authenticator() {
	            protected PasswordAuthentication getPasswordAuthentication() {
	               return new PasswordAuthentication(username, password);
	            }
	         });

	      try {
	         Message message = new MimeMessage(session);
	         message.setFrom(new InternetAddress(username));
	         message.setRecipients(Message.RecipientType.TO,
	            InternetAddress.parse(taiKhoan.getGmail().strip()));
	         
	         message.setSubject("Xác nhận tài khoản Gmail");
	         
	         ma = layMaNgauNhien();
	         
	         String noiDung = "Kính gửi anh/chị,\n\n"
                   + "Đây là email được gửi tự động để đảm bảo bạn là người đang cố đăng nhập vào tài khoản của mình.\n"
                   + "\nMã 6 ký tự của bạn là: '"+ma+"'\n\n"
                   + "Xin đừng trả lời gmail này.\n"
                   + "Phần Mềm Tính Lương";
	         message.setText(noiDung);

	         Transport.send(message);

	         System.out.println("Email đã được gửi thành công!");
	      } catch (Exception e) {
	         throw new RuntimeException(e);
	      }
	}

	@Override
	public void keyTyped(KeyEvent e) {
		char c = e.getKeyChar();
		if (KeyEvent.VK_SPACE == c) 
	            e.consume(); 

		if(txt_Password.getText().length()<=6) {
			btnXacNhanDoiMatKhau.setEnabled(false);
			txt_RePassword.setEditable(false);
			txt_RePassword.setText("");
			btnXacNhanDoiMatKhau.setBackground(UIManager.getColor("Button.background"));
		} else {
			String regexLevel1 = "^(?=.*[a-zA-Z])[a-zA-Z]{4,}$";
			String regexLevel2 = "^(?=.*[a-zA-Z])(?=.*\\d)[a-zA-Z\\d]{4,}$";
			String regexLevel3 = "^(?=.*[a-zA-Z])(?=.*\\d)(?=.*[!@#$%^&*?])[a-zA-Z\\d!@#$%^&*]{4,}$";
			if(txt_Password.getText().matches(regexLevel3)) {
				txt_RePassword.setEditable(true);
				btnXacNhanDoiMatKhau.setEnabled(true);
				btnXacNhanDoiMatKhau.setBackground(new Color(0, 255, 0));
				return;
			}
			if(txt_Password.getText().matches(regexLevel2)) {
				txt_RePassword.setEditable(true);
				btnXacNhanDoiMatKhau.setEnabled(true);
				btnXacNhanDoiMatKhau.setBackground(new Color(255, 255, 0));
				return;
			}
			if(txt_Password.getText().matches(regexLevel1)) {
				txt_RePassword.setEditable(true);
				btnXacNhanDoiMatKhau.setEnabled(true);
				btnXacNhanDoiMatKhau.setBackground(new Color(255, 0, 0));
			}
		}
		
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
