package entity;

public class LuongNVHC {
	private String maLuongNVHC;
	private int thang;
	private int nam;
	private NhanVienHanhChanh nvhc;

	public LuongNVHC() {
		super();
		// TODO Auto-generated constructor stub
	}

	public LuongNVHC(String maLuongNVHC, int thang, int nam, NhanVienHanhChanh nvhc) {
		super();
		this.maLuongNVHC = maLuongNVHC;
		this.thang = thang;
		this.nam = nam;
		this.nvhc = nvhc;
	}

	public String getMaLuongNVHC() {
		return maLuongNVHC;
	}

	public int getThang() {
		return thang;
	}

	public void setThang(int thang) {
		if (thang > 12 || thang < 1)
			System.err.println("Tháng nằm trong khoảng [1-12]");
		this.thang = thang;
	}

	public int getNam() {
		return nam;
	}

	public void setNam(int nam) {
		if (nam <= 1900)
			System.err.println("Năm là số trươc năm 1900");
		this.nam = nam;
	}

	public NhanVienHanhChanh getNvhc() {
		return nvhc;
	}

	public void setNvhc(NhanVienHanhChanh nvhc) {
		this.nvhc = nvhc;
	}

	public long layLuongNVHC() {
		return 0;
	}

	@Override
	public String toString() {
		return "LuongNVHC [maLuongNVHC=" + maLuongNVHC + ", thang=" + thang + ", nam=" + nam + ", nvhc=" + nvhc + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((maLuongNVHC == null) ? 0 : maLuongNVHC.hashCode());
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
		LuongNVHC other = (LuongNVHC) obj;
		if (maLuongNVHC == null) {
			if (other.maLuongNVHC != null)
				return false;
		} else if (!maLuongNVHC.equals(other.maLuongNVHC))
			return false;
		return true;
	}

}
