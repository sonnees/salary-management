package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import entity.PhongBan;

public class Dao_PhongBan {
	private Connection con;

	public Dao_PhongBan(Connection con) {
		this.con = con;
	}

	public PhongBan timKiemPhongBanBangMa(String maPB) throws SQLException {
		String sql = "Select * from PhongBan where maPB = '" + maPB + "'";
		PreparedStatement stmt = con.prepareStatement(sql);
		ResultSet rs = stmt.executeQuery();
		while (rs.next()) {
			PhongBan pb = new PhongBan(rs.getString("maPB"), rs.getNString("tenPB"), rs.getNString("phanKhu"));
			return pb;
		}
		return null;
	}

	public PhongBan timKiemPhongBanBangTen(String tenPB) throws SQLException {
		String sql = "Select * from PhongBan where tenPB = N'" + tenPB + "'";
		PreparedStatement stmt = con.prepareStatement(sql);
		ResultSet rs = stmt.executeQuery();
		while (rs.next()) {
			PhongBan pb = new PhongBan(rs.getString("maPB"), rs.getNString("tenPB"), rs.getNString("phanKhu"));
			return pb;
		}
		return null;
	}

	public List<PhongBan> layDS_PhongBan() throws SQLException {
		List<PhongBan> list = new ArrayList<PhongBan>();
		String sql = "Select * from PhongBan";
		PreparedStatement stmt = con.prepareStatement(sql);
		ResultSet rs = stmt.executeQuery();
		while (rs.next()) {
			PhongBan pb = new PhongBan(rs.getString("maPB"), rs.getString("tenPB"), rs.getString("phanKhu"));
			list.add(pb);
		}
		return list;
	}

	public List<PhongBan> layDS_PhongBanChoCongNhan() throws SQLException {
		List<PhongBan> list = new ArrayList<PhongBan>();
		String sql = "Select * from PhongBan";
		PreparedStatement stmt = con.prepareStatement(sql);
		ResultSet rs = stmt.executeQuery();
		while (rs.next()) {
			if (!rs.getString("tenPB").equals("Phòng Hành Chánh")) {
				PhongBan pb = new PhongBan(rs.getString("maPB"), rs.getString("tenPB"), rs.getString("phanKhu"));
				list.add(pb);
			}
		}
		return list;
	}

}
