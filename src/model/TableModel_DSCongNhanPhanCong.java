package model;

import java.sql.Date;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.swing.table.AbstractTableModel;

import entity.CongNhan;
import entity.PhieuChamCongCN;
import entity.PhieuPhanCong;

public class TableModel_DSCongNhanPhanCong extends AbstractTableModel {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private static final int maCN = 0;
	private static final int tenCN = 1;
	private static final int caLamViec = 2;
	private static final int sanPham = 3;
	private static final int congDoan = 4;
	private static final int ngayPhanCong = 5;
	private List<PhieuPhanCong> list;
	private String[] headLine;

	public TableModel_DSCongNhanPhanCong(List<PhieuPhanCong> list, String[] headLine) {
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
		PhieuPhanCong p = list.get(rowIndex);
		switch (columnIndex) {
		case maCN:
			return p.getCongNhan().getMaCN();
		case tenCN:
			return p.getCongNhan().getTenCN();
		case caLamViec:
			return p.getCaLamViec().layThoiGian();
		case sanPham:
			return p.getCongDoan().getSanPham().getTenSP();
		case congDoan:
			return p.getCongDoan().getTenCD();
		case ngayPhanCong:
			if (p.getNgayPhan() == null)
				return "NaN";
			return new SimpleDateFormat("dd/MM/yyyy").format(Date.valueOf(p.getNgayPhan()));

		default:
			break;
		}
		return null;
	}

	@Override
	public Class<?> getColumnClass(int columnIndex) {
		if (ngayPhanCong == columnIndex)
			return Integer.class;
		return String.class;
	}

	public void setList(List<PhieuPhanCong> list) {
		this.list = list;
	}
}
