package dao;

import java.sql.Connection;
import java.sql.Date;
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
	private Dao_CongDoan dao_CongDoan;
	private Dao_CaLamViec dao_CaLamViec;

	public Dao_PhanCong(Connection con) {
		this.con = con;
		dao_CongNhan= new Dao_CongNhan(con);
		dao_CongDoan= new Dao_CongDoan(con);
		dao_CaLamViec= new Dao_CaLamViec(con);
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
					dao_CongDoan.timKiemCongDoanBangMa(rs.getString("maCD")), 
					dao_CaLamViec.timKiemCaLamViecBangMa(rs.getString("maCLV")));
			list.add(p);
		}
		return list;
	}
	public List<PhieuPhanCong> layDS_PhanCongChuaChamCong() throws SQLException{
		List<PhieuPhanCong> list = new ArrayList<PhieuPhanCong>();
		String sql="Select * from PhieuPhanCong where maPPC not in (select maPPC from PhieuChamCongCN)";
		PreparedStatement ps= con.prepareStatement(sql);
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			PhieuPhanCong p= new PhieuPhanCong(
					rs.getString("maPPC"), 
					rs.getDate("ngayPhan") != null ? LocalDate.parse(rs.getDate("ngayPhan").toString()) : null, 
					dao_CongNhan.timKiemCongNhanBangMa(rs.getString("maCN")), 
					dao_CongDoan.timKiemCongDoanBangMa(rs.getString("maCD")), 
					dao_CaLamViec.timKiemCaLamViecBangMa(rs.getString("maCLV")));
			list.add(p);
		}
		return list;
	}
	public PhieuPhanCong timKiemPhieuPhanCongBangMa(String ma) throws SQLException{
		String sql="Select * from PhieuPhanCong where maPPC= '"+ma+"'";
		PreparedStatement ps= con.prepareStatement(sql);
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			PhieuPhanCong p= new PhieuPhanCong(
					rs.getString("maPPC"), 
					rs.getDate("ngayPhan") != null ? LocalDate.parse(rs.getDate("ngayPhan").toString()) : null, 
					dao_CongNhan.timKiemCongNhanBangMa(rs.getString("maCN")), 
					dao_CongDoan.timKiemCongDoanBangMa(rs.getString("maCD")), 
					dao_CaLamViec.timKiemCaLamViecBangMa(rs.getString("maCLV")));
			return p;
		}
		return null;
	}
	public boolean themPhieuPhanCong(PhieuPhanCong ppc) {
		try {
			String sql="INSERT INTO PhieuPhanCong( ngayPhan, maCN, maCD, maCLV)\r\n"
					+ "VALUES        (?,?,?,?)";
			PreparedStatement ps= con.prepareStatement(sql);
			ps.setDate(1,ppc.getNgayPhan()!=null?Date.valueOf(ppc.getNgayPhan()):null);
			ps.setString(2, ppc.getCongNhan().getMaCN());
			ps.setString(3, ppc.getCongDoan().getMaCD());
			ps.setString(4, ppc.getCaLamViec().getMaCLV());
			int n= ps.executeUpdate();
			return n>0;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	public boolean xoaPhieuPhanCong(String ma) {
		int n = 0;
		try {
			String sql = "Delete PhieuPhanCong where maPPC =?";
			PreparedStatement pstatement = con.prepareStatement(sql);
			pstatement.setString(1, ma);
			n = pstatement.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return n > 0;
	}
	public boolean suaPhieuPhanCong(PhieuPhanCong ppc) {
		try {
			String sql="\r\n"
					+ "UPDATE       PhieuPhanCong\r\n"
					+ "SET                ngayPhan =?, maCN =?, maCD =?, maCLV =?\r\n"
					+ "WHERE maPPC=?";
			PreparedStatement ps= con.prepareStatement(sql);
			ps.setDate(1,ppc.getNgayPhan()!=null?Date.valueOf(ppc.getNgayPhan()):null);
			ps.setString(2, ppc.getCongNhan().getMaCN());
			ps.setString(3, ppc.getCongDoan().getMaCD());
			ps.setString(4, ppc.getCaLamViec().getMaCLV());
			ps.setString(5, ppc.getMaPPC());
			int n= ps.executeUpdate();
			return n>0;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	

}
