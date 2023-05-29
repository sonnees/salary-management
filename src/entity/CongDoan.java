package entity;

public class CongDoan {
	private String maCD;
	private String tenCD;
	private int doUuTien;
	private long donGia;
	private int soLuong;
	private SanPham sanPham;
	private boolean hoanThanh;

	

	public CongDoan(String maCD, String tenCD, int doUuTien, long donGia, int soLuong, SanPham sanPham,
			boolean hoanThanh) {
		super();
		this.maCD = maCD;
		this.tenCD = tenCD;
		this.doUuTien = doUuTien;
		this.donGia = donGia;
		this.soLuong = soLuong;
		this.sanPham = sanPham;
		this.hoanThanh = hoanThanh;
	}
	
	

	public CongDoan(String tenCD, int doUuTien, long donGia, int soLuong, SanPham sanPham, boolean hoanThanh) {
		super();
		this.tenCD = tenCD;
		this.doUuTien = doUuTien;
		this.donGia = donGia;
		this.soLuong = soLuong;
		this.sanPham = sanPham;
		this.hoanThanh = hoanThanh;
	}



	public CongDoan() {
		super();
		// TODO Auto-generated constructor stub
	}

	public String getMaCD() {
		return maCD;
	}

	
	public String getTenCD() {
		return tenCD;
	}

	public void setTenCD(String tenCD) {
		if(tenCD==null)
			System.err.println("Tên công đoạn không được để trống");
		this.tenCD = tenCD;
	}

	public int getDoUuTien() {
		return doUuTien;
	}

	public void setDoUuTien(int doUuTien) {
		if(doUuTien <=0)
			System.err.println("Độ ưu tiên không được <=0");
		this.doUuTien = doUuTien;
	}

	public long getDonGia() {
		return donGia;
	}

	public void setDonGia(long donGia) {
		if(donGia<=0)
			System.err.println("Đơn giá không được <=0");
		this.donGia = donGia;
	}

	public int getSoLuong() {
		return soLuong;
	}

	public void setSoLuong(int soLuong) {
		if(soLuong<=0)
			System.err.println("Số lượng không được <=0");
		this.soLuong = soLuong;
	}

	public SanPham getSanPham() {
		return sanPham;
	}

	public void setSanPham(SanPham sanPham) {
		if(sanPham==null)
			System.err.println("Sản phẩm không được để trống");
		this.sanPham = sanPham;
	}

	
	public boolean isHoanThanh() {
		return hoanThanh;
	}

	public void setHoanThanh(boolean hoanThanh) {
		this.hoanThanh = hoanThanh;
	}

	@Override
	public String toString() {
		return "CongDoan [maCD=" + maCD + ", tenCD=" + tenCD + ", doUuTien=" + doUuTien + ", donGia=" + donGia
				+ ", soLuong=" + soLuong + ", sanPham=" + sanPham + ", hoanThanh=" + hoanThanh + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((maCD == null) ? 0 : maCD.hashCode());
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
		CongDoan other = (CongDoan) obj;
		if (maCD == null) {
			if (other.maCD != null)
				return false;
		} else if (!maCD.equals(other.maCD))
			return false;
		return true;
	}
	public void setMaCD(String maCD) {
		this.maCD = maCD;
	}
	
}
