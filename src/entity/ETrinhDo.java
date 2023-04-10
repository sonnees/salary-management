package entity;

public enum ETrinhDo {
	DUOIDAIHOC("Dưới Đại học"), TRENDAIHOC("Trên Đại học"), DAIHOC("Đại học");

	private final String trinhDo;

	private ETrinhDo(String td) {
		this.trinhDo = td;
	}

	public String layTrinhDo() {
		return trinhDo;
	}
}
