package model;

import java.sql.Date;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.swing.table.AbstractTableModel;

import entity.NhanVienHanhChanh;
import entity.PhieuChamCongNVHC;

public class TableModel_ChamCongNhanVienHanhChanh extends AbstractTableModel{
	
	private static final int maPCCNVHC = 0;
	private static final int tenNVHC = 1;
	private static final int tangCa = 2;
	private static final int ngayCham = 3;
	private static final int trangThai = 4;
	private static final int lyDo = 5;
	private List<PhieuChamCongNVHC> list;
	private String[] headLine;
	
	public TableModel_ChamCongNhanVienHanhChanh(List<PhieuChamCongNVHC> list, String[] headLine) {
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
		PhieuChamCongNVHC ppc = list.get(rowIndex);
		
		switch (columnIndex) {
		case maPCCNVHC: 
			return ppc.getMaPCCNCHC();
		case tenNVHC: 
			return ppc.getNVHC().getTenNVHC();
		case tangCa: 
			return ppc.isTangCa();
		case ngayCham: 
			return new SimpleDateFormat("dd/MM/yyyy").format(Date.valueOf(ppc.getNgayCham()));
		case trangThai: 
			return ppc.getTrangThai().layTrangThai();
		case lyDo: 
			return ppc.getLyDo();
					
		default:
			break;
		}
		return null;
	}
	
	@Override
	public Class<?> getColumnClass(int columnIndex) {
		if(ngayCham==columnIndex)
			return  Integer.class;
		if(tangCa == columnIndex)
			return Boolean.class;
		return String.class;
	}
	
	public void setList(List<PhieuChamCongNVHC> list) {
		this.list = list;
	}
}

	
