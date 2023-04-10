package entity;

import java.sql.Time;

public class CaLamViec {
	private String maCLV;
	private Time thoiGianBatDau;
	private Time thoiGianKetThuc;
	private float heSo;

	public CaLamViec() {
		super();
		// TODO Auto-generated constructor stub
	}

	public CaLamViec(String maCLV, Time thoiGianBatDau, Time thoiGianKetThuc, float heSo) {
		super();
		this.maCLV = maCLV;
		this.thoiGianBatDau = thoiGianBatDau;
		this.thoiGianKetThuc = thoiGianKetThuc;
		this.heSo = heSo;
	}

	public String getMaCLV() {
		return maCLV;
	}

	public Time getThoiGianBatDau() {
		return thoiGianBatDau;
	}

	public void setThoiGianBatDau(Time thoiGianBatDau) {
		if (thoiGianBatDau == null)
			System.err.println("Thời gian bắt đầu không được để trống");
		this.thoiGianBatDau = thoiGianBatDau;
	}

	public Time getThoiGianKetThuc() {
		return thoiGianKetThuc;
	}

	public void setThoiGianKetThuc(Time thoiGianKetThuc) {
		if (thoiGianKetThuc == null || thoiGianKetThuc.before(thoiGianBatDau))
			System.err.println("Thời gian kết thúc lỗi do để trống hoặc trước thời gian bắt đầu");
		this.thoiGianKetThuc = thoiGianKetThuc;
	}

	public float getHeSo() {
		return heSo;
	}

	public void setHeSo(float heSo) {
		if (heSo <= 0)
			System.err.println("Hệ số không là 0 hoặc là số âm");
		this.heSo = heSo;
	}

	public String layThoiGian() {
		return "" + thoiGianBatDau + " -> " + thoiGianKetThuc;
	}

	@Override
	public String toString() {
		return "CaLamViec [maCLV=" + maCLV + ", thoiGianBatDau=" + thoiGianBatDau + ", thoiGianKetThuc="
				+ thoiGianKetThuc + ", heSo=" + heSo + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((maCLV == null) ? 0 : maCLV.hashCode());
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
		CaLamViec other = (CaLamViec) obj;
		if (maCLV == null) {
			if (other.maCLV != null)
				return false;
		} else if (!maCLV.equals(other.maCLV))
			return false;
		return true;
	}

}
