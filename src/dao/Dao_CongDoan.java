package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import entity.CongDoan;
import entity.SanPham;

public class Dao_CongDoan {
	private Connection con;
	private Dao_SanPham dao_SanPham;

	public Dao_CongDoan(Connection con) {
		this.con = con;
		dao_SanPham= new Dao_SanPham(con);
	}
	public List<CongDoan> layDS_CongDoan() throws SQLException{
		List<CongDoan> list= new ArrayList<CongDoan>();
		String sql="Select * from CongDoan";
		PreparedStatement ps= con.prepareStatement(sql);
		ResultSet rs= ps.executeQuery();
		while(rs.next()) {
			CongDoan cd= new CongDoan(rs.getString("maCD"), rs.getString("tenCD"),
					rs.getInt("doUuTien"),
					rs.getLong("donGia"),
					rs.getInt("soLuong"),
					dao_SanPham.timKiemSanPhamBangMa(rs.getString("maSP")),
					rs.getBoolean("hoanThanh"));
			list.add(cd);
		}
		return list;
	}
	public List<CongDoan> layDS_CongDoan(String maSp) throws SQLException{
		List<CongDoan> list= new ArrayList<CongDoan>();
		String sql="Select * from CongDoan where maSP = '"+maSp+ "'";
		PreparedStatement ps= con.prepareStatement(sql);
		ResultSet rs= ps.executeQuery();
		while(rs.next()) {
			CongDoan cd= new CongDoan(rs.getString("maCD"), rs.getString("tenCD"),
					rs.getInt("doUuTien"),
					rs.getLong("donGia"),
					rs.getInt("soLuong"),
					dao_SanPham.timKiemSanPhamBangMa(rs.getString("maSP")),
					rs.getBoolean("hoanThanh"));
			list.add(cd);
		}
		return list;
	}
	public CongDoan timKiemCongDoanBangMa(String ma) throws SQLException {
		String sql="Select * from CongDoan where maCD= N'"+ma+"'";
		PreparedStatement ps= con.prepareStatement(sql);
		ResultSet rs= ps.executeQuery();
		while(rs.next()) {
			CongDoan cd= new CongDoan(ma, rs.getString("tenCD"),
					rs.getInt("doUuTien"),
					rs.getLong("donGia"),
					rs.getInt("soLuong"),
					dao_SanPham.timKiemSanPhamBangMa(rs.getString("maSP")),
					rs.getBoolean("hoanThanh"));
			return cd;
		}
		return null;
	}
	public List<CongDoan> timKiemCongDoanBangMaSanPham(String ma) throws SQLException {
		List<CongDoan> list= new ArrayList<CongDoan>();
		String sql="Select * from CongDoan where maSP= N'"+ma+"'";
		PreparedStatement ps= con.prepareStatement(sql);
		ResultSet rs= ps.executeQuery();
		while(rs.next()) {
			CongDoan cd= new CongDoan(rs.getString("maCD"), rs.getString("tenCD"),
					rs.getInt("doUuTien"),
					rs.getLong("donGia"),
					rs.getInt("soLuong"),
					dao_SanPham.timKiemSanPhamBangMa(ma),
					rs.getBoolean("hoanThanh"));
			list.add(cd);
		}
		return list;
	}
	public CongDoan timKiemCongDoanBangTen(String ten) throws SQLException {
		String sql="Select * from CongDoan where tenCD= N'"+ten+"'";
		PreparedStatement ps= con.prepareStatement(sql);
		ResultSet rs= ps.executeQuery();
		while(rs.next()) {
			CongDoan cd= new CongDoan(rs.getString("maCD"), rs.getString("tenCD"),
					rs.getInt("doUuTien"),
					rs.getLong("donGia"),
					rs.getInt("soLuong"),
					dao_SanPham.timKiemSanPhamBangMa(rs.getString("maSP")),
					rs.getBoolean("hoanThanh"));
			return cd;
		}
		return null;
	}
	
	public boolean xoaCongDoan(String maCD) {
		int rs = 0;
		try {
			String sql = "DELETE FROM [dbo].[CongDoan] WHERE maCD = ?";
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setString(1, maCD);
			rs = stmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return rs > 0;
	}
	
	public boolean themCongDoan(CongDoan cd) {
		int rs = 0 ;
		try {
			String sql = "INSERT INTO [dbo].[CongDoan] "
					+ "([tenCD] ,[doUuTien] ,[donGia]  ,[soLuong] "
					+ ",[maSP],[hoanThanh])"
					+ " VALUES       (?,?,?,?,?,?)";
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setString(1, !cd.getTenCD().equals("") ? cd.getTenCD() : null);
			stmt.setInt(2, cd.getDoUuTien());
			stmt.setLong(3, cd.getDonGia() );
			stmt.setInt(4, cd.getSoLuong());
			stmt.setString(5, cd.getSanPham().getMaSP());
			stmt.setBoolean(6, cd.isHoanThanh());
			rs = stmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs > 0;
	}
	
	public boolean suaCongDoan(CongDoan cd) {
		int rs = 0;
		try {
			String sql = "UPDATE [dbo].[CongDoan] SET [tenCD] = ?  ,[doUuTien] = ? "
					+ "      ,[donGia] = ? ,[soLuong] = ? ,[maSP] = ?"
					+ "      ,[hoanThanh] = ?  WHERE maCD = ?";
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setString(1, !cd.getTenCD().equals("") ? cd.getTenCD() : null);
			stmt.setInt(2, cd.getDoUuTien());
			stmt.setLong(3, cd.getDonGia() );
			stmt.setInt(4, cd.getSoLuong());
			stmt.setString(5, cd.getSanPham().getMaSP());
			stmt.setBoolean(6, cd.isHoanThanh());
			stmt.setString(7, cd.getMaCD());
			rs = stmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs > 0;
	}
}
