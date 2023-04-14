package entity;

public class LuongNVHC {
	private String maLuongNVHC;
	private NhanVienHanhChanh nvhc;
	private String luongThang;
	private long luongCoBan;
	private long luongNgay;
	private int soNgayDiLam;
	private int soNgayNghiCoPhep;
	private int soNgayNghiKhongPhep;
	private int soNgayTangCa;
	private int soNgayLamChuNhat;
	private int soNgayDuocTinhLuong;
	private long tongLuongCoBan;
	private long tongLuongThem;
	private long thanhLuong;
	public LuongNVHC(NhanVienHanhChanh nvhc, String luongThang, long luongCoBan, long luongNgay, int soNgayDiLam,
			int soNgayNghiCoPhep, int soNgayNghiKhongPhep, int soNgayTangCa, int soNgayLamChuNhat,
			int soNgayDuocTinhLuong, long tongLuongCoBan, long tongLuongThem, long thanhLuong) {
		super();
		this.nvhc = nvhc;
		this.luongThang = luongThang;
		this.luongCoBan = luongCoBan;
		this.luongNgay = luongNgay;
		this.soNgayDiLam = soNgayDiLam;
		this.soNgayNghiCoPhep = soNgayNghiCoPhep;
		this.soNgayNghiKhongPhep = soNgayNghiKhongPhep;
		this.soNgayTangCa = soNgayTangCa;
		this.soNgayLamChuNhat = soNgayLamChuNhat;
		this.soNgayDuocTinhLuong = soNgayDuocTinhLuong;
		this.tongLuongCoBan = tongLuongCoBan;
		this.tongLuongThem = tongLuongThem;
		this.thanhLuong = thanhLuong;
	}
	public LuongNVHC(String maLuongNVHC, NhanVienHanhChanh nvhc, String luongThang, long luongCoBan, long luongNgay,
			int soNgayDiLam, int soNgayNghiCoPhep, int soNgayNghiKhongPhep, int soNgayTangCa, int soNgayLamChuNhat,
			int soNgayDuocTinhLuong, long tongLuongCoBan, long tongLuongThem, long thanhLuong) {
		super();
		this.maLuongNVHC = maLuongNVHC;
		this.nvhc = nvhc;
		this.luongThang = luongThang;
		this.luongCoBan = luongCoBan;
		this.luongNgay = luongNgay;
		this.soNgayDiLam = soNgayDiLam;
		this.soNgayNghiCoPhep = soNgayNghiCoPhep;
		this.soNgayNghiKhongPhep = soNgayNghiKhongPhep;
		this.soNgayTangCa = soNgayTangCa;
		this.soNgayLamChuNhat = soNgayLamChuNhat;
		this.soNgayDuocTinhLuong = soNgayDuocTinhLuong;
		this.tongLuongCoBan = tongLuongCoBan;
		this.tongLuongThem = tongLuongThem;
		this.thanhLuong = thanhLuong;
	}
	public String getMaLuongNVHC() {
		return maLuongNVHC;
	}
	public void setMaLuongNVHC(String maLuongNVHC) {
		this.maLuongNVHC = maLuongNVHC;
	}
	public NhanVienHanhChanh getNvhc() {
		return nvhc;
	}
	public void setNvhc(NhanVienHanhChanh nvhc) {
		this.nvhc = nvhc;
	}
	public String getLuongThang() {
		return luongThang;
	}
	public void setLuongThang(String luongThang) {
		this.luongThang = luongThang;
	}
	public long getLuongCoBan() {
		return luongCoBan;
	}
	public void setLuongCoBan(long luongCoBan) {
		this.luongCoBan = luongCoBan;
	}
	public long getLuongNgay() {
		return luongNgay;
	}
	public void setLuongNgay(long luongNgay) {
		this.luongNgay = luongNgay;
	}
	public int getsoNgayDiLam() {
		return soNgayDiLam;
	}
	public void setsoNgayDiLam(int soNgayDiLam) {
		this.soNgayDiLam = soNgayDiLam;
	}
	public int getSoNgayNghiCoPhep() {
		return soNgayNghiCoPhep;
	}
	public void setSoNgayNghiCoPhep(int soNgayNghiCoPhep) {
		this.soNgayNghiCoPhep = soNgayNghiCoPhep;
	}
	public int getSoNgayNghiKhongPhep() {
		return soNgayNghiKhongPhep;
	}
	public void setSoNgayNghiKhongPhep(int soNgayNghiKhongPhep) {
		this.soNgayNghiKhongPhep = soNgayNghiKhongPhep;
	}
	public int getSoNgayTangCa() {
		return soNgayTangCa;
	}
	public void setSoNgayTangCa(int soNgayTangCa) {
		this.soNgayTangCa = soNgayTangCa;
	}
	public int getSoNgayLamChuNhat() {
		return soNgayLamChuNhat;
	}
	public void setSoNgayLamChuNhat(int soNgayLamChuNhat) {
		this.soNgayLamChuNhat = soNgayLamChuNhat;
	}
	public int getSoNgayDuocTinhLuong() {
		return soNgayDuocTinhLuong;
	}
	public void setSoNgayDuocTinhLuong(int soNgayDuocTinhLuong) {
		this.soNgayDuocTinhLuong = soNgayDuocTinhLuong;
	}
	public long getTongLuongCoBan() {
		return tongLuongCoBan;
	}
	public void setTongLuongCoBan(long tongLuongCoBan) {
		this.tongLuongCoBan = tongLuongCoBan;
	}
	public long getTongLuongThem() {
		return tongLuongThem;
	}
	public void setTongLuongThem(long tongLuongThem) {
		this.tongLuongThem = tongLuongThem;
	}
	public long getThanhLuong() {
		return thanhLuong;
	}
	public void setThanhLuong(long thanhLuong) {
		this.thanhLuong = thanhLuong;
	}
	@Override
	public String toString() {
		return "LuongNVHC [maLuongNVHC=" + maLuongNVHC + ", nvhc=" + nvhc + ", luongThang=" + luongThang
				+ ", luongCoBan=" + luongCoBan + ", luongNgay=" + luongNgay + ", soNgayDiLam=" + soNgayDiLam
				+ ", soNgayNghiCoPhep=" + soNgayNghiCoPhep + ", soNgayNghiKhongPhep=" + soNgayNghiKhongPhep
				+ ", soNgayTangCa=" + soNgayTangCa + ", soNgayLamChuNhat=" + soNgayLamChuNhat + ", soNgayDuocTinhLuong="
				+ soNgayDuocTinhLuong + ", tongLuongCoBan=" + tongLuongCoBan + ", tongLuongThem=" + tongLuongThem
				+ ", thanhLuong=" + thanhLuong + "]";
	}
	
}
