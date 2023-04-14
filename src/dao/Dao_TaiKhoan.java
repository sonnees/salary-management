package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import entity.TaiKhoan;


public class Dao_TaiKhoan {
	private Connection con;
	private Dao_NhanVienHanhChanh dao_NhanVienHanhChanh;
	public Dao_TaiKhoan(Connection con) {
		this.con = con;
		dao_NhanVienHanhChanh = new Dao_NhanVienHanhChanh(con);
	}
	
	public TaiKhoan timKiemTaiKhoanBangGmail(String gmail) throws SQLException {
		TaiKhoan tk = null;
		String sql = "select * from [dbo].[TaiKhoan] where gmail ='"+gmail+"'";
		PreparedStatement stmt = con.prepareStatement(sql);
		ResultSet rs = stmt.executeQuery();
		
		while (rs.next()) {
			tk = new TaiKhoan(
					rs.getString("gmail"),
					rs.getString("matKhau"),
					rs.getString("vaiTro"),
					dao_NhanVienHanhChanh.timKiemByMaNVHC(rs.getString("maNVHC"))
					);
		}
		return tk;
	}
	
	public boolean chinhSuaTaiKhoan(TaiKhoan tk) throws SQLException {
		String sql = "UPDATE [dbo].[TaiKhoan]\r\n"
				+ "   SET \r\n"
				+ "      [matKhau] = '"+tk.getMatKhau()+"'"
				+ " WHERE [gmail] = '"+tk.getGmail()+"'";
		PreparedStatement stmt = con.prepareStatement(sql);
		int rs = stmt.executeUpdate();
		return rs>0;
	}
	
}
