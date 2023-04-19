package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import entity.CongDoan;
import entity.CongNhan;

public class Dao_CongDoan {
		private Connection con;
		private Dao_SanPham dao_SanPham;

		public Dao_CongDoan(Connection con) {
			this.con = con;
			dao_SanPham= new Dao_SanPham(con);
		}
		public List<CongDoan> layDS_CongDoan() throws SQLException{
			List<CongDoan> list= new ArrayList<CongDoan>();
			String sql="Select * from CongDoan";
			PreparedStatement ps= con.prepareStatement(sql);
			ResultSet rs= ps.executeQuery();
			while(rs.next()) {
				CongDoan cd= new CongDoan(rs.getString("maCD"), rs.getString("tenCD"),
						rs.getInt("doUuTien"),
						rs.getLong("donGia"),
						rs.getInt("soLuong"),
						dao_SanPham.timKiemSanPhamBangMa(rs.getString("maSP")),
						rs.getBoolean("hoanThanh"));
				list.add(cd);
			}
			return list;
		}
		public CongDoan timKiemCongDoanBangMaCongDoan(String ma) throws SQLException {
			String sql="Select * from CongDoan where maCD= N'"+ma+"'";
			PreparedStatement ps= con.prepareStatement(sql);
			ResultSet rs= ps.executeQuery();
			while(rs.next()) {
				CongDoan cd= new CongDoan(ma, rs.getString("tenCD"),
						rs.getInt("doUuTien"),
						rs.getLong("donGia"),
						rs.getInt("soLuong"),
						dao_SanPham.timKiemSanPhamBangMa(rs.getString("maSP")),
						rs.getBoolean("hoanThanh"));
				return cd;
			}
			return null;
		}
		public List<CongDoan> timKiemCongDoanBangMaSanPham(String ma) throws SQLException {
			List<CongDoan> list= new ArrayList<CongDoan>();
			String sql="Select * from CongDoan where maSP= N'"+ma+"'";
			PreparedStatement ps= con.prepareStatement(sql);
			ResultSet rs= ps.executeQuery();
			while(rs.next()) {
				CongDoan cd= new CongDoan(rs.getString("maCD"), rs.getString("tenCD"),
						rs.getInt("doUuTien"),
						rs.getLong("donGia"),
						rs.getInt("soLuong"),
						dao_SanPham.timKiemSanPhamBangMa(ma),
						rs.getBoolean("hoanThanh"));
				list.add(cd);
			}
			return list;
		}
		public CongDoan timKiemCongDoanBangTen(String ten) throws SQLException {
			String sql="Select * from CongDoan where tenCD= N'"+ten+"'";
			PreparedStatement ps= con.prepareStatement(sql);
			ResultSet rs= ps.executeQuery();
			while(rs.next()) {
				CongDoan cd= new CongDoan(rs.getString("maCD"), rs.getString("tenCD"),
						rs.getInt("doUuTien"),
						rs.getLong("donGia"),
						rs.getInt("soLuong"),
						dao_SanPham.timKiemSanPhamBangMa(rs.getString("maSP")),
						rs.getBoolean("hoanThanh"));
				return cd;
			}
			return null;
		}
		
		public boolean themCongDoan(CongDoan cd) {
			try {
				String sql = "INSERT INTO [dbo].[CongDoan]\r\n" + "           ([tenCD]\r\n" + "           ,[doUuTien]\r\n"
						+ "           ,[donGia]\r\n" + "           ,[soLuong]\r\n" + "           ,[tenSP]\r\n"
						+ "           ,[hoanThanh])\r\n" + "     VALUES\r\n" + "           (?,?,?,?,?,?)";
				PreparedStatement pstatement = con.prepareStatement(sql);
				pstatement.setString(1, !cd.getTenCD().equals("") ? cd.getTenCD() : null);
				pstatement.setInt(2, cd.getDoUuTien());
				pstatement.setLong(3, cd.getDonGia());
				pstatement.setInt(4, cd.getSoLuong());
				pstatement.setString(5, cd.getSanPham().getMaSP());
				pstatement.setBoolean(6, cd.isHoanThanh());
				int n = pstatement.executeUpdate();
				return n > 0;
			} catch (Exception e) {
				e.printStackTrace();
			}
			return false;
		}
		
		public boolean xoaCongDoan(String ma) {
			int n = 0;
			try {
				String sql = "Delete CongDoan where maCD=?";
				PreparedStatement pstatement = con.prepareStatement(sql);
				pstatement.setString(1, ma);
				n = pstatement.executeUpdate();
			} catch (Exception e) {
				e.printStackTrace();
			}
			return n > 0;
		}
		
		public boolean suaCongDoan(CongDoan cd) {
			int n = 0;
			try {
				String sql = "UPDATE [dbo].[CongDoan]\r\n" + "   SET [tenCD] = ? \r\n" + "      ,[doUuTien] = ? \r\n"
						+ "      ,[donGia] = ? \r\n" + "      ,[soLuong] = ? \r\n" + "      ,[tenSP] = ? \r\n"
						+ "      ,[hoanThanh] = ? \r\n" + " WHERE maCD = ?";
				PreparedStatement pstatement = con.prepareStatement(sql);
				pstatement.setString(1, !cd.getTenCD().equals("") ? cd.getTenCD() : null);
				pstatement.setInt(2, cd.getDoUuTien());
				pstatement.setLong(3, cd.getDonGia());
				pstatement.setInt(4, cd.getSoLuong());
				pstatement.setString(5, cd.getSanPham().getMaSP());
				pstatement.setBoolean(6, cd.isHoanThanh());
				pstatement.setString(7, cd.getMaCD());
				n = pstatement.executeUpdate();
			} catch (Exception e) {
				e.printStackTrace();
			}
			return n > 0;
		}
}
