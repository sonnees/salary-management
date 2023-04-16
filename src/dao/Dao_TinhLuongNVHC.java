package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import entity.EChucVu;
import entity.ETiengAnh;
import entity.ETrinhDo;
import entity.LuongNVHC;
import entity.NhanVienHanhChanh;
import entity.TaiKhoan;

public class Dao_TinhLuongNVHC {
	private Connection con;
	private Dao_PhongBan dao_PhongBan;
	public Dao_TinhLuongNVHC(Connection con) {
		this.con = con;
		dao_PhongBan = new Dao_PhongBan(con);
	}
	
	public List<LuongNVHC> tinhLuongNVHC(int thang, int nam) throws SQLException {
		String luongThang = thang+"-"+nam;
		String sql = "SELECT P1.maNVHC,\r\n"
				+ "	P6.tenNVHC,\r\n"
				+ "	P6.gioiTinh,\r\n"
				+ "	P6.ngaySinh,\r\n"
				+ "	p6.diaChi,\r\n"
				+ "	P6.soDienThoai,\r\n"
				+ "	P6.ngayTGCT,\r\n"
				+ "	P6.chucVu,\r\n"
				+ "	P6.trinhDo,\r\n"
				+ "	P6.tiengAnh,\r\n"
				+ "	P6.luongCoBan,\r\n"
				+ "	P6.maPB,"
				+ "	luongNgay=(P6.luongCoBan/31),\r\n"
				+ "	P1.soNgayDiLam,\r\n"
				+ "	P2.soNgayNghiCoPhep,\r\n"
				+ "	P3.soNgayNghiKhongPhep,\r\n"
				+ "	P4.soNgayTangCa,\r\n"
				+ "	P5.soNgayLamChuNhat,\r\n"
				+ "	soNgayDuocTinhLuong=P1.soNgayDiLam+P2.soNgayNghiCoPhep,\r\n"
				+ "	tongLuongCoBan=(P6.luongCoBan/31)*(P1.soNgayDiLam+P2.soNgayNghiCoPhep),\r\n"
				+ "	tongLuongThem=((P6.luongCoBan/31)*0.5)*(P4.soNgayTangCa+P5.soNgayLamChuNhat),\r\n"
				+ "	thanhLuong=((P6.luongCoBan/31)*(P1.soNgayDiLam+P2.soNgayNghiCoPhep))+(((P6.luongCoBan/31)*0.5)*(P4.soNgayTangCa+P5.soNgayLamChuNhat))\r\n"
				+ " FROM (\r\n"
				+ "    SELECT maNVHC, soNgayDiLam = COUNT(CASE WHEN trangThai = N'Có mặt' THEN maNVHC END)\r\n"
				+ "    FROM [dbo].[PhieuChamCongNVHC] \r\n"
				+ "    where DATEPART(MONTH, ngayCham) = ? and DATEPART(YEAR, ngayCham) = ? \r\n"
				+ "    GROUP BY maNVHC\r\n"
				+ ") AS P1\r\n"
				+ " JOIN (\r\n"
				+ "    SELECT maNVHC, soNgayNghiCoPhep =COUNT(CASE WHEN trangThai =N'Vắng có phép' THEN maNVHC END) \r\n"
				+ "    FROM [dbo].[PhieuChamCongNVHC]\r\n"
				+ "	   where DATEPART(MONTH, ngayCham) = ? and DATEPART(YEAR, ngayCham) = ? \r\n"
				+ "    GROUP BY maNVHC\r\n"
				+ ") AS P2 ON P1.maNVHC = P2.maNVHC\r\n"
				+ " JOIN(\r\n"
				+ "	   select maNVHC, soNgayNghiKhongPhep=count(CASE WHEN trangThai =N'Vắng không phép' THEN maNVHC END)  \r\n"
				+ "	   from [dbo].[PhieuChamCongNVHC] \r\n"
				+ "	   where DATEPART(MONTH, ngayCham) = ? and DATEPART(YEAR, ngayCham) = ? \r\n"
				+ "	   group by maNVHC\r\n"
				+ ") AS P3 on P1.maNVHC = P3.maNVHC\r\n"
				+ " JOIN(\r\n"
				+ "	   select maNVHC, soNgayTangCa = count(CASE WHEN tangCa = 'True' THEN maNVHC END) \r\n"
				+ "	   from [dbo].[PhieuChamCongNVHC]\r\n"
				+ "	   where DATEPART(MONTH, ngayCham) = ? and DATEPART(YEAR, ngayCham) = ? \r\n"
				+ "	   group by maNVHC \r\n"
				+ ") AS P4 on P1.maNVHC = P4.maNVHC\r\n"
				+ " JOIN(\r\n"
				+ "	   SELECT maNVHC, soNgayLamChuNhat = COUNT(CASE WHEN DATEPART(WEEKDAY, ngayCham) = 1 THEN maNVHC END)\r\n"
				+ "	   FROM [dbo].[PhieuChamCongNVHC]\r\n"
				+ "	   where DATEPART(MONTH, ngayCham) = ? and DATEPART(YEAR, ngayCham) = ? \r\n"
				+ "	   GROUP BY maNVHC\r\n"
				+ ") AS P5 on P1.maNVHC = P5.maNVHC\r\n"
				+ " JOIN(\r\n"
				+ "	   select * from [dbo].[NhanVienHanhChach]\r\n"
				+ ") AS P6  on P6.maNVHC = P1.maNVHC";
		PreparedStatement stmt = con.prepareStatement(sql);
		stmt.setInt(1, thang);stmt.setInt(2, nam);
		stmt.setInt(3, thang);stmt.setInt(4, nam);
		stmt.setInt(5, thang);stmt.setInt(6, nam);
		stmt.setInt(7, thang);stmt.setInt(8, nam);
		stmt.setInt(9, thang);stmt.setInt(10, nam);
		ResultSet rs = stmt.executeQuery();
		
		List<LuongNVHC> luongNVHCs = new ArrayList<LuongNVHC>();
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

			LuongNVHC luongNVHC = new LuongNVHC(nv, 
					luongThang, 
					nv.getLuongCoBan(), 
					rs.getLong("luongNgay"), 
					rs.getInt("soNgayDiLam"), 
					rs.getInt("soNgayNghiCoPhep"), 
					rs.getInt("soNgayNghiKhongPhep"), 
					rs.getInt("soNgayTangCa"), 
					rs.getInt("soNgayLamChuNhat"), 
					rs.getInt("soNgayDuocTinhLuong"), 
					rs.getLong("tongLuongCoBan"), 
					rs.getLong("tongLuongThem"), 
					rs.getLong("thanhLuong"));
			luongNVHCs.add(luongNVHC);
		}
		return luongNVHCs;
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
	
