package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import entity.NhanVienHanhChanh;
import entity.PhongBan;

public class Dao_PhongBan {
	private Connection con;
	public Dao_PhongBan(Connection con) {
		this.con = con;
	}
	
	public PhongBan timKiemPhongBanBangMa(String maPB) throws SQLException {
		String sql = "Select * from PhongBan where maPB = '"+maPB+"'";
		PreparedStatement stmt = con.prepareStatement(sql);
		ResultSet rs = stmt.executeQuery();
		while (rs.next()) {
			PhongBan pb = new PhongBan(
					rs.getString("maPB"),
					rs.getNString("tenPB"),
					rs.getNString("phanKhu")
					);
			return pb;
		}
		return null;
	}
	
	public PhongBan timKiemPhongBanBangTen(String tenPB) throws SQLException {
		String sql = "Select * from PhongBan where tenPB = N'"+tenPB+"'";
		PreparedStatement stmt = con.prepareStatement(sql);
		ResultSet rs = stmt.executeQuery();
		while (rs.next()) {
			PhongBan pb = new PhongBan(
					rs.getString("maPB"),
					rs.getNString("tenPB"),
					rs.getNString("phanKhu")
					);
			return pb;
		}
		return null;
	}
	
	public List<PhongBan> layDS_PhongBan() throws SQLException{
		List<PhongBan> list = new ArrayList<PhongBan>();
		String sql = "Select * from PhongBan";
		PreparedStatement stmt = con.prepareStatement(sql);
		ResultSet rs = stmt.executeQuery();
		while (rs.next()) {
			
			PhongBan pb = new PhongBan(
					rs.getString("maPB"),
					rs.getString("tenPB"),
					rs.getString("phanKhu")
					);
			list.add(pb);
		}
		return list;
	}
	
	public boolean xoaPhongBan(String maPB) {
		String sql = "DELETE FROM [dbo].[PhongBan] WHERE maPB = ?";

		int rs = 0;
		try {
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setString(1, maPB);
			rs = stmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return rs > 0;
	}
	
	public boolean themPhongBan(PhongBan pb) {

		String sql = "INSERT INTO [dbo].[PhongBan]\r\n" + "           ([tenPB]\r\n"
				+ "           ,[phanKhu])\r\n" + "     VALUES\r\n" + "           (?,?)";

		try {
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setString(1, !pb.getTenPB().equals("") ? pb.getTenPB() : null);
			stmt.setString(2, !pb.getPhanKhu().equals("") ? pb.getPhanKhu() : null);

			int rs = stmt.executeUpdate();

			return rs > 0;

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;
	}
	
	public boolean suaPhongBan(PhongBan pb) {

		String sql = "UPDATE [dbo].[PhongBan]\r\n" + "   SET [tenPB] = ? \r\n" + "      ,[phanKhu] = ? \r\n"
				+ " WHERE maPB = ?";

		try {
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setString(1, !pb.getTenPB().equals("") ? pb.getTenPB() : null);
			stmt.setString(4, !pb.getPhanKhu().equals("") ? pb.getPhanKhu() : null);

			int rs = stmt.executeUpdate();

			return rs > 0;

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;
	}
	
	public List<PhongBan> layDS_PhongBanChoCongNhan() throws SQLException {
		List<PhongBan> list = new ArrayList<PhongBan>();
		String sql = "Select * from PhongBan where tenPB not like N'Phòng%'";
		PreparedStatement stmt = con.prepareStatement(sql);
		ResultSet rs = stmt.executeQuery();
		while (rs.next()) {
			PhongBan pb = new PhongBan(rs.getString("maPB"), rs.getString("tenPB"), rs.getString("phanKhu"));
			list.add(pb);
		}
		return list;
	}
}
