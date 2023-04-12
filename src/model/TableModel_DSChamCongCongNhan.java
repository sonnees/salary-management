package model;

import java.sql.Date;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.swing.table.AbstractTableModel;

import entity.CongNhan;
import entity.PhieuChamCongCN;
import entity.PhieuPhanCong;

public class TableModel_DSChamCongCongNhan extends AbstractTableModel {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private static final int maPCC=0;
	private static final int maCN = 1;
	private static final int tenCN = 2;
	private static final int caLamViec = 3;
	private static final int sanPham = 4;
	private static final int congDoan = 5;
	private static final int soLuong=6;
	private static final int ngayCham=7;
	private List<PhieuChamCongCN> list;
	private String[] headLine;

	public TableModel_DSChamCongCongNhan(List<PhieuChamCongCN> list, String[] headLine) {
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
		PhieuChamCongCN p = list.get(rowIndex);
		switch (columnIndex) {
		case maPCC:
			return p.getMaPCCCN();
		case maCN:
			return p.getPhieuPhanCong().getCongNhan().getMaCN();
		case tenCN:
			return p.getPhieuPhanCong().getCongNhan().getTenCN();
		case caLamViec:
			return p.getPhieuPhanCong().getCaLamViec().layTenCa();
		case sanPham:
			return p.getPhieuPhanCong().getCongDoan().getSanPham().getTenSP();
		case congDoan:
			return p.getPhieuPhanCong().getCongDoan().getTenCD();
		case soLuong:
			return p.getSoLuong();
		case ngayCham:
			if (p.getPhieuPhanCong().getNgayPhan() == null)
				return "NaN";
			return new SimpleDateFormat("dd/MM/yyyy").format(Date.valueOf(p.getPhieuPhanCong().getNgayPhan()));
		default:
			break;
		}
		return null;
	}
	

	@Override
	public Class<?> getColumnClass(int columnIndex) {
		if (ngayCham == columnIndex)
			return Integer.class;
		return String.class;
	}

	public void setList(List<PhieuChamCongCN> list) {
		this.list = list;
	}
}
