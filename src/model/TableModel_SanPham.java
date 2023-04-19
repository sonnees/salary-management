package model;

import java.sql.Date;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.swing.table.AbstractTableModel;

import entity.NhanVienHanhChanh;
import entity.PhongBan;
import entity.SanPham;

public class TableModel_SanPham extends AbstractTableModel{
	private static final long serialVersionUID = 1L;
	private static final int maSP = 0;
	private static final int tenSP = 1;
	private static final int donViTinh= 2;
	private static final int soLuong = 3;
	private static final int ngayBatDau = 4;
	private static final int ngayKetThuc = 5;
	private static final int hoanThanh = 6;
	private List<SanPham> list;
	private String[] headLine;
	
	
	public TableModel_SanPham(List<SanPham> list, String[] headLine) {
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
	public Object getValueAt(int rowIndex, int columnIndex) {
		SanPham sp = list.get(rowIndex);
		
		switch (columnIndex) {
		case maSP: 
			return sp.getMaSP();
		case tenSP: 
			return sp.getTenSP();
		case donViTinh: 
			return sp.getDonViTinh().layDonViTinh();
		case soLuong:
			return sp.getSoLuong();
		case ngayBatDau: 
			return new SimpleDateFormat("dd/MM/yyyy").format(Date.valueOf(sp.getNgayBatDau()));
		case ngayKetThuc: 
			return new SimpleDateFormat("dd/MM/yyyy").format(Date.valueOf(sp.getNgayKetThuc()));
		case hoanThanh:
			return sp.isHoanThanh();				
		default:
			break;
		}		return null;
	}
	
	public void setList(List<SanPham> list) {
		this.list = list;
	}	
}
