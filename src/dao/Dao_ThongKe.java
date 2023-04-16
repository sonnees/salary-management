package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

import entity.TaiKhoan;


public class Dao_ThongKe {
	private Connection con;
	public Dao_ThongKe(Connection con) {
		this.con = con;
	}
	
	public List<Integer> layTuoi() throws SQLException {
		List<Integer> listTuoi=new ArrayList<Integer>();
		String sql = "select duoi35 = count(case when tuoi<35 then tuoi end),\r\n"
				+ "	tu35den45 = count(case when tuoi>35 and tuoi<45  then tuoi end),\r\n"
				+ "	tren45 = count(case when  tuoi>45  then tuoi end)\r\n"
				+ "from (\r\n"
				+ "	select  tuoi =DATEDIFF(YEAR, ngaySinh, GETDATE()) \r\n"
				+ "	from [dbo].[NhanVienHanhChach]) as oke";
		PreparedStatement stmt = con.prepareStatement(sql);
		ResultSet rs = stmt.executeQuery();
		
		while (rs.next()) {
			listTuoi.add(rs.getInt("duoi35"));
			listTuoi.add(rs.getInt("tu35den45"));
			listTuoi.add(rs.getInt("tren45"));
		}
		return listTuoi;
	}
	
	public List<Integer> layTrinhDo() throws SQLException {
		List<Integer> listTuoi=new ArrayList<Integer>();
		String sql = "select duoiDaiHoc = count(case when trinhDo=N'Dưới Đại học' then trinhDo end),\r\n"
				+ "	daiHoc = count(case when trinhDo=N'Đại học' then trinhDo end),\r\n"
				+ "	tenDaiHoc = count(case when trinhDo=N'Trên Đại học' then trinhDo end)\r\n"
				+ "from (\r\n"
				+ "	select trinhDo \r\n"
				+ "	from [dbo].[NhanVienHanhChach]) as oke";
		PreparedStatement stmt = con.prepareStatement(sql);
		ResultSet rs = stmt.executeQuery();
		
		while (rs.next()) {
			listTuoi.add(rs.getInt("duoiDaiHoc"));
			listTuoi.add(rs.getInt("daiHoc"));
			listTuoi.add(rs.getInt("tenDaiHoc"));
		}
		return listTuoi;
	}
	
	public List<Double> layLuongThang(String luongThang) throws SQLException {
		List<Double> list=new ArrayList<Double>();
		String sql = "select thanhLuong from [dbo].[LuongNVHC] where luongThang ='"+luongThang+"'";
		PreparedStatement stmt = con.prepareStatement(sql);
		ResultSet rs = stmt.executeQuery();
		
		while (rs.next()) 
			list.add((double) rs.getLong("thanhLuong"));
		
		if(list.size()==0)
			return null;
		return list;
	}
	public Map<String, Long> layTongLuong(int tuThang, int tuNam, int denThang, int denNam) throws SQLException {
		List<String> list = new ArrayList<String>();
		Map<String, Long> map=new LinkedHashMap<String, Long>();
		
		if(tuNam == denNam) {
			for(int i = tuThang; i<=denThang; i++) 
				list.add(i+"-"+tuNam);
		}
		else {
			for(int i = tuThang; i<=12; i++) 
				list.add(i+"-"+tuNam);
			
			for(int i = tuNam+1; i<denNam;i++)
				for(int j = 1; j<=12; j++)
					list.add(j+"-"+i);
			
			for(int i = 1; i<=denThang; i++)
				list.add(i+"-"+denNam);
		}
			
		String sql = "select tong =sum(case when luongThang=? then thanhLuong else 0 end)\r\n"
				+ "from(\r\n"
				+ "	select luongThang, thanhLuong from [dbo].[LuongNVHC] ) as oke";
		for(String i : list) {
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setString(1, i);
			ResultSet rs = stmt.executeQuery();
			
			while (rs.next()) 
				map.put(i, rs.getLong("tong"));
		}
		
		return map;
	}
	
	
	
}
