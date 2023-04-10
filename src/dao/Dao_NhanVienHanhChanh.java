package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.HashMap;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

import entity.EChucVu;
import entity.ETiengAnh;
import entity.ETrinhDo;
import entity.NhanVienHanhChanh;
import entity.PhongBan;

public class Dao_NhanVienHanhChanh {
	private Connection con;
	private String dieuKien;
	private int j;
	private Dao_PhongBan dao_PhongBan;

	public Dao_NhanVienHanhChanh(Connection con) {
		this.con = con;
		dao_PhongBan = new Dao_PhongBan(con);
	}

	public List<NhanVienHanhChanh> layDS_NhanVienHanhChinh() throws SQLException {
		List<NhanVienHanhChanh> list = new ArrayList<NhanVienHanhChanh>();
		String sql = "Select * from NhanVienHanhChach";
		PreparedStatement stmt = con.prepareStatement(sql);
		ResultSet rs = stmt.executeQuery();
		while (rs.next()) {

			NhanVienHanhChanh nv = new NhanVienHanhChanh(rs.getString("maNVHC"), rs.getString("tenNVHC"),
					rs.getBoolean("gioiTinh"),
					rs.getDate("ngaySinh") != null ? LocalDate.parse(rs.getDate("ngaySinh").toString()) : null,
					rs.getString("diaChi"), rs.getString("soDienThoai"),
					rs.getDate("ngayTGCT") != null ? LocalDate.parse(rs.getDate("ngayTGCT").toString()) : null,
					rs.getString("chucVu") != null ? layChucVu(rs.getString("chucVu")) : null,
					rs.getString("trinhDo") != null ? layTrinhDo(rs.getString("trinhDo")) : null,
					rs.getString("tiengAnh") != null ? layTiengAnh(rs.getString("tiengAnh")) : null,
					rs.getLong("luongCoBan"), dao_PhongBan.timKiemPhongBanBangMa(rs.getString("maPB")));
			list.add(nv);
		}
		return list;
	}

	public List<NhanVienHanhChanh> timKiem(String maNVHC, String tenNVHC, String gioiTinh, Date ngaySinh,
			String soDienThoai, String chucVu, String trinhDo, String tiengAnh) throws SQLException {
		List<NhanVienHanhChanh> list = new ArrayList<NhanVienHanhChanh>();
		Map<String, Object> map = new HashMap<String, Object>();
		j = 0;

		dieuKien = "";
		if (!maNVHC.equals("")) {
			map.put("maNVHC", "'" + maNVHC + "'");
			j += 1;
		}

		if (!tenNVHC.equals("")) {
			map.put("tenNVHC", "N'" + tenNVHC + "'");
			j += 1;
		}

		if (!gioiTinh.equals("")) {
			map.put("gioiTinh", gioiTinh == "Nam" ? 0 : 1);
			j += 1;
		}

		if (ngaySinh != null) {
			map.put("ngaySinh", "'" + ngaySinh + "'");
			j += 1;
		}

		if (!soDienThoai.equals("")) {
			map.put("soDienThoai", "'" + soDienThoai + "'");
			j += 1;
		}

		if (!chucVu.equals("")) {
			map.put("chucVu", "N'" + chucVu + "'");
			j += 1;
		}

		if (!trinhDo.equals("")) {
			map.put("trinhDo", "N'" + trinhDo + "'");
			j += 1;
		}

		if (!tiengAnh.equals("")) {
			map.put("tiengAnh", "N'" + tiengAnh + "'");
			j += 1;
		}

		String sql = "";
		if (j == 0)
			sql = "Select * from NhanVienHanhChach";
		else {
			map.entrySet().forEach(i -> {
				if (j > 0) {
					dieuKien += i.getKey() + " = " + i.getValue();
					j--;
					if (j > 0)
						dieuKien += " and ";
				}
			});

			sql = "Select * from NhanVienHanhChach" + "  Where " + dieuKien;

		}

		PreparedStatement stmt = con.prepareStatement(sql);
		ResultSet rs = stmt.executeQuery();
		while (rs.next()) {
			NhanVienHanhChanh nv = new NhanVienHanhChanh(rs.getString("maNVHC"), rs.getString("tenNVHC"),
					rs.getBoolean("gioiTinh"),
					rs.getDate("ngaySinh") != null ? LocalDate.parse(rs.getDate("ngaySinh").toString()) : null,
					rs.getString("diaChi"), rs.getString("soDienThoai"),
					rs.getDate("ngayTGCT") != null ? LocalDate.parse(rs.getDate("ngayTGCT").toString()) : null,
					rs.getString("chucVu") != null ? layChucVu(rs.getString("chucVu")) : null,
					rs.getString("trinhDo") != null ? layTrinhDo(rs.getString("trinhDo")) : null,
					rs.getString("tiengAnh") != null ? layTiengAnh(rs.getString("tiengAnh")) : null,
					rs.getLong("luongCoBan"), dao_PhongBan.timKiemPhongBanBangMa(rs.getString("maPB")));

			list.add(nv);
		}
		return list;
	}