	public boolean themLuongNVHC(LuongNVHC luongNVHC) throws SQLException {
		String sql = "INSERT INTO [dbo].[LuongNVHC]\r\n"
				+ "           ([maNVHC]\r\n"
				+ "           ,[luongThang]\r\n"
				+ "           ,[luongCoBan]\r\n"
				+ "           ,[luongNgay]\r\n"
				+ "           ,[soNgayDiLam]\r\n"
				+ "           ,[soNgayNghiCoPhep]\r\n"
				+ "           ,[soNgayNghiKhongPhep]\r\n"
				+ "           ,[soNgayTangCa]\r\n"
				+ "           ,[soNgayLamChuNhat]\r\n"
				+ "           ,[soNgayDuocTinhLuong]\r\n"
				+ "           ,[tongLuongCoBan]\r\n"
				+ "           ,[tongLuongThem]\r\n"
				+ "           ,[thanhLuong])\r\n"
				+ "     VALUES\r\n"
				+ "           (?,?,?,?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement stmt = con.prepareStatement(sql);
		stmt.setString(1, luongNVHC.getNvhc().getMaNVHC());
		stmt.setString(2, luongNVHC.getLuongThang());stmt.setLong(3, luongNVHC.getLuongCoBan());
		stmt.setLong(4, luongNVHC.getLuongNgay());stmt.setInt(5, luongNVHC.getsoNgayDiLam());
		stmt.setInt(6, luongNVHC.getSoNgayNghiCoPhep());stmt.setInt(7, luongNVHC.getSoNgayNghiKhongPhep());
		stmt.setInt(8, luongNVHC.getSoNgayTangCa());stmt.setInt(9, luongNVHC.getSoNgayLamChuNhat());
		stmt.setInt(10, luongNVHC.getSoNgayDuocTinhLuong());stmt.setLong(11, luongNVHC.getTongLuongCoBan());
		stmt.setLong(12, luongNVHC.getTongLuongThem());stmt.setLong(13, luongNVHC.getThanhLuong());
		int rs = stmt.executeUpdate();
		
		return rs>0;
	}
	public boolean daTinhLuongThang(String luongThang) throws SQLException {
		String sql = "select soLuong= count(maLuongNVHC) from [dbo].[LuongNVHC]  where luongThang =?";
		PreparedStatement stmt = con.prepareStatement(sql);
		stmt.setString(1, luongThang);
		ResultSet rs = stmt.executeQuery();
		while(rs.next()) {
			return rs.getInt("soLuong")>0;
		}
		return false;
	}
	
}
