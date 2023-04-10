package model;

import java.sql.Date;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.swing.table.AbstractTableModel;

import entity.NhanVienHanhChanh;

public class TableModel_NhanVienHanhChanh_SieuRutGon extends AbstractTableModel{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private static final int tenNVHC = 0;
	private static final int gioiTinh = 1;
	private static final int ngaySinh = 2;
	private static final int chucVu = 3;
	private List<NhanVienHanhChanh> list;
	private String[] headLine;
	
	public TableModel_NhanVienHanhChanh_SieuRutGon(List<NhanVienHanhChanh> list, String[] headLine) {
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
		case tenNVHC: 
			return nv.getTenNVHC();
		case gioiTinh: 
			return nv.isGioiTinh()==true?"Nữ":"Nam";
		case ngaySinh:
			if(nv.getNgaySinh()==null)
				return "NaN";
			return new SimpleDateFormat("dd/MM/yyyy").format(Date.valueOf(nv.getNgaySinh()));
		case chucVu:
			if(nv.getChucVu()==null)
				return "NaN";
			return nv.getChucVu().layChucVu();
		default:
			break;
		}
		return null;
	}
	
	@Override
	public Class<?> getColumnClass(int columnIndex) {
		if(ngaySinh == columnIndex)
			return Integer.class;
		return String.class;
	}
	
		
	public void setList(List<NhanVienHanhChanh> list) {
		this.list = list;
	}
}

	
