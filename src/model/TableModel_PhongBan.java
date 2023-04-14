package model;

import java.util.List;

import javax.swing.table.AbstractTableModel;

import entity.PhongBan;

public class TableModel_PhongBan extends AbstractTableModel{
	private static final int maPB= 0;
	private static final int tenPB= 1;
	private static final int phanKhu= 2;
	private List<PhongBan> list;
	private String[] headline;
	public TableModel_PhongBan(List<PhongBan> list, String[] headline) {
		super();
		this.list = list;
		this.headline = headline;
	}
	@Override
	public int getRowCount() {
		// TODO Auto-generated method stub
		return list.size();
	}
	@Override
	public int getColumnCount() {
		// TODO Auto-generated method stub
		return headline.length;
	}
	@Override
	public Object getValueAt(int rowIndex, int columnIndex) {
	PhongBan pb = list.get(rowIndex);
	switch (columnIndex) {
	case maPB: {
		return pb.getMaPB();
	}
	case tenPB: {
		return pb.getTenPB();
	}
	case phanKhu:{
		return pb.getPhanKhu();
	}
		
	default:
		break;
	}
		return null;
	}

	public void setList(List<PhongBan> list) {
		this.list = list;
	}
}
