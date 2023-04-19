package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import entity.EDonViTinh;
import entity.NhanVienHanhChanh;
import entity.PhongBan;
import entity.SanPham;

public class Dao_SanPham {
	private Connection con;

	public Dao_SanPham(Connection con) {
		this.con = con;
	}

	public List<SanPham> layDS_SanPham() throws SQLException {
		List<SanPham> list = new ArrayList<SanPham>();
		String sql = "Select * from SanPham";
		PreparedStatement ps = con.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		while (rs.next()) {
			SanPham sp = new SanPham(rs.getString("maSP"), rs.getString("tenSP"),
					rs.getString("donViTinh") != null ? layDonViTinh(rs.getString("donViTinh")) : null,
					rs.getInt("soLuong"),
					rs.getDate("ngayBatDau") != null ? LocalDate.parse(rs.getDate("ngayBatDau").toString()) : null,
					rs.getDate("ngayKetThuc") != null ? LocalDate.parse(rs.getDate("ngayKetThuc").toString()) : null,
					rs.getBoolean("hoanThanh"));
			list.add(sp);
		}
		return list;
	}

	private EDonViTinh layDonViTinh(String string) {
		switch (string) {
		case "Chai":
			return EDonViTinh.CHAI;
		case "Lốc":
			return EDonViTinh.LOC;
		case "Thùng":
			return EDonViTinh.THUNG;
		case "Chiếc":
			return EDonViTinh.CHIEC;
		case "Đôi":
			return EDonViTinh.DOI;
		case "Cái":
			return EDonViTinh.CAI;
		default:
			return null;
		}
	}

	public SanPham timKiemSanPhamBangMa(String ma) throws SQLException {
		String sql = "Select * from SanPham where maSP= N'" + ma + "'";
		PreparedStatement ps = con.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		while (rs.next()) {
			SanPham sp = new SanPham(rs.getString("maSP"), rs.getString("tenSP"),
					rs.getString("donViTinh") != null ? layDonViTinh(rs.getString("donViTinh")) : null,
					rs.getInt("soLuong"),
					rs.getDate("ngayBatDau") != null ? LocalDate.parse(rs.getDate("ngayBatDau").toString()) : null,
					rs.getDate("ngayKetThuc") != null ? LocalDate.parse(rs.getDate("ngayKetThuc").toString()) : null,
					rs.getBoolean("hoanThanh"));
			return sp;
		}
		return null;
	}

	public SanPham timKiemSanPhamBangTen(String ten) throws SQLException {
		String sql = "Select * from SanPham where tenSP= N'" + ten + "'";
		PreparedStatement ps = con.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		while (rs.next()) {
			SanPham sp = new SanPham(rs.getString("maSP"), ten,
					rs.getString("donViTinh") != null ? layDonViTinh(rs.getString("donViTinh")) : null,
					rs.getInt("soLuong"),
					rs.getDate("ngayBatDau") != null ? LocalDate.parse(rs.getDate("ngayBatDau").toString()) : null,
					rs.getDate("ngayKetThuc") != null ? LocalDate.parse(rs.getDate("ngayKetThuc").toString()) : null,
					rs.getBoolean("hoanThanh"));
			return sp;
		}
		return null;
	}
	
	public boolean xoaSanPham(String maSP) {
		int rs = 0;
		try {
			String sql = "DELETE FROM [dbo].[SanPham] WHERE maSP = ?";
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setString(1, maSP);
			rs = stmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return rs > 0;
	}

	
	public boolean themSanPham(SanPham sp) {
		int rs = 0 ;
		try {
			String sql = "INSERT INTO [dbo].[SanPham]\r\n" + "           ([tenSP]\r\n"
					+ "           ,[donViTinh])\r\n"+ "           ,[soLuong]\r\n" + "           ,[ngayBatDau]\r\n"
					+ "           ,[ngayKetThuc])\r\n"+ "           ,[hoanThanh])\r\n"
					+ "				   VALUES\r\n" + "           (?,?,?,?,?,?)";
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setString(1, !sp.getTenSP().equals("") ? sp.getTenSP() : null);
			stmt.setString(2, sp.getDonViTinh().layDonViTinh());
			stmt.setInt(3, sp.getSoLuong() );
			stmt.setDate(4, sp.getNgayBatDau() != null ? Date.valueOf(sp.getNgayBatDau()):null);
			stmt.setDate(5, sp.getNgayKetThuc() != null ? Date.valueOf(sp.getNgayKetThuc()):null);
			stmt.setBoolean(6, sp.isHoanThanh());
			rs = stmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs > 0;
	}
	
	public boolean suaSanPham(SanPham sp) {
		int rs = 0;
		try {
			String sql = "UPDATE [dbo].[SanPham]\r\n" + "   SET [tenSP] = ? \r\n" + "      ,[donViTinh] = ? \r\n"
					+ "      ,[soLuong] = ? \r\n" + "      ,[ngayBatDau] = ? \r\n" + "      ,[ngayKetThuc] = ? \r\n"
					+ "      ,[hoanThanh] = ? \r\n" + "  WHERE maSP = ?";
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setString(1, !sp.getTenSP().equals("") ? sp.getTenSP() : null);
			stmt.setString(2, sp.getDonViTinh().layDonViTinh());
			stmt.setInt(3, sp.getSoLuong() );
			stmt.setDate(4, sp.getNgayBatDau() != null ? Date.valueOf(sp.getNgayBatDau()):null);
			stmt.setDate(5, sp.getNgayKetThuc() != null ? Date.valueOf(sp.getNgayKetThuc()):null);
			stmt.setBoolean(6, sp.isHoanThanh());
			stmt.setString(7, sp.getMaSP());
			rs = stmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs > 0;
	}
	public List<SanPham> layDS_SanPhamCuaCongDoan() throws SQLException{
		List <SanPham> list = new ArrayList<SanPham>();
		String sql = "Select * from SanPham where tenSP ";
		PreparedStatement stmt = con.prepareStatement(sql);
		ResultSet rs = stmt.executeQuery();
		while (rs.next()) {
			SanPham sp = new SanPham (
					rs.getString("maSP"), 
					rs.getString("tenSP"),
					rs.getString("donViTinh") != null ? layDonViTinh(rs.getString("donViTinh")) : null,
					rs.getInt("soLuong"),
					rs.getDate("ngayBatDau") != null ? LocalDate.parse(rs.getDate("ngayBatDau").toString()) : null,
					rs.getDate("ngayKetThuc") != null ? LocalDate.parse(rs.getDate("ngayKetThuc").toString()) : null,
					rs.getBoolean("hoanThanh")
			);
			list.add(sp);
		}
		return list;
	}
}
