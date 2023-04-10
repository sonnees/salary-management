package entity;

import java.time.LocalDate;
import java.util.Date;

public class PhieuChamCongNVHC {
	private String maPCCNCHC;
	private boolean tangCa;
	private LocalDate ngayCham;
	private ETrangThai trangThai;
	private String lyDo;
	private NhanVienHanhChanh NVHC;

	public PhieuChamCongNVHC() {
		// TODO Auto-generated constructor stub
	}

	public PhieuChamCongNVHC(String maPCCNCHC, boolean tangCa, LocalDate ngayCham, ETrangThai trangThai, String lyDo,
			NhanVienHanhChanh NVHC) {
		super();
		this.maPCCNCHC = maPCCNCHC;
		this.tangCa = tangCa;
		this.ngayCham = ngayCham;
		this.trangThai = trangThai;
		this.lyDo = lyDo;
		this.NVHC = NVHC;
	}
	public PhieuChamCongNVHC(boolean tangCa, LocalDate ngayCham, ETrangThai trangThai, String lyDo,
			NhanVienHanhChanh NVHC) {
		super();
		this.tangCa = tangCa;
		this.ngayCham = ngayCham;
		this.trangThai = trangThai;
		this.lyDo = lyDo;
		this.NVHC = NVHC;
	}

	public String getMaPCCNCHC() {
		return maPCCNCHC;
	}

	public void setMaPCCNCHC(String maPCCNCHC) {
		this.maPCCNCHC = maPCCNCHC;
	}

	public boolean isTangCa() {
		return tangCa;
	}

	public void setTangCa(boolean tangCa) {
		this.tangCa = tangCa;
	}

	public LocalDate getNgayCham() {
		return ngayCham;
	}

	public void setNgayCham(LocalDate ngayCham) {
		this.ngayCham = ngayCham;
	}

	public ETrangThai getTrangThai() {
		return trangThai;
	}

	public void setTrangThai(ETrangThai trangThai) {
		this.trangThai = trangThai;
	}

	public String getLyDo() {
		return lyDo;
	}

	public void setLyDo(String lyDo) {
		this.lyDo = lyDo;
	}

	public NhanVienHanhChanh getNVHC() {
		return NVHC;
	}

	public void setNVHC(NhanVienHanhChanh nVHC) {
		NVHC = nVHC;
	}

	@Override
	public String toString() {
		return "PhieuChamCongNVHC [maPCCNCHC=" + maPCCNCHC + ", tangCa=" + tangCa + ", ngayCham=" + ngayCham
				+ ", trangThai=" + trangThai + ", lyDo=" + lyDo + ", NVHC=" + NVHC + "]";
	}
	
}
