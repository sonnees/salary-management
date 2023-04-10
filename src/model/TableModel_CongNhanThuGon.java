package model;

import java.sql.Date;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.swing.table.AbstractTableModel;

import entity.CongNhan;

public class TableModel_CongNhanThuGon extends AbstractTableModel {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private static final int maCN = 0;
	private static final int tenCN = 1;
	private static final int gioiTinh = 2;
	private static final int tenPB = 3;
	private List<CongNhan> list;
	private String[] headLine;

	public TableModel_CongNhanThuGon(List<CongNhan> list, String[] headLine) {
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
		CongNhan cn = list.get(rowIndex);

		switch (columnIndex) {
		case maCN:
			return cn.getMaCN();
		case tenCN:
			return cn.getTenCN();
		case gioiTinh:
			return cn.isGioiTinh() == true ? "Nữ" : "Nam";
		case tenPB:
			return cn.getPhongBan().getTenPB();
		default:
			break;
		}
		return null;
	}

	@Override
	public Class<?> getColumnClass(int columnIndex) {
		return String.class;
	}

	public void setList(List<CongNhan> list) {
		this.list = list;
	}
}
