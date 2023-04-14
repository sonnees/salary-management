package entity;

public class PhongBan {
	private String maPB;
	private String tenPB;
	private String phanKhu;
	
	public PhongBan() {
	}

	public PhongBan(String maPB, String tenPB, String phanKhu) {
		super();
		this.maPB = maPB;
		this.tenPB = tenPB;
		this.phanKhu = phanKhu;
	}

	public String getMaPB() {
		return maPB;
	}

	public void setMaPB(String maPB) {
		this.maPB = maPB;
	}

	public String getTenPB() {
		return tenPB;
	}

	public void setTenPB(String tenPB) {
		this.tenPB = tenPB;
	}

	public String getPhanKhu() {
		return phanKhu;
	}

	public void setPhanKhu(String phanKhu) {
		this.phanKhu = phanKhu;
	}

	@Override
	public String toString() {
		return "PhongBan [maPB=" + maPB + ", tenPB=" + tenPB + ", phanKhu=" + phanKhu + "]";
	}
	

}
