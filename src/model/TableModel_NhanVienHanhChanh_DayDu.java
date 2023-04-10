package model;

import java.sql.Date;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.swing.table.AbstractTableModel;

import entity.NhanVienHanhChanh;

public class TableModel_NhanVienHanhChanh_DayDu extends AbstractTableModel{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private static final int maNVHC = 0;
	private static final int tenNVHC = 1;
	private static final int gioiTinh = 2;
	private static final int ngaySinh = 3;
	private static final int diaChi = 4;
	private static final int soDienThoai = 5;
	private static final int ngayTGCT = 6;
	private static final int chucVu = 7;
	private static final int trinhDo = 8;
	private static final int tiengAnh = 9;
	private static final int luongCoBan = 10;
	private static final int tenPB = 11;
	private List<NhanVienHanhChanh> list;
	private String[] headLine;
	
	public TableModel_NhanVienHanhChanh_DayDu(List<NhanVienHanhChanh> list, String[] headLine) {
		super();
		this.list = list;
		this.headLine = headLine;
	}

	@Override
	public int getRowCount() {
		return list.size();
	}

	@Override
	public int getColumnCount() {
		return headLine.length;
	}

	@Override
	public String getColumnName(int column) {
		return headLine[column];
	}
	
	@Override
	public Object getValueAt(int rowIndex, int columnIndex) {
		NhanVienHanhChanh nv = list.get(rowIndex);
		
		switch (columnIndex) {
		case maNVHC: 
			return nv.getMaNVHC();
		case tenNVHC: 
			return nv.getTenNVHC();
		case gioiTinh: 
			return nv.isGioiTinh()==true?"Nữ":"Nam";
		case ngaySinh:
			if(nv.getNgaySinh()==null)
				return "NaN";
			return new SimpleDateFormat("dd/MM/yyyy").format(Date.valueOf(nv.getNgaySinh()));
		case diaChi: 
			return nv.getDiaChi();
		case soDienThoai: 
			return nv.getSoDienThoai();
		case ngayTGCT:
			if(nv.getNgayTGCT()==null)
				return "NaN";
			return new SimpleDateFormat("dd/MM/yyyy").format(Date.valueOf(nv.getNgayTGCT()));
		case chucVu:
			if(nv.getChucVu()==null)
				return "NaN";
			return nv.getChucVu().layChucVu();
		case trinhDo: 
			if(nv.getTrinhDo()==null)
				return "NaN";
			return nv.getTrinhDo().layTrinhDo();
		case tiengAnh: 
			if(nv.getTiengAnh()==null)
				return "NaN";
			return nv.getTiengAnh().layTiengAnh();
		case luongCoBan: 
			return new DecimalFormat("###,###,###").format(nv.getLuongCoBan())+" vnd";
		case tenPB: 
			return nv.getPhongBan().getTenPB();
					
		default:
			break;
		}
		return null;
	}
	
	@Override
	public Class<?> getColumnClass(int columnIndex) {
		if(luongCoBan == columnIndex || ngaySinh == columnIndex || soDienThoai == columnIndex || ngayTGCT == columnIndex)
			return Integer.class;
		return String.class;
	}
	
		
	public void setList(List<NhanVienHanhChanh> list) {
		this.list = list;
	}
}

	
