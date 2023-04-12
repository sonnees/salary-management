package entity;

public class PhieuChamCongCN {
	private String maPCCCN;
	private int soLuong;
	private PhieuPhanCong phieuPhanCong;
	public PhieuChamCongCN() {
		super();
		// TODO Auto-generated constructor stub
	}
	public PhieuChamCongCN(String maPCCCN, int soLuong, PhieuPhanCong phieuPhanCong) {
		super();
		this.maPCCCN = maPCCCN;
		this.soLuong = soLuong;
		this.phieuPhanCong = phieuPhanCong;
	}
	
	public PhieuChamCongCN(int soLuong, PhieuPhanCong phieuPhanCong) {
		super();
		this.soLuong = soLuong;
		this.phieuPhanCong = phieuPhanCong;
	}
	public String getMaPCCCN() {
		return maPCCCN;
	}
	public int getSoLuong() {
		return soLuong;
	}
	public void setSoLuong(int soLuong) {
		if(soLuong<=0)
			System.err.println("Số lượng không được <=0");
		this.soLuong = soLuong;
	}
	public PhieuPhanCong getPhieuPhanCong() {
		return phieuPhanCong;
	}
	public void setPhieuPhanCong(PhieuPhanCong phieuPhanCong) {
		this.phieuPhanCong = phieuPhanCong;
	}
	@Override
	public String toString() {
		return "PhieuChamCongCN [maPCCCN=" + maPCCCN + ", soLuong=" + soLuong + ", phieuPhanCong=" + phieuPhanCong
				+ "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((maPCCCN == null) ? 0 : maPCCCN.hashCode());
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
		PhieuChamCongCN other = (PhieuChamCongCN) obj;
		if (maPCCCN == null) {
			if (other.maPCCCN != null)
				return false;
		} else if (!maPCCCN.equals(other.maPCCCN))
			return false;
		return true;
	}
	
}
