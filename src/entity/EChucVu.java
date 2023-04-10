package entity;

public enum EChucVu {
	NV_KETOAN("Nhân viên kế toán"), NV_MARKETING("Nhân viên marketing"), NV_IT("Nhân viên IT"),
	NV_CSKH("Nhân viên chăm sóc khách hàng"), NV_NHANSU("Nhân viên nhân sự");

	private final String chucVu;

	EChucVu(String cv) {
		this.chucVu = cv;
	}
	public String layChucVu() {
		return chucVu;
	}
	 
}