	public NhanVienHanhChanh timKiemByMaNVHC(String maNVHC) throws SQLException {
		String sql = "Select * from NhanVienHanhChach" + "  Where maNVHC = '" + maNVHC +"'";
		PreparedStatement stmt = con.prepareStatement(sql);
		ResultSet rs = stmt.executeQuery();
		while (rs.next()) {
			NhanVienHanhChanh nv = new NhanVienHanhChanh(
				rs.getString("maNVHC"),
				rs.getString("tenNVHC"),
				rs.getBoolean("gioiTinh"),
				rs.getDate("ngaySinh") != null ? LocalDate.parse(rs.getDate("ngaySinh").toString()) : null,
				rs.getString("diaChi"), rs.getString("soDienThoai"),
				rs.getDate("ngayTGCT") != null ? LocalDate.parse(rs.getDate("ngayTGCT").toString()) : null,
				rs.getString("chucVu") != null ? layChucVu(rs.getString("chucVu")) : null,
				rs.getString("trinhDo") != null ? layTrinhDo(rs.getString("trinhDo")) : null,
				rs.getString("tiengAnh") != null ? layTiengAnh(rs.getString("tiengAnh")) : null,
				rs.getLong("luongCoBan"), dao_PhongBan.timKiemPhongBanBangMa(rs.getString("maPB")));
			return nv;
		}
		return null;
	}
	
	public List<NhanVienHanhChanh> layDS_NVHC_ChuaChamCongTrongNgay(LocalDate ngayCham) throws SQLException {
		List<NhanVienHanhChanh> list = new ArrayList<NhanVienHanhChanh>();
		String ngay = Date.valueOf(ngayCham).toString();
		String sql = "select * from [dbo].[NhanVienHanhChach] where maNVHC not in (select maNVHC from [dbo].[PhieuChamCongNVHC] where ngayCham = '"+ngay+"')";
		PreparedStatement stmt = con.prepareStatement(sql);
		ResultSet rs = stmt.executeQuery();
		while (rs.next()) {
			NhanVienHanhChanh nv = new NhanVienHanhChanh(
				rs.getString("maNVHC"),
				rs.getString("tenNVHC"),
				rs.getBoolean("gioiTinh"),
				rs.getDate("ngaySinh") != null ? LocalDate.parse(rs.getDate("ngaySinh").toString()) : null,
				rs.getString("diaChi"), rs.getString("soDienThoai"),
				rs.getDate("ngayTGCT") != null ? LocalDate.parse(rs.getDate("ngayTGCT").toString()) : null,
				rs.getString("chucVu") != null ? layChucVu(rs.getString("chucVu")) : null,
				rs.getString("trinhDo") != null ? layTrinhDo(rs.getString("trinhDo")) : null,
				rs.getString("tiengAnh") != null ? layTiengAnh(rs.getString("tiengAnh")) : null,
				rs.getLong("luongCoBan"), dao_PhongBan.timKiemPhongBanBangMa(rs.getString("maPB")));
			list.add(nv);
		}
		return list;
	}

	private ETiengAnh layTiengAnh(String string) {
		switch (string) {
		case "Mức yếu":
			return ETiengAnh.YEU;
		case "Mức khá":
			return ETiengAnh.KHA;
		case "Mức giỏi":
			return ETiengAnh.GIOI;
		default:
			return null;
		}

	}

	private ETrinhDo layTrinhDo(String string) {
		switch (string) {
		case "Dưới Đại học":
			return ETrinhDo.DUOIDAIHOC;
		case "Trên Đại học":
			return ETrinhDo.TRENDAIHOC;
		case "Đại học":
			return ETrinhDo.DAIHOC;
		default:
			return null;
		}
	}

