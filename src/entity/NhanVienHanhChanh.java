package entity;

import java.time.LocalDate;
import java.time.Period;

public class NhanVienHanhChanh {
	private String maNVHC;
	private String tenNVHC;
	private boolean gioiTinh;
	private LocalDate ngaySinh;
	private String diaChi;
	private String soDienThoai;
	private LocalDate ngayTGCT;
	private EChucVu chucVu;
	private ETrinhDo trinhDo;
	private ETiengAnh tiengAnh;
	private long luongCoBan;
	private PhongBan phongBan;

	public NhanVienHanhChanh() {
		super();
		// TODO Auto-generated constructor stub
	}

	public NhanVienHanhChanh(String maNVHC, String tenNVHC, boolean gioiTinh, LocalDate ngaySinh, String diaChi,
			String soDienThoai, LocalDate ngayTGCT, EChucVu chucVu, ETrinhDo trinhDo, ETiengAnh tiengAnh,
			long luongCoBan, PhongBan phongBan) {
		super();
		this.maNVHC = maNVHC;
		this.tenNVHC = tenNVHC;
		this.gioiTinh = gioiTinh;
		this.ngaySinh = ngaySinh;
		this.diaChi = diaChi;
		this.soDienThoai = soDienThoai;
		this.ngayTGCT = ngayTGCT;
		this.chucVu = chucVu;
		this.trinhDo = trinhDo;
		this.tiengAnh = tiengAnh;
		this.luongCoBan = luongCoBan;
		this.phongBan = phongBan;
	}

	public NhanVienHanhChanh(String tenNVHC, boolean gioiTinh, LocalDate ngaySinh, String diaChi, String soDienThoai,
			LocalDate ngayTGCT, EChucVu chucVu, ETrinhDo trinhDo, ETiengAnh tiengAnh, long luongCoBan,
			PhongBan phongBan) {
		super();
		this.tenNVHC = tenNVHC;
		this.gioiTinh = gioiTinh;
		this.ngaySinh = ngaySinh;
		this.diaChi = diaChi;
		this.soDienThoai = soDienThoai;
		this.ngayTGCT = ngayTGCT;
		this.chucVu = chucVu;
		this.trinhDo = trinhDo;
		this.tiengAnh = tiengAnh;
		this.luongCoBan = luongCoBan;
		this.phongBan = phongBan;
	}
	public String getMaNVHC() {
		return maNVHC;
	}

	public String getTenNVHC() {
		return tenNVHC;
	}

	public void setTenNVHC(String tenNVHC) {
		this.tenNVHC = tenNVHC;
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
		this.ngaySinh = ngaySinh;
	}

	public String getDiaChi() {
		return diaChi;
	}

	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}

	public String getSoDienThoai() {
		return soDienThoai;
	}

	public void setSoDienThoai(String soDienThoai) {
		this.soDienThoai = soDienThoai;
	}

	public LocalDate getNgayTGCT() {
		return ngayTGCT;
	}

	public void setNgayTGCT(LocalDate ngayTGCT) {
		this.ngayTGCT = ngayTGCT;
	}

	public EChucVu getChucVu() {
		return chucVu;
	}

	public void setChucVu(EChucVu chucVu) {
		this.chucVu = chucVu;
	}

	public ETrinhDo getTrinhDo() {
		return trinhDo;
	}

	public void setTrinhDo(ETrinhDo trinhDo) {
		this.trinhDo = trinhDo;
	}

	public ETiengAnh getTiengAnh() {
		return tiengAnh;
	}

	public void setTiengAnh(ETiengAnh tiengAnh) {
		this.tiengAnh = tiengAnh;
	}

	public long getLuongCoBan() {
		return luongCoBan;
	}

	public void setLuongCoBan(long luongCoBan) {
		this.luongCoBan = luongCoBan;
	}

	public PhongBan getPhongBan() {
		return phongBan;
	}

	public void setPhongBan(PhongBan phongBan) {
		this.phongBan = phongBan;
	}

	public void setMaNVHC(String maNVHC) {
		this.maNVHC = maNVHC;
	}

	@Override
	public String toString() {
		return "NhanVienHanhChanh [maNVHC=" + maNVHC + ", tenNVHC=" + tenNVHC + ", gioiTinh=" + gioiTinh + ", ngaySinh="
				+ ngaySinh + ", diaChi=" + diaChi + ", soDienThoai=" + soDienThoai + ", ngayTGCT=" + ngayTGCT
				+ ", chucVu=" + chucVu + ", trinhDo=" + trinhDo + ", tiengAnh=" + tiengAnh + ", luongCoBan="
				+ luongCoBan + ", phongBan=" + phongBan + "]";
	}
	
}
