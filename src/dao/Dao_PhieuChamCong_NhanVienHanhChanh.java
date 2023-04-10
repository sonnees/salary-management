package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import entity.ETrangThai;
import entity.PhieuChamCongNVHC;


public class Dao_PhieuChamCong_NhanVienHanhChanh {
	private Connection con;
	private Dao_NhanVienHanhChanh dao_NhanVienHanhChanh;
	public Dao_PhieuChamCong_NhanVienHanhChanh(Connection con) {
		this.con = con;
		dao_NhanVienHanhChanh = new Dao_NhanVienHanhChanh(con);
	}
	
	public List<PhieuChamCongNVHC> layDS_PhieuChamCongNVHC_Ngay(LocalDate ngayCham) throws SQLException {
		List<PhieuChamCongNVHC> list = new ArrayList<PhieuChamCongNVHC>();
		String ngay = Date.valueOf(ngayCham).toString();
		String sql = "SELECT * FROM [dbo].[PhieuChamCongNVHC] where ngayCham = '"+ngay+"'";
		PreparedStatement stmt = con.prepareStatement(sql);
		ResultSet rs = stmt.executeQuery();
		while (rs.next()) {
			PhieuChamCongNVHC pcc = new PhieuChamCongNVHC(
					rs.getString("maPCCNVHC"),
					rs.getBoolean("tangCa"),
					rs.getDate("ngayCham")!=null?LocalDate.parse(rs.getDate("ngayCham").toString()):null,
					layTrangThai(rs.getString("trangThai")),
					rs.getString("lyDo"),
					dao_NhanVienHanhChanh.timKiemByMaNVHC(rs.getString("maNVHC"))
					);
			list.add(pcc);
		}
		return list;
	}
	
	public boolean themPhieuChamCong(PhieuChamCongNVHC phieuChamCongNVHC) {
		String sql = "INSERT INTO [dbo].[PhieuChamCongNVHC]\r\n"
				+ "           ([tangCa]\r\n"
				+ "           ,[ngayCham]\r\n"
				+ "           ,[trangThai]\r\n"
				+ "           ,[lyDo]\r\n"
				+ "           ,[maNVHC])\r\n"
				+ "     VALUES\r\n"
				+ "           (?,?,?,?,?)";
		PreparedStatement stmt;
		try {
			stmt = con.prepareStatement(sql);
			stmt.setBoolean(1, phieuChamCongNVHC.isTangCa());
			stmt.setDate(2, Date.valueOf(phieuChamCongNVHC.getNgayCham()));
			stmt.setString(3, phieuChamCongNVHC.getTrangThai().layTrangThai());
			stmt.setString(4, phieuChamCongNVHC.getLyDo());
			stmt.setString(5, phieuChamCongNVHC.getNVHC().getMaNVHC());
			
			int rs = stmt.executeUpdate();
			return rs>0;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return false;
	}
	

	private ETrangThai layTrangThai(String trangThai) {
		switch (trangThai) {
		case "Có mặt": 
			return ETrangThai.COMAT;
		case "Vắng có phép": 
			return ETrangThai.VANGPHEP;
		case "Vắng không phép": 
			return ETrangThai.VANGKHONGPHEP;
		default:
			return ETrangThai.VANGKHONGPHEP;
		}
	}
}