	private EChucVu layChucVu(String string) {
		switch (string) {
		case "Nhân viên kế toán":
			return EChucVu.NV_KETOAN;
		case "Nhân viên marketing":
			return EChucVu.NV_MARKETING;
		case "Nhân viên IT":
			return EChucVu.NV_IT;
		case "Nhân viên chăm sóc khách hàng":
			return EChucVu.NV_CSKH;
		case "Nhân viên nhân sự":
			return EChucVu.NV_NHANSU;

		default:
			return null;
		}
	}

	public boolean themNhanVienHanhChach(NhanVienHanhChanh nv) {

		String sql = "INSERT INTO [dbo].[NhanVienHanhChach]\r\n" + "           ([tenNVHC]\r\n"
				+ "           ,[gioiTinh]\r\n" + "           ,[ngaySinh]\r\n" + "           ,[diaChi]\r\n"
				+ "           ,[soDienThoai]\r\n" + "           ,[ngayTGCT]\r\n" + "           ,[chucVu]\r\n"
				+ "           ,[trinhDo]\r\n" + "           ,[tiengAnh]\r\n" + "           ,[luongCoBan]\r\n"
				+ "           ,[maPB])\r\n" + "     VALUES\r\n" + "           (?,?,?,?,?,?,?,?,?,?,?)";

		try {
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setString(1, !nv.getTenNVHC().equals("") ? nv.getTenNVHC() : null);
			stmt.setBoolean(2, nv.isGioiTinh());
			stmt.setDate(3, nv.getNgaySinh() != null ? Date.valueOf(nv.getNgaySinh()) : null);
			stmt.setString(4, !nv.getDiaChi().equals("") ? nv.getDiaChi() : null);
			stmt.setString(5, !nv.getSoDienThoai().equals("") ? nv.getSoDienThoai() : null);
			stmt.setDate(6, nv.getNgayTGCT() != null ? Date.valueOf(nv.getNgayTGCT()) : null);
			stmt.setString(7, nv.getChucVu().layChucVu());
			stmt.setString(8, nv.getTrinhDo().layTrinhDo());
			stmt.setString(9, nv.getTiengAnh().layTiengAnh());
			stmt.setLong(10, nv.getLuongCoBan());
			stmt.setString(11, nv.getPhongBan().getMaPB());

			int rs = stmt.executeUpdate();

			return rs > 0;

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;
	}

	public boolean xoaNhanVienHanhChanh(String maNVHC) {
		String sql = "DELETE FROM [dbo].[NhanVienHanhChach] WHERE maNVHC = ?";

		int rs = 0;
		try {
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setString(1, maNVHC);
			rs = stmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return rs > 0;
	}

	public boolean suaNhanVienHanhChach(NhanVienHanhChanh nv) {

		String sql = "UPDATE [dbo].[NhanVienHanhChach]\r\n" + "   SET [tenNVHC] = ? \r\n" + "      ,[gioiTinh] = ? \r\n"
				+ "      ,[ngaySinh] = ? \r\n" + "      ,[diaChi] = ? \r\n" + "      ,[soDienThoai] = ? \r\n"
				+ "      ,[ngayTGCT] = ? \r\n" + "      ,[chucVu] = ? \r\n" + "      ,[trinhDo] = ? \r\n"
				+ "      ,[tiengAnh] = ? \r\n" + "      ,[luongCoBan] = ? \r\n" + "      ,[maPB] = ? \r\n"
				+ " WHERE maNVHC = ?";

		try {
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setString(1, !nv.getTenNVHC().equals("") ? nv.getTenNVHC() : null);
			stmt.setBoolean(2, nv.isGioiTinh());
			stmt.setDate(3, nv.getNgaySinh() != null ? Date.valueOf(nv.getNgaySinh()) : null);
			stmt.setString(4, !nv.getDiaChi().equals("") ? nv.getDiaChi() : null);
			stmt.setString(5, !nv.getSoDienThoai().equals("") ? nv.getSoDienThoai() : null);
			stmt.setDate(6, nv.getNgayTGCT() != null ? Date.valueOf(nv.getNgayTGCT()) : null);
			stmt.setString(7, nv.getChucVu().layChucVu());
			stmt.setString(8, nv.getTrinhDo().layTrinhDo());
			stmt.setString(9, nv.getTiengAnh().layTiengAnh());
			stmt.setLong(10, nv.getLuongCoBan());
			stmt.setString(11, nv.getPhongBan().getMaPB());
			stmt.setString(12, nv.getMaNVHC());

			int rs = stmt.executeUpdate();

			return rs > 0;

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;
	}

}
