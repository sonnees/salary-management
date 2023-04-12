package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import entity.CongNhan;
import entity.NhanVienHanhChanh;
import entity.PhongBan;

public class Dao_CongNhan {
	private Connection con;
	private String dieuKien;
	private int j;
	private Dao_PhongBan dao_PhongBan;

	public Dao_CongNhan(Connection con) {
		this.con = con;
		dao_PhongBan = new Dao_PhongBan(con);
	}

	public List<CongNhan> layDS_CongNhan() throws SQLException {
		List<CongNhan> list = new ArrayList<CongNhan>();
		String sql = "Select * from CongNhan";
		PreparedStatement stmt = con.prepareStatement(sql);
		ResultSet rs = stmt.executeQuery();
		while (rs.next()) {
			CongNhan nv = new CongNhan(rs.getString("maCN"), rs.getString("tenCN"), rs.getBoolean("gioiTinh"),
					rs.getDate("ngaySinh") != null ? LocalDate.parse(rs.getDate("ngaySinh").toString()) : null,
					rs.getString("diaChi"), rs.getString("soDienThoai"),
					dao_PhongBan.timKiemPhongBanBangMa(rs.getString("maPB")));
			list.add(nv);
		}
		return list;
	}

	public List<CongNhan> timKiemCongNhan(String maCN, String tenCN, String soDienThoai, PhongBan phongBan,
			String gioiTinh) throws SQLException {
		List<CongNhan> list = new ArrayList<CongNhan>();
		Map<String, Object> map = new HashMap<String, Object>();
		j = 0;
		dieuKien = "";
		if (!maCN.equals("")) {
			map.put("maCN", "'" + maCN + "'");
			j += 1;
		}
		if (!tenCN.equals("")) {
			map.put("tenCN", "N'" + tenCN + "'");
			j += 1;
		}

		if (!soDienThoai.equals("")) {
			map.put("soDienThoai", "'" + soDienThoai + "'");
			j += 1;
		}
		if (phongBan != null) {
			map.put("maPB", "'" + phongBan.getMaPB() + "'");
			j += 1;
		}
		if (!gioiTinh.equals("")) {
			map.put("gioiTinh", gioiTinh == "Nam" ? 0 : 1);
			j += 1;
		}
		String sql = "";
		if (j == 0)
			sql = "Select * from CongNhan";
		else {
			map.entrySet().forEach(i -> {
				if (j > 0) {
					dieuKien += i.getKey() + " like " + i.getValue();
					j--;
					if (j > 0)
						dieuKien += " and ";
				}
			});
			sql = "Select * from CongNhan" + "  Where " + dieuKien;
		}
		PreparedStatement pstmt = con.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		while (rs.next()) {
			CongNhan cn = new CongNhan(rs.getString("maCN"), rs.getString("tenCN"), rs.getBoolean("gioiTinh"),
					rs.getDate("ngaySinh") != null ? LocalDate.parse(rs.getDate("ngaySinh").toString()) : null,
					rs.getString("diaChi"), rs.getString("soDienThoai"),
					dao_PhongBan.timKiemPhongBanBangMa(rs.getString("maPB")));
			list.add(cn);
		}
		return list;
	}

	public boolean themCongNhan(CongNhan cn) {
		try {
			String sql = "INSERT INTO [dbo].[CongNhan]\r\n" + "           ([tenCN]\r\n" + "           ,[gioiTinh]\r\n"
					+ "           ,[ngaySinh]\r\n" + "           ,[diaChi]\r\n" + "           ,[soDienThoai]\r\n"
					+ "           ,[maPB])\r\n" + "     VALUES\r\n" + "           (?,?,?,?,?,?)";
			PreparedStatement pstatement = con.prepareStatement(sql);
			pstatement.setString(1, !cn.getTenCN().equals("") ? cn.getTenCN() : null);
			pstatement.setBoolean(2, cn.isGioiTinh());
			pstatement.setDate(3, cn.getNgaySinh() != null ? Date.valueOf(cn.getNgaySinh()) : null);
			pstatement.setString(4, !cn.getDiaChi().equals("") ? cn.getDiaChi() : null);
			pstatement.setString(5, !cn.getSoDienThoai().equals("") ? cn.getSoDienThoai() : null);
			pstatement.setString(6, cn.getPhongBan().getMaPB());
			int n = pstatement.executeUpdate();
			return n > 0;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	public CongNhan timKiemCongNhanBangMa(String ma) throws SQLException {
		String sql = "Select * from CongNhan where maCN='" + ma + "'";
		PreparedStatement ps = con.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		while (rs.next()) {
			CongNhan cn = new CongNhan(rs.getString("maCN"), rs.getString("tenCN"), rs.getBoolean("gioiTinh"),
					rs.getDate("ngaySinh") != null ? LocalDate.parse(rs.getDate("ngaySinh").toString()) : null,
					rs.getString("diaChi"), rs.getString("soDienThoai"),
					dao_PhongBan.timKiemPhongBanBangMa(rs.getString("maPB")));
			return cn;
		}
		return null;

	}
	public CongNhan timKiemCongNhanBangTen(String ten) throws SQLException {
		String sql = "Select * from CongNhan where tenCN like N'" + ten + "'";
		PreparedStatement ps = con.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		while (rs.next()) {
			CongNhan cn = new CongNhan(rs.getString("maCN"), rs.getString("tenCN"), rs.getBoolean("gioiTinh"),
					rs.getDate("ngaySinh") != null ? LocalDate.parse(rs.getDate("ngaySinh").toString()) : null,
					rs.getString("diaChi"), rs.getString("soDienThoai"),
					dao_PhongBan.timKiemPhongBanBangMa(rs.getString("maPB")));
			return cn;
		}
		return null;

	}
	public boolean xoaCongNhan(String ma) {
		int n = 0;
		try {
			String sql = "Delete CongNhan where maCN=?";
			PreparedStatement pstatement = con.prepareStatement(sql);
			pstatement.setString(1, ma);
			n = pstatement.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return n > 0;
	}

	public boolean suaCongNhan(CongNhan cn) {
		int n = 0;
		try {
			String sql = "UPDATE [dbo].[CongNhan]\r\n" + "   SET [tenCN] = ? \r\n" + "      ,[gioiTinh] = ? \r\n"
					+ "      ,[ngaySinh] = ? \r\n" + "      ,[diaChi] = ? \r\n" + "      ,[soDienThoai] = ? \r\n"
					+ "      ,[maPB] = ? \r\n" + " WHERE maCN = ?";
			PreparedStatement pstatement = con.prepareStatement(sql);
			pstatement.setString(1, !cn.getTenCN().equals("") ? cn.getTenCN() : null);
			pstatement.setBoolean(2, cn.isGioiTinh());
			pstatement.setDate(3, cn.getNgaySinh() != null ? Date.valueOf(cn.getNgaySinh()) : null);
			pstatement.setString(4, !cn.getDiaChi().equals("") ? cn.getDiaChi() : null);
			pstatement.setString(5, !cn.getSoDienThoai().equals("") ? cn.getSoDienThoai() : null);
			pstatement.setString(6, cn.getPhongBan().getMaPB());
			pstatement.setString(7, cn.getMaCN());
			n = pstatement.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return n > 0;
	}

}
