package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.List;

import entity.CaLamViec;
import entity.PhongBan;

public class Dao_CaLamViec {
	private Connection con;

	public Dao_CaLamViec(Connection con) {
		this.con = con;
	}

	public List<CaLamViec> layDS_CaLamViec() throws SQLException {
		List<CaLamViec> list = new ArrayList<CaLamViec>();
		String sql = "Select * from CaLamViec";
		PreparedStatement ps = con.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		while (rs.next()) {
			CaLamViec clv=null;
			try {
				clv = new CaLamViec(rs.getString("maCLV"),
						rs.getTime("thoiGianBatDau") != null ? LocalTime.parse(rs.getTime("thoiGianBatDau").toString())
								: null,
						rs.getTime("thoiGianKetThuc") != null ? LocalTime.parse(rs.getTime("thoiGianKetThuc").toString())
								: null,
						rs.getFloat("heSo"));
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			list.add(clv);
		}
		return list;
	}
	public CaLamViec timKiemCaLamViecBangMa(String ma) throws SQLException {
		String sql = "Select * from caLamViec where maCLV = '" + ma + "'";
		PreparedStatement stmt = con.prepareStatement(sql);
		ResultSet rs = stmt.executeQuery();
		while (rs.next()) {
			CaLamViec clv=null;
			try {
				clv = new CaLamViec(rs.getString("maCLV"),
						rs.getTime("thoiGianBatDau") != null ? LocalTime.parse(rs.getTime("thoiGianBatDau").toString())
								: null,
						rs.getTime("thoiGianKetThuc") != null ? LocalTime.parse(rs.getTime("thoiGianKetThuc").toString())
								: null,
						rs.getFloat("heSo"));
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return clv;
		}
		return null;
	}

}
