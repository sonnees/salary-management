package entity;

public class TaiKhoan {
	private String gmaill;
	private String matKhau;
	private EVaiTro vaiTro;
	private NhanVienHanhChanh nvhc;

	public TaiKhoan() {
		super();
		// TODO Auto-generated constructor stub
	}

	public TaiKhoan(String gmaill, String matKhau, EVaiTro vaiTro, NhanVienHanhChanh nvhc) {
		super();
		this.gmaill = gmaill;
		this.matKhau = matKhau;
		this.vaiTro = vaiTro;
		this.nvhc = nvhc;
	}

	public String getGmaill() {
		return gmaill;
	}

	public void setGmaill(String gmaill) {
		String regexPattern = "^(.+)@(\\S+)$";
		boolean flag=gmaill.matches(regexPattern);
		if(!flag)
			System.err.println("Gmail không đúng định dạng");
		this.gmaill = gmaill;
	}

	public String getMatKhau() {
		return matKhau;
	}

	public void setMatKhau(String matKhau) {
		String regexPattern = "((?=.*d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!.#$@_+,?-]).{8,50})";
		boolean flag=matKhau.matches(regexPattern);
		if(!flag)
			System.err.println("Mật khẩu có độ dài từ 6-15 kí tự, có ít nhất 1 kí tự thường, 1 kí tự viết hoa và 1 chữ số, có 1 trong các kí tự đặc biệt sau (! # $ @ _ + , ? . - )");
		this.matKhau = matKhau;
	}

	public EVaiTro getVaiTro() {
		return vaiTro;
	}

	public void setVaiTro(EVaiTro vaiTro) {
		this.vaiTro = vaiTro;
	}

	public NhanVienHanhChanh getNvhc() {
		return nvhc;
	}

	public void setNvhc(NhanVienHanhChanh nvhc) {
		if(nvhc==null)
			System.err.println("Nhân viên hành chánh không được để trống");
		this.nvhc = nvhc;
	}

	@Override
	public String toString() {
		return "TaiKhoan [gmaill=" + gmaill + ", matKhau=" + matKhau + ", vaiTro=" + vaiTro.layVaiTro() + ", nvhc=" + nvhc + "]";
	}

}
