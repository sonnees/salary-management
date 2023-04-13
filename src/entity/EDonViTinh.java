package entity;

public enum EDonViTinh {
	CHAI("Chai"), LOC("Lốc"), THUNG("Thùng"), CHIEC("Chiếc"), DOI("Đôi"), CAI("Cái");

	private final String donViTinh;

	private EDonViTinh(String dvt) {
		this.donViTinh = dvt;
	}

	public String layDonViTinh() {
		return donViTinh;
	}
}
