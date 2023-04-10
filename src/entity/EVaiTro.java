package entity;

public enum EVaiTro {
	NV_CHAMCONG("Nhân viên chấm công"), QUANLY("Quản lý");

	private final String vaiTro;

	private EVaiTro(String vt) {
		this.vaiTro = vt;
	}

	public String layVaiTro() {
		return vaiTro;
	}

}
