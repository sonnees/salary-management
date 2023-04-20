package model;

import java.sql.Date;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.swing.table.AbstractTableModel;

import entity.CongDoan;

public class TableModel_CongDoan_DayDu extends AbstractTableModel{
	private static final long serialVersionUID = 1L;
	private static final int maCD = 0;
	private static final int tenCD = 1;
	private static final int doUuTien = 2;
	private static final int donGia = 3;
	private static final int soLuong = 4;
	private static final int hoanThanh = 5;
	private static final int maSP = 6;
	
	
	private List<CongDoan> list;
	private String[] headLine;
	public TableModel_CongDoan_DayDu(List<CongDoan> list, String[] headLine) {
		super();
		this.list = list;
		this.headLine = headLine;
	}
	@Override
	public int getRowCount() {
		// TODO Auto-generated method stub
		return list.size();
	}
	@Override
	public int getColumnCount() {
		// TODO Auto-generated method stub
		return headLine.length;
	}
		@Override
	public String getColumnName(int column) {
		return headLine[column];
	}
	@Override
	public Object getValueAt(int rowIndex, int columnIndex) {
		CongDoan cd = list.get(rowIndex);
		
		switch (columnIndex) {
		case maCD: 
			return cd.getMaCD();
		case tenCD: 
			return cd.getTenCD();
		case doUuTien:
			return cd.getDoUuTien();
		case donGia: 
			return new DecimalFormat("###,###,###").format(cd.getDonGia())+ " vnđ" ;
		case soLuong: 
			return cd.getSoLuong();
		case hoanThanh: 
			return cd.isHoanThanh()==true?"Hoàn thành":"Chưa hoàn thành";
		case maSP: 
			return cd.getSanPham().getMaSP();			
		default:
			break;
		}
		return null;
	}
	
	public void setList(List<CongDoan> list) {
		this.list = list;
	}
	
	
	
}
