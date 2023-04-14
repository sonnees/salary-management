package entity;

public class PhongBan {
	private String maPB;
	private String tenPB;
	private String phanKhu;

	
	public void setMaPB(String maPB) {
		this.maPB = maPB;
	}

	public String getMaPB() {
		return maPB;
	}

	public String getTenPB() {
		return tenPB;
	}

	public void setTenPB(String tenPB) {
		if(tenPB==null)
			System.err.println("Tên phòng ban không được để trống");
		this.tenPB = tenPB;
	}

	public String getPhanKhu() {
		return phanKhu;
	}

	public void setPhanKhu(String phanKhu) {
		if(phanKhu==null)
			System.err.println("phân khu không được để trống");
		this.phanKhu = phanKhu;
	}

	public PhongBan(String maPB, String tenPB, String phanKhu) {
		super();
		this.maPB = maPB;
		this.tenPB = tenPB;
		this.phanKhu = phanKhu;
	}

	public PhongBan(String tenPB, String phanKhu) {
		super();
		this.tenPB = tenPB;
		this.phanKhu = phanKhu;
	}
	

	public PhongBan() {
		super();
	}

	@Override
	public String toString() {
		return "PhongBan [maPB=" + maPB + ", tenPB=" + tenPB + ", phanKhu=" + phanKhu + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((maPB == null) ? 0 : maPB.hashCode());
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
		PhongBan other = (PhongBan) obj;
		if (maPB == null) {
			if (other.maPB != null)
				return false;
		} else if (!maPB.equals(other.maPB))
			return false;
		return true;
	}

}
