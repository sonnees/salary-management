package entity;

import java.time.LocalDate;
import java.util.Date;

public class PhieuPhanCong {
	private String maPPC;
	private LocalDate ngayPhan;
	private CongNhan congNhan;
	private CongDoan congDoan;
	private CaLamViec caLamViec;
	public PhieuPhanCong() {
		super();
		// TODO Auto-generated constructor stub
	}
	public PhieuPhanCong(String maPPC, LocalDate ngayPhan, CongNhan congNhan, CongDoan congDoan, CaLamViec caLamViec) {
		super();
		this.maPPC = maPPC;
		this.ngayPhan = ngayPhan;
		this.congNhan = congNhan;
		this.congDoan = congDoan;
		this.caLamViec = caLamViec;
	}
	public String getMaPPC() {
		return maPPC;
	}
	
	public LocalDate getNgayPhan() {
		return ngayPhan;
	}
	public void setNgayPhan(LocalDate ngayPhan) {
		if(ngayPhan.isAfter(LocalDate.now()))
			System.err.println("Ngày phân không được sau ngày hiện tại");
		this.ngayPhan = ngayPhan;
	}
	public CongNhan getCongNhan() {
		return congNhan;
	}
	public void setCongNhan(CongNhan congNhan) {
		if(congNhan==null)
			System.err.println("Công nhân không được để trống");
		this.congNhan = congNhan;
	}
	public CongDoan getCongDoan() {
		return congDoan;
	}
	public void setCongDoan(CongDoan congDoan) {
		if(congDoan==null)
			System.err.println("Công đoạn không được để trống");
		this.congDoan = congDoan;
	}
	public CaLamViec getCaLamViec() {
		return caLamViec;
	}
	public void setCaLamViec(CaLamViec caLamViec) {
		this.caLamViec = caLamViec;
	}
	@Override
	public String toString() {
		return "PhieuPhanCong [maPPC=" + maPPC + ", ngayPhan=" + ngayPhan + ", congNhan=" + congNhan + ", congDoan="
				+ congDoan + ", caLamViec=" + caLamViec + "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((maPPC == null) ? 0 : maPPC.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		PhieuPhanCong other = (PhieuPhanCong) obj;
		if (maPPC == null) {
			if (other.maPPC != null)
				return false;
		} else if (!maPPC.equals(other.maPPC))
			return false;
		return true;
	}
	
}
