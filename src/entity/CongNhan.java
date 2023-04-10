package entity;

import java.time.LocalDate;
import java.time.Period;

public class CongNhan {
	private String maCN;
	private String tenCN;
	private boolean gioiTinh=true;
	private LocalDate ngaySinh;
	private String diaChi;
	private String soDienThoai;
	private PhongBan phongBan;

	

	public String getMaCN() {
		return maCN;
	}

	
	public void setMaCN(String maCN) {
		this.maCN = maCN;
	}


	public String getTenCN() {
		return tenCN;
	}

	public void setTenCN(String tenCN) {
		if(tenCN==null)
			System.err.println("Tên công nhân không được để trống");
		this.tenCN = tenCN;
	}

	public boolean isGioiTinh() {
		return gioiTinh;
	}

	public void setGioiTinh(boolean gioiTinh) {
		this.gioiTinh = gioiTinh;
	}

	public LocalDate getNgaySinh() {
		return ngaySinh;
	}

	public void setNgaySinh(LocalDate ngaySinh) {
		LocalDate today = LocalDate.now();
		if(Period.between(ngaySinh, today).getYears()<18)
			System.err.println("Ngày sinh không thỏa mãn điều kiện có độ tuổi lớn hơn 18");
		this.ngaySinh = ngaySinh;
	}

	public String getDiaChi() {
		return diaChi;
	}

	public void setDiaChi(String diaChi) {
		if(diaChi==null)
			System.err.println("Địa chỉ không được để trống");
		this.diaChi = diaChi;
	}

	public String getSoDienThoai() {
		return soDienThoai;
	}

	public void setSoDienThoai(String soDienThoai) {
		String phonePattern = "^(0|\\+84)(\\s|\\.)?((3[2-9])|(5[689])|(7[06-9])|(8[1-689])|(9[0-46-9]))(\\d)(\\s|\\.)?(\\d{3})(\\s|\\.)?(\\d{3})$";
		boolean flag=soDienThoai.matches(phonePattern);
		if(!flag)
			System.err.println("Số điện thoại không đúng định dạng");
		this.soDienThoai = soDienThoai;
	}

	public PhongBan getPhongBan() {
		return phongBan;
	}

	public void setPhongBan(PhongBan phongBan) {
		if(phongBan==null)
			System.err.println("Phòng ban không được để trống");
		this.phongBan = phongBan;
	}

	public CongNhan( String tenCN, boolean gioiTinh, LocalDate ngaySinh, String diaChi, String soDienThoai,
			PhongBan phongBan) {
		super();
		this.tenCN = tenCN;
		this.gioiTinh = gioiTinh;
		this.ngaySinh = ngaySinh;
		this.diaChi = diaChi;
		this.soDienThoai = soDienThoai;
		this.phongBan = phongBan;
	}

	public CongNhan(String maCN, String tenCN, boolean gioiTinh, LocalDate ngaySinh, String diaChi, String soDienThoai,
			PhongBan phongBan) {
		super();
		this.maCN = maCN;
		this.tenCN = tenCN;
		this.gioiTinh = gioiTinh;
		this.ngaySinh = ngaySinh;
		this.diaChi = diaChi;
		this.soDienThoai = soDienThoai;
		this.phongBan = phongBan;
	}


	public CongNhan() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		String g="";
		if(isGioiTinh() ==false)
			g="Nam";
		else g="Nữ";

		return "CongNhan [maCN=" + maCN + ", tenCN=" + tenCN + ", gioiTinh=" + g + ", ngaySinh=" + ngaySinh
				+ ", diaChi=" + diaChi + ", soDienThoai=" + soDienThoai + ", phongBan=" + phongBan + "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((maCN == null) ? 0 : maCN.hashCode());
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
		CongNhan other = (CongNhan) obj;
		if (maCN == null) {
			if (other.maCN != null)
				return false;
		} else if (!maCN.equals(other.maCN))
			return false;
		return true;
	}
	
}
