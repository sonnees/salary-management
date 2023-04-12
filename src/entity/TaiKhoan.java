package entity;

public class TaiKhoan {
	private String gmail;
	private String matKhau;
	private String vaiTro;
	private NhanVienHanhChanh nvhc;

	public TaiKhoan() {
		super();
	}

	public TaiKhoan(String gmail, String matKhau, String vaiTro, NhanVienHanhChanh nvhc) {
		super();
		this.gmail = gmail;
		this.matKhau = matKhau;
		this.vaiTro = vaiTro;
		this.nvhc = nvhc;
	}

	public String getGmail() {
		return gmail;
	}

	public void setGmail(String gmail) {
		this.gmail = gmail;
	}

	public String getMatKhau() {
		return matKhau;
	}

	public void setMatKhau(String matKhau) {
		this.matKhau = matKhau;
	}

	public String getVaiTro() {
		return vaiTro;
	}

	public void setVaiTro(String vaiTro) {
		this.vaiTro = vaiTro;
	}

	public NhanVienHanhChanh getNvhc() {
		return nvhc;
	}

	public void setNvhc(NhanVienHanhChanh nvhc) {
		this.nvhc = nvhc;
	}

	@Override
	public String toString() {
		return "TaiKhoan [gmail=" + gmail + ", matKhau=" + matKhau + ", vaiTro=" + vaiTro + ", nvhc=" + nvhc + "]";
	}

	
}
