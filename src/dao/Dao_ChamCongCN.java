package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import db.ConnectDB;
import entity.PhieuChamCongCN;

public class Dao_ChamCongCN {
	private Connection con;
	private Dao_CongNhan dao_CongNhan;
	private Dao_CongDoan dao_CongDoan;
	private Dao_CaLamViec dao_CaLamViec;
	private Dao_PhanCong dao_PhanCong;

	public Dao_ChamCongCN(Connection con) {
		this.con = con;
		dao_PhanCong = new Dao_PhanCong(con);
		dao_CongNhan = new Dao_CongNhan(con);
		dao_CongDoan = new Dao_CongDoan(con);
		dao_CaLamViec = new Dao_CaLamViec(con);
	}

	public List<PhieuChamCongCN> layDS_PhieuChamCongCN() throws SQLException {
		List<PhieuChamCongCN> list= new ArrayList<PhieuChamCongCN>();
		String sql="Select * from PhieuChamCongCN";
		PreparedStatement ps= con.prepareStatement(sql);
		ResultSet rs= ps.executeQuery();
		while(rs.next()) {
			PhieuChamCongCN p= new PhieuChamCongCN(
					rs.getString("maPCCCN"), 
					rs.getInt("soLuong"), 
					dao_PhanCong.timKiemPhieuPhanCongBangMa(rs.getString("maPPC"))
					);
			list.add(p);
		}
		return list;
	}
	public PhieuChamCongCN timKiemPhieuChamCongCNBangMa(String ma) throws SQLException {
		String sql="Select * from PhieuChamCongCN where maPCCCN '"+ma+"'";
		PreparedStatement ps= con.prepareStatement(sql);
		ResultSet rs= ps.executeQuery();
		while(rs.next()) {
			PhieuChamCongCN p= new PhieuChamCongCN(
					rs.getString("maPCCCN"), 
					rs.getInt("soLuong"), 
					dao_PhanCong.timKiemPhieuPhanCongBangMa(rs.getString("maPPC"))
					);
			return p;
		}
		return null;
	}
	
	public boolean themPhieuChamCongCN(PhieuChamCongCN pcc) {
		try {
			String sql="INSERT INTO PhieuChamCongCN(soLuong, maPPC)\r\n"
					+ "VALUES        (?,?)";
			PreparedStatement ps= con.prepareStatement(sql);
			ps.setInt(1, pcc.getSoLuong());
			ps.setString(2, pcc.getPhieuPhanCong().getMaPPC());
			int n= ps.executeUpdate();
			return n>0;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	public boolean xoaPhieuChamCong(String ma) {
		int n = 0;
		try {
			String sql = "Delete PhieuChamCongCN where maPCCCN =?";
			PreparedStatement pstatement = con.prepareStatement(sql);
			pstatement.setString(1, ma);
			n = pstatement.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return n > 0;
	}
	public boolean suaPhieuChamCong(PhieuChamCongCN pcc) {
		int n = 0;
		try {
			String sql = "UPDATE       PhieuChamCongCN\r\n"
					+ "SET                soLuong =?, maPPC =?\r\n"
					+ "Where maPCCCN=?";
			PreparedStatement pstatement = con.prepareStatement(sql);
			pstatement.setInt(1, pcc.getSoLuong());
			pstatement.setString(2, pcc.getPhieuPhanCong().getMaPPC());
			pstatement.setString(3, pcc.getMaPCCCN());
			n = pstatement.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return n > 0;
	}
}
