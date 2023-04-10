package entity;

public enum ETrangThai {
	COMAT("Có mặt"), VANGPHEP("Vắng có phép"), VANGKHONGPHEP("Vắng không phép");

	private final String trangThai;

	private ETrangThai(String tt) {
		this.trangThai = tt;
	}

	public String layTrangThai() {
		return trangThai;
	}
}
