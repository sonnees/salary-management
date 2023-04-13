package entity;

import java.time.LocalDate;

public class SanPham {
	private String maSP;
	private String tenSP;
	private EDonViTinh donViTinh;
	private int soLuong;
	private LocalDate ngayBatDau;
	private LocalDate ngayKetThuc;
	private boolean hoanThanh;
	
	public SanPham() {
		super();
	}

	public SanPham(String tenSP, EDonViTinh donViTinh, int soLuong, LocalDate ngayBatDau, LocalDate ngayKetThuc,
			boolean hoanThanh) {
		super();
		this.tenSP = tenSP;
		this.donViTinh = donViTinh;
		this.soLuong = soLuong;
		this.ngayBatDau = ngayBatDau;
		this.ngayKetThuc = ngayKetThuc;
		this.hoanThanh = hoanThanh;
	}

	public SanPham(String maSP, String tenSP, EDonViTinh donViTinh, int soLuong, LocalDate ngayBatDau,
			LocalDate ngayKetThuc, boolean hoanThanh) {
		super();
		this.maSP = maSP;
		this.tenSP = tenSP;
		this.donViTinh = donViTinh;
		this.soLuong = soLuong;
		this.ngayBatDau = ngayBatDau;
		this.ngayKetThuc = ngayKetThuc;
		this.hoanThanh = hoanThanh;
	}


	public String getMaSP() {
		return maSP;
	}
	
	public String getTenSP() {
		return tenSP;
	}
	public void setTenSP(String tenSP) {
		if(tenSP==null)
			System.err.println("Tên sản phẩm không được để trống");
		this.tenSP = tenSP;
	}
	public EDonViTinh getDonViTinh() {
		return donViTinh;
	}
	public void setDonViTinh(EDonViTinh donViTinh) {
		this.donViTinh = donViTinh;
	}
	public int getSoLuong() {
		return soLuong;
	}
	public void setSoLuong(int soLuong) {
		if(soLuong<=0)
			System.err.println("Số lượng không được <=0");
		this.soLuong = soLuong;
	}
	public LocalDate getNgayBatDau() {
		return ngayBatDau;
	}
	public void setNgayBatDau(LocalDate ngayBatDau) {
		this.ngayBatDau = ngayBatDau;
	}
	public LocalDate getNgayKetThuc() {
		return ngayKetThuc;
	}
	public void setNgayKetThuc(LocalDate ngayKetThuc) {
		if(ngayKetThuc.isBefore(ngayBatDau))
			System.out.println("Ngày kết thúc không được trước ngày bắt đầu");
		this.ngayKetThuc = ngayKetThuc;
	}
	@Override
	public String toString() {
		return "SanPham [maSP=" + maSP + ", tenSP=" + tenSP + ", donViTinh=" + donViTinh.layDonViTinh() + ", soLuong=" + soLuong
				+ ", ngayBatDau=" + ngayBatDau + ", ngayKetThuc=" + ngayKetThuc + "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((maSP == null) ? 0 : maSP.hashCode());
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
		SanPham other = (SanPham) obj;
		if (maSP == null) {
			if (other.maSP != null)
				return false;
		} else if (!maSP.equals(other.maSP))
			return false;
		return true;
	}
	public boolean isHoanThanh() {
		return hoanThanh;
	}
	public void setHoanThanh(boolean hoanThanh) {
		this.hoanThanh = hoanThanh;
	}

	public void setMaSP(String maSP) {
		this.maSP = maSP;
	}
	
}
