package entity;

public enum ETiengAnh {
	YEU("Mức yếu"), KHA("Mức khá"), GIOI("Mức giỏi");

	private final String tiengAnh;

	private ETiengAnh(String ta) {
		this.tiengAnh = ta;
	}

	public String layTiengAnh() {
		return tiengAnh;
	}
}
