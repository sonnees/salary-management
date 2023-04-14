package model;

import java.text.DecimalFormat;
import java.util.List;

import javax.swing.table.AbstractTableModel;

import entity.LuongNVHC;

public class TableModel_TinhLuongNVHC_RutGon extends AbstractTableModel{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private static final int tenNVHC = 0;
	private static final int luongCoBan = 1;
	private static final int soNgayTangCa = 2;
	private static final int soNgayLamChuNhat = 3;
	private static final int soNgayDuocTinhLuong = 4;
	private static final int tongLuongCoBan = 5;
	private static final int tongLuongThem = 6;
	private static final int thanhLuong = 7;
	
	private List<LuongNVHC> list;
	private String[] headLine;
	
	public TableModel_TinhLuongNVHC_RutGon(List<LuongNVHC> list, String[] headLine) {
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
		LuongNVHC lnv = list.get(rowIndex);
		
		switch (columnIndex) {
		case tenNVHC: 
			return lnv.getNvhc().getTenNVHC();
		case luongCoBan: 
			return new DecimalFormat("###,###,###").format(lnv.getLuongCoBan())+" vnd";
		case soNgayTangCa:
			return lnv.getSoNgayTangCa();
		case soNgayLamChuNhat: 
			return lnv.getSoNgayLamChuNhat();
		case soNgayDuocTinhLuong: 
			return lnv.getSoNgayDuocTinhLuong();
		case tongLuongCoBan: 
			return new DecimalFormat("###,###,###").format(lnv.getTongLuongCoBan())+" vnd";
		case tongLuongThem: 
			return new DecimalFormat("###,###,###").format(lnv.getTongLuongThem())+" vnd";
		case thanhLuong: 
			return new DecimalFormat("###,###,###").format(lnv.getThanhLuong())+" vnd";
		default:
			break;
		}
		return null;
	}
	
	@Override
	public Class<?> getColumnClass(int columnIndex) {
		if(columnIndex == tenNVHC)
			return String.class;
		return Integer.class;
	}
	
		
	public void setList(List<LuongNVHC> list) {
		this.list = list;
	}
}

	
