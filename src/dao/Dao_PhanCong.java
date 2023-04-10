package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import entity.PhieuPhanCong;

public class Dao_PhanCong {
	private Connection con;
	private Dao_CongNhan dao_CongNhan;

	public Dao_PhanCong(Connection con) {
		this.con = con;
		dao_CongNhan= new Dao_CongNhan(con);
	}
	
	public List<PhieuPhanCong> layDS_PhanCong() throws SQLException{
		List<PhieuPhanCong> list = new ArrayList<PhieuPhanCong>();
		String sql="Select * from PhieuPhanCong";
		PreparedStatement ps= con.prepareStatement(sql);
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			PhieuPhanCong p= new PhieuPhanCong(
					rs.getString("maPPC"), 
					rs.getDate("ngayPhan") != null ? LocalDate.parse(rs.getDate("ngayPhan").toString()) : null, 
					dao_CongNhan.timKiemCongNhanBangMa(rs.getString("maCN")), 
					null, 
					null);
			list.add(p);
		}
		return list;
	}
	
	public String layTenCa(String ma) {
		if(ma.equals("clv_0000000"))
			return "Ca 1";
		if(ma.equals("clv_0000001"))
			return "Ca 2";
		if(ma.equals("clv_0000002"))
			return "Ca 3";
		return "";
	}

}
