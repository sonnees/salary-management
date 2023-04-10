package entity;

import java.time.LocalDate;

public class LuongCongNhan {
	private String maLuongCN;
	private LocalDate ngayBatDau;
	private LocalDate ngayCham;
	private CongNhan congNhan;

	public LuongCongNhan() {
		super();
		// TODO Auto-generated constructor stub
	}

	public LuongCongNhan(String maLuongCN, LocalDate ngayBatDau, LocalDate ngayCham, CongNhan congNhan) {
		super();
		this.maLuongCN = maLuongCN;
		this.ngayBatDau = ngayBatDau;
		this.ngayCham = ngayCham;
		this.congNhan = congNhan;
	}

	public String getMaLuongCN() {
		return maLuongCN;
	}

	public LocalDate getNgayBatDau() {
		return ngayBatDau;
	}

	public void setNgayBatDau(LocalDate ngayBatDau) {
		LocalDate today = LocalDate.now();
		if (today.isBefore(ngayBatDau))
			System.err.println("Ngày bắt đầu không được sau ngày hiện tại");
		this.ngayBatDau = ngayBatDau;
	}

	public LocalDate getNgayCham() {
		return ngayCham;
	}

	public void setNgayCham(LocalDate ngayCham) {
		LocalDate today = LocalDate.now();
		if (ngayCham.isBefore(ngayBatDau))
			System.err.println("Ngày chấm lương không được sau ngày hiện tại");
		this.ngayCham = ngayCham;
	}

	public CongNhan getCongNhan() {
		return congNhan;
	}

	public void setCongNhan(CongNhan congNhan) {
		this.congNhan = congNhan;
	}

	public long layTienLuong() {
		return 0;
	}

	@Override
	public String toString() {
		return "LuongCongNhan [maLuongCN=" + maLuongCN + ", ngayBatDau=" + ngayBatDau + ", ngayCham=" + ngayCham
				+ ", congNhan=" + congNhan + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((maLuongCN == null) ? 0 : maLuongCN.hashCode());
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
		LuongCongNhan other = (LuongCongNhan) obj;
		if (maLuongCN == null) {
			if (other.maLuongCN != null)
				return false;
		} else if (!maLuongCN.equals(other.maLuongCN))
			return false;
		return true;
	}

}
