create database PhanMemTinhLuong_PTUD

USE [PhanMemTinhLuong_PTUD]
GO
/****** Object:  UserDefinedFunction [dbo].[AUTO_maCD]    Script Date: 16/04/2023 7:49:14 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[AUTO_maCD]()
RETURNS CHAR(10)
AS
BEGIN
	DECLARE @ID CHAR(10)
	IF (SELECT COUNT(maCD) FROM [dbo].[CongDoan]) = 0
		BEGIN
			SET @ID = 'cd_0000000'
		END
	ELSE
		BEGIN
			SELECT @ID = MAX(RIGHT(maCD, 7)) FROM [CongDoan]
			SELECT @ID = CASE
				WHEN @ID >= 0 and @ID < 9 THEN 'cd_000000' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
				WHEN @ID >= 9 and @ID < 99 THEN 'cd_00000' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
				WHEN @ID >= 99 and @ID < 999 THEN 'cd_0000' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
				WHEN @ID >= 999 and @ID < 9999 THEN 'cd_000' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
				WHEN @ID >= 9999 and @ID < 99999 THEN 'cd_00' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
				WHEN @ID >= 99999 and @ID < 999999 THEN 'cd_0' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
				WHEN @ID >= 999999 THEN 'cd_' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			END
		END
	RETURN @ID
END
GO
/****** Object:  UserDefinedFunction [dbo].[AUTO_maCLV]    Script Date: 16/04/2023 7:49:14 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[AUTO_maCLV]()
RETURNS CHAR(11)
AS
BEGIN
	DECLARE @ID CHAR(11)
	IF (SELECT COUNT(maCLV) FROM [dbo].[CaLamViec]) = 0
		BEGIN
			SET @ID = 'clv_0000000'
		END
	ELSE
		BEGIN
			SELECT @ID = MAX(RIGHT(maCLV, 7)) FROM [CaLamViec]
			SELECT @ID = CASE
				WHEN @ID >= 0 and @ID < 9 THEN 'clv_000000' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
				WHEN @ID >= 9 and @ID < 99 THEN 'clv_00000' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
				WHEN @ID >= 99 and @ID < 999 THEN 'clv_0000' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
				WHEN @ID >= 999 and @ID < 9999 THEN 'clv_000' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
				WHEN @ID >= 9999 and @ID < 99999 THEN 'clv_00' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
				WHEN @ID >= 99999 and @ID < 999999 THEN 'clv_0' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
				WHEN @ID >= 999999 THEN 'clv_' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			END
		END
	RETURN @ID
END
GO
/****** Object:  UserDefinedFunction [dbo].[AUTO_maCN]    Script Date: 16/04/2023 7:49:14 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[AUTO_maCN]()
RETURNS CHAR(10)
AS
BEGIN
	DECLARE @ID CHAR(10)
	IF (SELECT COUNT(maCN) FROM [dbo].[CongNhan]) = 0
		BEGIN
			SET @ID = 'cn_0000000'
		END
	ELSE
		BEGIN
			SELECT @ID = MAX(RIGHT(maCN, 7)) FROM [dbo].[CongNhan]
			SELECT @ID = CASE
				WHEN @ID >= 0 and @ID < 9 THEN 'cn_000000' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
				WHEN @ID >= 9 and @ID < 99 THEN 'cn_00000' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
				WHEN @ID >= 99 and @ID < 999 THEN 'cn_0000' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
				WHEN @ID >= 999 and @ID < 9999 THEN 'cn_000' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
				WHEN @ID >= 9999 and @ID < 99999 THEN 'cn_00' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
				WHEN @ID >= 99999 and @ID < 999999 THEN 'cn_0' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
				WHEN @ID >= 999999 THEN 'cn_' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			END
		END
	RETURN @ID
END
GO
/****** Object:  UserDefinedFunction [dbo].[AUTO_maLuongCN]    Script Date: 16/04/2023 7:49:14 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[AUTO_maLuongCN]()
RETURNS CHAR(11)
AS
BEGIN
	DECLARE @ID CHAR(11)
	IF (SELECT COUNT(maLuongCN) FROM [dbo].[LuongCongNhan]) = 0
		BEGIN
			SET @ID = 'lcn_0000000'
		END
	ELSE
		BEGIN
			SELECT @ID = MAX(RIGHT(maLuongCN, 7)) FROM [dbo].[LuongCongNhan]
			SELECT @ID = CASE
				WHEN @ID >= 0 and @ID < 9 THEN 'lcn_000000' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
				WHEN @ID >= 9 and @ID < 99 THEN 'lcn_00000' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
				WHEN @ID >= 99 and @ID < 999 THEN 'lcn_0000' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
				WHEN @ID >= 999 and @ID < 9999 THEN 'lcn_000' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
				WHEN @ID >= 9999 and @ID < 99999 THEN 'lcn_00' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
				WHEN @ID >= 99999 and @ID < 999999 THEN 'lcn_0' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
				WHEN @ID >= 999999 THEN 'lcn_' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			END
		END
	RETURN @ID
END
GO
/****** Object:  UserDefinedFunction [dbo].[AUTO_maLuongNVHC]    Script Date: 16/04/2023 7:49:14 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[AUTO_maLuongNVHC]()
RETURNS CHAR(13)
AS
BEGIN
	DECLARE @ID CHAR(13)
	IF (SELECT COUNT(maLuongNVHC) FROM [dbo].[LuongNVHC]) = 0
		BEGIN
			SET @ID = 'lnvhc_0000000'
		END
	ELSE
		BEGIN
			SELECT @ID = MAX(RIGHT(maLuongNVHC, 7)) FROM [dbo].[LuongNVHC]
			SELECT @ID = CASE
				WHEN @ID >= 0 and @ID < 9 THEN 'lnvhc_000000' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
				WHEN @ID >= 9 and @ID < 99 THEN 'lnvhc_00000' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
				WHEN @ID >= 99 and @ID < 999 THEN 'lnvhc_0000' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
				WHEN @ID >= 999 and @ID < 9999 THEN 'lnvhc_000' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
				WHEN @ID >= 9999 and @ID < 99999 THEN 'lnvhc_00' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
				WHEN @ID >= 99999 and @ID < 999999 THEN 'lnvhc_0' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
				WHEN @ID >= 999999 THEN 'lnvhc_' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			END
		END
	RETURN @ID
END
GO
/****** Object:  UserDefinedFunction [dbo].[AUTO_maNVHC]    Script Date: 16/04/2023 7:49:14 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[AUTO_maNVHC]()
RETURNS CHAR(12)
AS
BEGIN
	DECLARE @ID CHAR(12)
	IF (SELECT COUNT(maNVHC) FROM [dbo].[NhanVienHanhChach]) = 0
		BEGIN
			SET @ID = 'nvhc_0000000'
		END
	ELSE
		BEGIN
			SELECT @ID = MAX(RIGHT(maNVHC, 7)) FROM [dbo].[NhanVienHanhChach]
			SELECT @ID = CASE
				WHEN @ID >= 0 and @ID < 9 THEN 'nvhc_000000' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
				WHEN @ID >= 9 and @ID < 99 THEN 'nvhc_00000' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
				WHEN @ID >= 99 and @ID < 999 THEN 'nvhc_0000' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
				WHEN @ID >= 999 and @ID < 9999 THEN 'nvhc_000' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
				WHEN @ID >= 9999 and @ID < 99999 THEN 'nvhc_00' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
				WHEN @ID >= 99999 and @ID < 999999 THEN 'nvhc_0' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
				WHEN @ID >= 999999 THEN 'nvhc_' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			END
		END
	RETURN @ID
END
GO
/****** Object:  UserDefinedFunction [dbo].[AUTO_maPB]    Script Date: 16/04/2023 7:49:14 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[AUTO_maPB]()
RETURNS CHAR(10)
AS
BEGIN
	DECLARE @ID CHAR(10)
	IF (SELECT COUNT(maPB) FROM [dbo].[PhongBan]) = 0
		BEGIN
			SET @ID = 'pb_0000000'
		END
	ELSE
		BEGIN
			SELECT @ID = MAX(RIGHT(maPB, 7)) FROM [dbo].[PhongBan]
			SELECT @ID = CASE
				WHEN @ID >= 0 and @ID < 9 THEN 'pb_000000' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
				WHEN @ID >= 9 and @ID < 99 THEN 'pb_00000' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
				WHEN @ID >= 99 and @ID < 999 THEN 'pb_0000' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
				WHEN @ID >= 999 and @ID < 9999 THEN 'pb_000' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
				WHEN @ID >= 9999 and @ID < 99999 THEN 'pb_00' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
				WHEN @ID >= 99999 and @ID < 999999 THEN 'pb_0' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
				WHEN @ID >= 999999 THEN 'pb_' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			END
		END
	RETURN @ID
END
GO
/****** Object:  UserDefinedFunction [dbo].[AUTO_maPCCCN]    Script Date: 16/04/2023 7:49:14 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[AUTO_maPCCCN]()
RETURNS CHAR(13)
AS
BEGIN
	DECLARE @ID CHAR(13)
	IF (SELECT COUNT(maPCCCN) FROM [dbo].[PhieuChamCongCN]) = 0
		BEGIN
			SET @ID = 'pcccn_0000000'
		END
	ELSE
		BEGIN
			SELECT @ID = MAX(RIGHT(maPCCCN, 7)) FROM [dbo].[PhieuChamCongCN]
			SELECT @ID = CASE
				WHEN @ID >= 0 and @ID < 9 THEN 'pcccn_000000' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
				WHEN @ID >= 9 and @ID < 99 THEN 'pcccn_00000' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
				WHEN @ID >= 99 and @ID < 999 THEN 'pcccn_0000' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
				WHEN @ID >= 999 and @ID < 9999 THEN 'pcccn_000' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
				WHEN @ID >= 9999 and @ID < 99999 THEN 'pcccn_00' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
				WHEN @ID >= 99999 and @ID < 999999 THEN 'pcccn_0' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
				WHEN @ID >= 999999 THEN 'pcccn_' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			END
		END
	RETURN @ID
END
GO
/****** Object:  UserDefinedFunction [dbo].[AUTO_maPCCNVHC]    Script Date: 16/04/2023 7:49:14 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[AUTO_maPCCNVHC]()
RETURNS CHAR(15)
AS
BEGIN
	DECLARE @ID CHAR(15)
	IF (SELECT COUNT(maPCCNVHC) FROM [dbo].[PhieuChamCongNVHC]) = 0
		BEGIN
			SET @ID = 'pccnvhc_0000000'
		END
	ELSE
		BEGIN
			SELECT @ID = MAX(RIGHT(maPCCNVHC, 7)) FROM [dbo].[PhieuChamCongNVHC]
			SELECT @ID = CASE
				WHEN @ID >= 0 and @ID < 9 THEN 'pccnvhc_000000' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
				WHEN @ID >= 9 and @ID < 99 THEN 'pccnvhc_00000' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
				WHEN @ID >= 99 and @ID < 999 THEN 'pccnvhc_0000' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
				WHEN @ID >= 999 and @ID < 9999 THEN 'pccnvhc_000' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
				WHEN @ID >= 9999 and @ID < 99999 THEN 'pccnvhc_00' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
				WHEN @ID >= 99999 and @ID < 999999 THEN 'pccnvhc_0' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
				WHEN @ID >= 999999 THEN 'pccnvhc_' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			END
		END
	RETURN @ID
END
GO
/****** Object:  UserDefinedFunction [dbo].[AUTO_maPPC]    Script Date: 16/04/2023 7:49:14 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[AUTO_maPPC]()
RETURNS CHAR(11)
AS
BEGIN
	DECLARE @ID CHAR(11)
	IF (SELECT COUNT(maPPC) FROM [dbo].[PhieuPhanCong]) = 0
		BEGIN
			SET @ID = 'ppc_0000000'
		END
	ELSE
		BEGIN
			SELECT @ID = MAX(RIGHT(maPPC, 7)) FROM [dbo].[PhieuPhanCong]
			SELECT @ID = CASE
				WHEN @ID >= 0 and @ID < 9 THEN 'ppc_000000' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
				WHEN @ID >= 9 and @ID < 99 THEN 'ppc_00000' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
				WHEN @ID >= 99 and @ID < 999 THEN 'ppc_0000' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
				WHEN @ID >= 999 and @ID < 9999 THEN 'ppc_000' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
				WHEN @ID >= 9999 and @ID < 99999 THEN 'ppc_00' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
				WHEN @ID >= 99999 and @ID < 999999 THEN 'ppc_0' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
				WHEN @ID >= 999999 THEN 'ppc_' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			END
		END
	RETURN @ID
END
GO
/****** Object:  UserDefinedFunction [dbo].[AUTO_maSP]    Script Date: 16/04/2023 7:49:14 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[AUTO_maSP]()
RETURNS CHAR(10)
AS
BEGIN
	DECLARE @ID CHAR(10)
	IF (SELECT COUNT(maSP) FROM [dbo].[SanPham]) = 0
		BEGIN
			SET @ID = 'sp_0000000'
		END
	ELSE
		BEGIN
			SELECT @ID = MAX(RIGHT(maSP, 7)) FROM [dbo].[SanPham]
			SELECT @ID = CASE
				WHEN @ID >= 0 and @ID < 9 THEN 'sp_000000' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
				WHEN @ID >= 9 and @ID < 99 THEN 'sp_00000' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
				WHEN @ID >= 99 and @ID < 999 THEN 'sp_0000' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
				WHEN @ID >= 999 and @ID < 9999 THEN 'sp_000' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
				WHEN @ID >= 9999 and @ID < 99999 THEN 'sp_00' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
				WHEN @ID >= 99999 and @ID < 999999 THEN 'sp_0' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
				WHEN @ID >= 999999 THEN 'sp_' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			END
		END
	RETURN @ID
END
GO
/****** Object:  Table [dbo].[CaLamViec]    Script Date: 16/04/2023 7:49:14 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CaLamViec](
	[maCLV] [char](11) NOT NULL,
	[thoiGianBatDau] [time](7) NULL,
	[thoiGianKetThuc] [time](7) NULL,
	[heSo] [float] NULL,
 CONSTRAINT [PK_CaLamViec] PRIMARY KEY CLUSTERED 
(
	[maCLV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CongDoan]    Script Date: 16/04/2023 7:49:14 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CongDoan](
	[maCD] [char](10) NOT NULL,
	[tenCD] [nvarchar](150) NULL,
	[doUuTien] [int] NULL,
	[donGia] [bigint] NULL,
	[soLuong] [bigint] NULL,
	[maSP] [char](10) NULL,
	[hoanThanh] [bit] NULL,
 CONSTRAINT [PK_CongDoan] PRIMARY KEY CLUSTERED 
(
	[maCD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CongNhan]    Script Date: 16/04/2023 7:49:14 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CongNhan](
	[maCN] [char](10) NOT NULL,
	[tenCN] [nvarchar](150) NULL,
	[gioiTinh] [bit] NULL,
	[ngaySinh] [date] NULL,
	[diaChi] [nvarchar](max) NULL,
	[soDienThoai] [char](10) NULL,
	[maPB] [char](10) NULL,
 CONSTRAINT [PK_CongNhan] PRIMARY KEY CLUSTERED 
(
	[maCN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LuongCongNhan]    Script Date: 16/04/2023 7:49:14 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LuongCongNhan](
	[maLuongCN] [char](11) NOT NULL,
	[ngayBatDau] [date] NULL,
	[ngayCham] [date] NULL,
	[tienLuong] [bigint] NULL,
	[maCN] [char](10) NULL,
 CONSTRAINT [PK_LuongCongNhan] PRIMARY KEY CLUSTERED 
(
	[maLuongCN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LuongNVHC]    Script Date: 16/04/2023 7:49:14 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LuongNVHC](
	[maLuongNVHC] [char](13) NOT NULL,
	[maNVHC] [char](12) NOT NULL,
	[luongThang] [varchar](7) NULL,
	[luongCoBan] [bigint] NULL,
	[luongNgay] [bigint] NULL,
	[soNgayDiLam] [int] NULL,
	[soNgayNghiCoPhep] [int] NULL,
	[soNgayNghiKhongPhep] [int] NULL,
	[soNgayTangCa] [int] NULL,
	[soNgayLamChuNhat] [int] NULL,
	[soNgayDuocTinhLuong] [int] NULL,
	[tongLuongCoBan] [bigint] NULL,
	[tongLuongThem] [bigint] NULL,
	[thanhLuong] [bigint] NULL,
 CONSTRAINT [PK_LuongNVHC] PRIMARY KEY CLUSTERED 
(
	[maLuongNVHC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVienHanhChach]    Script Date: 16/04/2023 7:49:14 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVienHanhChach](
	[maNVHC] [char](12) NOT NULL,
	[tenNVHC] [nvarchar](150) NULL,
	[gioiTinh] [bit] NULL,
	[ngaySinh] [date] NULL,
	[diaChi] [nvarchar](max) NULL,
	[soDienThoai] [char](10) NULL,
	[ngayTGCT] [date] NULL,
	[chucVu] [nvarchar](150) NULL,
	[trinhDo] [nvarchar](150) NULL,
	[tiengAnh] [nvarchar](150) NULL,
	[luongCoBan] [bigint] NULL,
	[maPB] [char](10) NULL,
 CONSTRAINT [PK_NhanVienHanhChanh] PRIMARY KEY CLUSTERED 
(
	[maNVHC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuChamCongCN]    Script Date: 16/04/2023 7:49:14 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuChamCongCN](
	[maPCCCN] [char](13) NOT NULL,
	[soLuong] [int] NULL,
	[maPPC] [char](11) NULL,
 CONSTRAINT [PK_PhieuChamCongCN] PRIMARY KEY CLUSTERED 
(
	[maPCCCN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuChamCongNVHC]    Script Date: 16/04/2023 7:49:14 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuChamCongNVHC](
	[maPCCNVHC] [char](15) NOT NULL,
	[tangCa] [bit] NULL,
	[ngayCham] [date] NULL,
	[trangThai] [nvarchar](150) NULL,
	[lyDo] [nvarchar](max) NULL,
	[maNVHC] [char](12) NULL,
 CONSTRAINT [PK_PhieuChamCongNVHC] PRIMARY KEY CLUSTERED 
(
	[maPCCNVHC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuPhanCong]    Script Date: 16/04/2023 7:49:14 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuPhanCong](
	[maPPC] [char](11) NOT NULL,
	[ngayPhan] [date] NULL,
	[maCN] [char](10) NULL,
	[maCD] [char](10) NULL,
	[maCLV] [char](11) NULL,
 CONSTRAINT [PK_PhieuPhanCong] PRIMARY KEY CLUSTERED 
(
	[maPPC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhongBan]    Script Date: 16/04/2023 7:49:14 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhongBan](
	[maPB] [char](10) NOT NULL,
	[tenPB] [nvarchar](150) NULL,
	[phanKhu] [nvarchar](150) NULL,
 CONSTRAINT [PK_PhongBan] PRIMARY KEY CLUSTERED 
(
	[maPB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 16/04/2023 7:49:14 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[maSP] [char](10) NOT NULL,
	[tenSP] [nvarchar](150) NULL,
	[donViTinh] [nvarchar](150) NULL,
	[soLuong] [bigint] NULL,
	[ngayBatDau] [date] NULL,
	[ngayKetThuc] [date] NULL,
	[hoanThanh] [bit] NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[maSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 16/04/2023 7:49:14 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[gmail] [char](150) NOT NULL,
	[matKhau] [char](150) NULL,
	[vaiTro] [char](150) NULL,
	[maNVHC] [char](12) NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[gmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CaLamViec] ([maCLV], [thoiGianBatDau], [thoiGianKetThuc], [heSo]) VALUES (N'clv_0000000', CAST(N'07:30:00' AS Time), CAST(N'11:30:00' AS Time), 1)
GO
INSERT [dbo].[CaLamViec] ([maCLV], [thoiGianBatDau], [thoiGianKetThuc], [heSo]) VALUES (N'clv_0000001', CAST(N'13:30:00' AS Time), CAST(N'17:30:00' AS Time), 1)
GO
INSERT [dbo].[CaLamViec] ([maCLV], [thoiGianBatDau], [thoiGianKetThuc], [heSo]) VALUES (N'clv_0000002', CAST(N'19:30:00' AS Time), CAST(N'22:30:00' AS Time), 1.5)
GO
INSERT [dbo].[CongDoan] ([maCD], [tenCD], [doUuTien], [donGia], [soLuong], [maSP], [hoanThanh]) VALUES (N'cd_0000000', N'Tạo hình dép cao su', 1, 5500, 2000, N'sp_0000000', 0)
GO
INSERT [dbo].[CongDoan] ([maCD], [tenCD], [doUuTien], [donGia], [soLuong], [maSP], [hoanThanh]) VALUES (N'cd_0000001', N'Làm nhẵn dép cao su', 2, 2500, 2000, N'sp_0000000', 0)
GO
INSERT [dbo].[CongDoan] ([maCD], [tenCD], [doUuTien], [donGia], [soLuong], [maSP], [hoanThanh]) VALUES (N'cd_0000002', N'Thử và đóng gói dép cao su', 3, 3000, 2000, N'sp_0000000', 0)
GO
INSERT [dbo].[CongDoan] ([maCD], [tenCD], [doUuTien], [donGia], [soLuong], [maSP], [hoanThanh]) VALUES (N'cd_0000003', N'Tạo hình dép tổ ong', 1, 5000, 2000, N'sp_0000002', 0)
GO
INSERT [dbo].[CongDoan] ([maCD], [tenCD], [doUuTien], [donGia], [soLuong], [maSP], [hoanThanh]) VALUES (N'cd_0000004', N'Làm nhẵn dép tổ ong', 2, 2000, 2000, N'sp_0000002', 0)
GO
INSERT [dbo].[CongDoan] ([maCD], [tenCD], [doUuTien], [donGia], [soLuong], [maSP], [hoanThanh]) VALUES (N'cd_0000005', N'Thử và đóng gói dép tổ ong', 3, 3300, 2000, N'sp_0000002', 0)
GO
INSERT [dbo].[CongDoan] ([maCD], [tenCD], [doUuTien], [donGia], [soLuong], [maSP], [hoanThanh]) VALUES (N'cd_0000006', N'Tạo hình dép da tổng hợp', 1, 6000, 3000, N'sp_0000001', 0)
GO
INSERT [dbo].[CongDoan] ([maCD], [tenCD], [doUuTien], [donGia], [soLuong], [maSP], [hoanThanh]) VALUES (N'cd_0000007', N'Làm nhẵn dép da tổng hợp', 2, 4000, 3000, N'sp_0000001', 0)
GO
INSERT [dbo].[CongDoan] ([maCD], [tenCD], [doUuTien], [donGia], [soLuong], [maSP], [hoanThanh]) VALUES (N'cd_0000008', N'Thử và đóng gói dép da tổng hợp', 3, 5000, 3000, N'sp_0000001', 0)
GO
INSERT [dbo].[CongNhan] ([maCN], [tenCN], [gioiTinh], [ngaySinh], [diaChi], [soDienThoai], [maPB]) VALUES (N'cn_0000000', N'Đỗ Văn Hòa', 0, CAST(N'1998-05-12' AS Date), N'321 Lê Văn Việt, Quận 9, TP. Hồ Chí Minh', N'0912345678', N'pb_0000001')
GO
INSERT [dbo].[CongNhan] ([maCN], [tenCN], [gioiTinh], [ngaySinh], [diaChi], [soDienThoai], [maPB]) VALUES (N'cn_0000001', N'Trần Thị Thúy Hằng', 1, CAST(N'2000-05-11' AS Date), N'456 Nguyễn Văn Cừ, Quận Long Biên, TP. Hà Nội', N'0912345678', N'pb_0000002')
GO
INSERT [dbo].[CongNhan] ([maCN], [tenCN], [gioiTinh], [ngaySinh], [diaChi], [soDienThoai], [maPB]) VALUES (N'cn_0000002', N'Nguyễn Văn Tùng', 0, CAST(N'2000-06-01' AS Date), N'789 Nguyễn Hữu Thọ, Quận Thanh Xuân, TP. Hà Nội', N'0912345678', N'pb_0000003')
GO
INSERT [dbo].[CongNhan] ([maCN], [tenCN], [gioiTinh], [ngaySinh], [diaChi], [soDienThoai], [maPB]) VALUES (N'cn_0000003', N'Phan Thị Kim Ngân', 1, CAST(N'2000-12-20' AS Date), N'123 Lê Duẩn, Quận 1, TP. Hồ Chí Minh', N'0312345678', N'pb_0000001')
GO
INSERT [dbo].[CongNhan] ([maCN], [tenCN], [gioiTinh], [ngaySinh], [diaChi], [soDienThoai], [maPB]) VALUES (N'cn_0000004', N'Lê Văn Hùng', 0, CAST(N'2000-11-23' AS Date), N'234 Nguyễn Đình Chiểu, Quận 3, TP. Hồ Chí Minh', N'0312345678', N'pb_0000002')
GO
INSERT [dbo].[CongNhan] ([maCN], [tenCN], [gioiTinh], [ngaySinh], [diaChi], [soDienThoai], [maPB]) VALUES (N'cn_0000005', N'Trịnh Thị Thu Hà', 1, CAST(N'2000-08-17' AS Date), N'567 Lạc Long Quân, Quận Tây Hồ, TP. Hà Nội', N'0312345678', N'pb_0000003')
GO
INSERT [dbo].[LuongNVHC] ([maLuongNVHC], [maNVHC], [luongThang], [luongCoBan], [luongNgay], [soNgayDiLam], [soNgayNghiCoPhep], [soNgayNghiKhongPhep], [soNgayTangCa], [soNgayLamChuNhat], [soNgayDuocTinhLuong], [tongLuongCoBan], [tongLuongThem], [thanhLuong]) VALUES (N'lnvhc_0000000', N'nvhc_0000003', N'2-2023', 10000000, 322580, 25, 2, 1, 0, 4, 27, 8709660, 645160, 9354820)
GO
INSERT [dbo].[LuongNVHC] ([maLuongNVHC], [maNVHC], [luongThang], [luongCoBan], [luongNgay], [soNgayDiLam], [soNgayNghiCoPhep], [soNgayNghiKhongPhep], [soNgayTangCa], [soNgayLamChuNhat], [soNgayDuocTinhLuong], [tongLuongCoBan], [tongLuongThem], [thanhLuong]) VALUES (N'lnvhc_0000001', N'nvhc_0000000', N'2-2023', 8000000, 258064, 25, 2, 1, 2, 4, 27, 6967728, 774192, 7741920)
GO
INSERT [dbo].[LuongNVHC] ([maLuongNVHC], [maNVHC], [luongThang], [luongCoBan], [luongNgay], [soNgayDiLam], [soNgayNghiCoPhep], [soNgayNghiKhongPhep], [soNgayTangCa], [soNgayLamChuNhat], [soNgayDuocTinhLuong], [tongLuongCoBan], [tongLuongThem], [thanhLuong]) VALUES (N'lnvhc_0000002', N'nvhc_0000005', N'2-2023', 15000000, 483870, 26, 1, 0, 1, 4, 27, 13064490, 1209675, 14274165)
GO
INSERT [dbo].[LuongNVHC] ([maLuongNVHC], [maNVHC], [luongThang], [luongCoBan], [luongNgay], [soNgayDiLam], [soNgayNghiCoPhep], [soNgayNghiKhongPhep], [soNgayTangCa], [soNgayLamChuNhat], [soNgayDuocTinhLuong], [tongLuongCoBan], [tongLuongThem], [thanhLuong]) VALUES (N'lnvhc_0000003', N'nvhc_0000004', N'2-2023', 8000000, 258064, 25, 2, 1, 1, 4, 27, 6967728, 645160, 7612888)
GO
INSERT [dbo].[LuongNVHC] ([maLuongNVHC], [maNVHC], [luongThang], [luongCoBan], [luongNgay], [soNgayDiLam], [soNgayNghiCoPhep], [soNgayNghiKhongPhep], [soNgayTangCa], [soNgayLamChuNhat], [soNgayDuocTinhLuong], [tongLuongCoBan], [tongLuongThem], [thanhLuong]) VALUES (N'lnvhc_0000004', N'nvhc_0000001', N'2-2023', 12000000, 387096, 25, 2, 1, 0, 4, 27, 10451592, 774192, 11225784)
GO
INSERT [dbo].[LuongNVHC] ([maLuongNVHC], [maNVHC], [luongThang], [luongCoBan], [luongNgay], [soNgayDiLam], [soNgayNghiCoPhep], [soNgayNghiKhongPhep], [soNgayTangCa], [soNgayLamChuNhat], [soNgayDuocTinhLuong], [tongLuongCoBan], [tongLuongThem], [thanhLuong]) VALUES (N'lnvhc_0000005', N'nvhc_0000006', N'2-2023', 17000000, 548387, 26, 1, 0, 2, 4, 27, 14806449, 1645161, 16451610)
GO
INSERT [dbo].[LuongNVHC] ([maLuongNVHC], [maNVHC], [luongThang], [luongCoBan], [luongNgay], [soNgayDiLam], [soNgayNghiCoPhep], [soNgayNghiKhongPhep], [soNgayTangCa], [soNgayLamChuNhat], [soNgayDuocTinhLuong], [tongLuongCoBan], [tongLuongThem], [thanhLuong]) VALUES (N'lnvhc_0000006', N'nvhc_0000007', N'2-2023', 9000000, 290322, 25, 2, 0, 0, 4, 27, 7838694, 580644, 8419338)
GO
INSERT [dbo].[LuongNVHC] ([maLuongNVHC], [maNVHC], [luongThang], [luongCoBan], [luongNgay], [soNgayDiLam], [soNgayNghiCoPhep], [soNgayNghiKhongPhep], [soNgayTangCa], [soNgayLamChuNhat], [soNgayDuocTinhLuong], [tongLuongCoBan], [tongLuongThem], [thanhLuong]) VALUES (N'lnvhc_0000007', N'nvhc_0000002', N'2-2023', 9000000, 290322, 25, 2, 1, 0, 4, 27, 7838694, 580644, 8419338)
GO
INSERT [dbo].[LuongNVHC] ([maLuongNVHC], [maNVHC], [luongThang], [luongCoBan], [luongNgay], [soNgayDiLam], [soNgayNghiCoPhep], [soNgayNghiKhongPhep], [soNgayTangCa], [soNgayLamChuNhat], [soNgayDuocTinhLuong], [tongLuongCoBan], [tongLuongThem], [thanhLuong]) VALUES (N'lnvhc_0000008', N'nvhc_0000006', N'3-2023', 17000000, 548387, 28, 1, 2, 4, 4, 29, 15903223, 2193548, 18096771)
GO
INSERT [dbo].[LuongNVHC] ([maLuongNVHC], [maNVHC], [luongThang], [luongCoBan], [luongNgay], [soNgayDiLam], [soNgayNghiCoPhep], [soNgayNghiKhongPhep], [soNgayTangCa], [soNgayLamChuNhat], [soNgayDuocTinhLuong], [tongLuongCoBan], [tongLuongThem], [thanhLuong]) VALUES (N'lnvhc_0000009', N'nvhc_0000005', N'3-2023', 15000000, 483870, 28, 1, 2, 5, 4, 29, 14032230, 2177415, 16209645)
GO
INSERT [dbo].[LuongNVHC] ([maLuongNVHC], [maNVHC], [luongThang], [luongCoBan], [luongNgay], [soNgayDiLam], [soNgayNghiCoPhep], [soNgayNghiKhongPhep], [soNgayTangCa], [soNgayLamChuNhat], [soNgayDuocTinhLuong], [tongLuongCoBan], [tongLuongThem], [thanhLuong]) VALUES (N'lnvhc_0000010', N'nvhc_0000001', N'3-2023', 12000000, 387096, 27, 2, 2, 4, 4, 29, 11225784, 1548384, 12774168)
GO
INSERT [dbo].[LuongNVHC] ([maLuongNVHC], [maNVHC], [luongThang], [luongCoBan], [luongNgay], [soNgayDiLam], [soNgayNghiCoPhep], [soNgayNghiKhongPhep], [soNgayTangCa], [soNgayLamChuNhat], [soNgayDuocTinhLuong], [tongLuongCoBan], [tongLuongThem], [thanhLuong]) VALUES (N'lnvhc_0000011', N'nvhc_0000003', N'3-2023', 10000000, 322580, 27, 1, 3, 5, 4, 28, 9032240, 1451610, 10483850)
GO
INSERT [dbo].[LuongNVHC] ([maLuongNVHC], [maNVHC], [luongThang], [luongCoBan], [luongNgay], [soNgayDiLam], [soNgayNghiCoPhep], [soNgayNghiKhongPhep], [soNgayTangCa], [soNgayLamChuNhat], [soNgayDuocTinhLuong], [tongLuongCoBan], [tongLuongThem], [thanhLuong]) VALUES (N'lnvhc_0000012', N'nvhc_0000002', N'3-2023', 9000000, 290322, 28, 1, 2, 6, 4, 29, 8419338, 1451610, 9870948)
GO
INSERT [dbo].[LuongNVHC] ([maLuongNVHC], [maNVHC], [luongThang], [luongCoBan], [luongNgay], [soNgayDiLam], [soNgayNghiCoPhep], [soNgayNghiKhongPhep], [soNgayTangCa], [soNgayLamChuNhat], [soNgayDuocTinhLuong], [tongLuongCoBan], [tongLuongThem], [thanhLuong]) VALUES (N'lnvhc_0000013', N'nvhc_0000007', N'3-2023', 9000000, 290322, 28, 1, 2, 4, 4, 29, 8419338, 1161288, 9580626)
GO
INSERT [dbo].[LuongNVHC] ([maLuongNVHC], [maNVHC], [luongThang], [luongCoBan], [luongNgay], [soNgayDiLam], [soNgayNghiCoPhep], [soNgayNghiKhongPhep], [soNgayTangCa], [soNgayLamChuNhat], [soNgayDuocTinhLuong], [tongLuongCoBan], [tongLuongThem], [thanhLuong]) VALUES (N'lnvhc_0000014', N'nvhc_0000004', N'3-2023', 8000000, 258064, 27, 1, 3, 5, 4, 28, 7225792, 1161288, 8387080)
GO
INSERT [dbo].[LuongNVHC] ([maLuongNVHC], [maNVHC], [luongThang], [luongCoBan], [luongNgay], [soNgayDiLam], [soNgayNghiCoPhep], [soNgayNghiKhongPhep], [soNgayTangCa], [soNgayLamChuNhat], [soNgayDuocTinhLuong], [tongLuongCoBan], [tongLuongThem], [thanhLuong]) VALUES (N'lnvhc_0000015', N'nvhc_0000000', N'3-2023', 8000000, 258064, 27, 2, 2, 3, 4, 29, 7483856, 903224, 8387080)
GO
INSERT [dbo].[LuongNVHC] ([maLuongNVHC], [maNVHC], [luongThang], [luongCoBan], [luongNgay], [soNgayDiLam], [soNgayNghiCoPhep], [soNgayNghiKhongPhep], [soNgayTangCa], [soNgayLamChuNhat], [soNgayDuocTinhLuong], [tongLuongCoBan], [tongLuongThem], [thanhLuong]) VALUES (N'lnvhc_0000016', N'nvhc_0000006', N'1-2023', 17000000, 548387, 25, 0, 2, 1, 1, 25, 13709675, 548387, 14258062)
GO
INSERT [dbo].[LuongNVHC] ([maLuongNVHC], [maNVHC], [luongThang], [luongCoBan], [luongNgay], [soNgayDiLam], [soNgayNghiCoPhep], [soNgayNghiKhongPhep], [soNgayTangCa], [soNgayLamChuNhat], [soNgayDuocTinhLuong], [tongLuongCoBan], [tongLuongThem], [thanhLuong]) VALUES (N'lnvhc_0000017', N'nvhc_0000005', N'1-2023', 15000000, 483870, 25, 0, 2, 1, 1, 25, 12096750, 483870, 12580620)
GO
INSERT [dbo].[LuongNVHC] ([maLuongNVHC], [maNVHC], [luongThang], [luongCoBan], [luongNgay], [soNgayDiLam], [soNgayNghiCoPhep], [soNgayNghiKhongPhep], [soNgayTangCa], [soNgayLamChuNhat], [soNgayDuocTinhLuong], [tongLuongCoBan], [tongLuongThem], [thanhLuong]) VALUES (N'lnvhc_0000018', N'nvhc_0000001', N'1-2023', 12000000, 387096, 25, 0, 2, 1, 1, 25, 9677400, 387096, 10064496)
GO
INSERT [dbo].[LuongNVHC] ([maLuongNVHC], [maNVHC], [luongThang], [luongCoBan], [luongNgay], [soNgayDiLam], [soNgayNghiCoPhep], [soNgayNghiKhongPhep], [soNgayTangCa], [soNgayLamChuNhat], [soNgayDuocTinhLuong], [tongLuongCoBan], [tongLuongThem], [thanhLuong]) VALUES (N'lnvhc_0000019', N'nvhc_0000003', N'1-2023', 10000000, 322580, 25, 0, 2, 1, 1, 25, 8064500, 322580, 8387080)
GO
INSERT [dbo].[LuongNVHC] ([maLuongNVHC], [maNVHC], [luongThang], [luongCoBan], [luongNgay], [soNgayDiLam], [soNgayNghiCoPhep], [soNgayNghiKhongPhep], [soNgayTangCa], [soNgayLamChuNhat], [soNgayDuocTinhLuong], [tongLuongCoBan], [tongLuongThem], [thanhLuong]) VALUES (N'lnvhc_0000020', N'nvhc_0000002', N'1-2023', 9000000, 290322, 25, 0, 2, 1, 1, 25, 7258050, 290322, 7548372)
GO
INSERT [dbo].[LuongNVHC] ([maLuongNVHC], [maNVHC], [luongThang], [luongCoBan], [luongNgay], [soNgayDiLam], [soNgayNghiCoPhep], [soNgayNghiKhongPhep], [soNgayTangCa], [soNgayLamChuNhat], [soNgayDuocTinhLuong], [tongLuongCoBan], [tongLuongThem], [thanhLuong]) VALUES (N'lnvhc_0000021', N'nvhc_0000007', N'1-2023', 9000000, 290322, 25, 0, 2, 1, 1, 25, 7258050, 290322, 7548372)
GO
INSERT [dbo].[LuongNVHC] ([maLuongNVHC], [maNVHC], [luongThang], [luongCoBan], [luongNgay], [soNgayDiLam], [soNgayNghiCoPhep], [soNgayNghiKhongPhep], [soNgayTangCa], [soNgayLamChuNhat], [soNgayDuocTinhLuong], [tongLuongCoBan], [tongLuongThem], [thanhLuong]) VALUES (N'lnvhc_0000022', N'nvhc_0000004', N'1-2023', 8000000, 258064, 25, 0, 2, 1, 1, 25, 6451600, 258064, 6709664)
GO
INSERT [dbo].[LuongNVHC] ([maLuongNVHC], [maNVHC], [luongThang], [luongCoBan], [luongNgay], [soNgayDiLam], [soNgayNghiCoPhep], [soNgayNghiKhongPhep], [soNgayTangCa], [soNgayLamChuNhat], [soNgayDuocTinhLuong], [tongLuongCoBan], [tongLuongThem], [thanhLuong]) VALUES (N'lnvhc_0000023', N'nvhc_0000000', N'1-2023', 8000000, 258064, 25, 0, 2, 1, 1, 25, 6451600, 258064, 6709664)
GO
INSERT [dbo].[LuongNVHC] ([maLuongNVHC], [maNVHC], [luongThang], [luongCoBan], [luongNgay], [soNgayDiLam], [soNgayNghiCoPhep], [soNgayNghiKhongPhep], [soNgayTangCa], [soNgayLamChuNhat], [soNgayDuocTinhLuong], [tongLuongCoBan], [tongLuongThem], [thanhLuong]) VALUES (N'lnvhc_0000024', N'nvhc_0000003', N'12-2022', 10000000, 322580, 20, 0, 8, 0, 1, 20, 6451600, 161290, 6612890)
GO
INSERT [dbo].[LuongNVHC] ([maLuongNVHC], [maNVHC], [luongThang], [luongCoBan], [luongNgay], [soNgayDiLam], [soNgayNghiCoPhep], [soNgayNghiKhongPhep], [soNgayTangCa], [soNgayLamChuNhat], [soNgayDuocTinhLuong], [tongLuongCoBan], [tongLuongThem], [thanhLuong]) VALUES (N'lnvhc_0000025', N'nvhc_0000000', N'12-2022', 8000000, 258064, 20, 0, 8, 0, 1, 20, 5161280, 129032, 5290312)
GO
INSERT [dbo].[LuongNVHC] ([maLuongNVHC], [maNVHC], [luongThang], [luongCoBan], [luongNgay], [soNgayDiLam], [soNgayNghiCoPhep], [soNgayNghiKhongPhep], [soNgayTangCa], [soNgayLamChuNhat], [soNgayDuocTinhLuong], [tongLuongCoBan], [tongLuongThem], [thanhLuong]) VALUES (N'lnvhc_0000026', N'nvhc_0000005', N'12-2022', 15000000, 483870, 20, 0, 8, 0, 1, 20, 9677400, 241935, 9919335)
GO
INSERT [dbo].[LuongNVHC] ([maLuongNVHC], [maNVHC], [luongThang], [luongCoBan], [luongNgay], [soNgayDiLam], [soNgayNghiCoPhep], [soNgayNghiKhongPhep], [soNgayTangCa], [soNgayLamChuNhat], [soNgayDuocTinhLuong], [tongLuongCoBan], [tongLuongThem], [thanhLuong]) VALUES (N'lnvhc_0000027', N'nvhc_0000004', N'12-2022', 8000000, 258064, 20, 0, 8, 0, 1, 20, 5161280, 129032, 5290312)
GO
INSERT [dbo].[LuongNVHC] ([maLuongNVHC], [maNVHC], [luongThang], [luongCoBan], [luongNgay], [soNgayDiLam], [soNgayNghiCoPhep], [soNgayNghiKhongPhep], [soNgayTangCa], [soNgayLamChuNhat], [soNgayDuocTinhLuong], [tongLuongCoBan], [tongLuongThem], [thanhLuong]) VALUES (N'lnvhc_0000028', N'nvhc_0000001', N'12-2022', 12000000, 387096, 20, 0, 8, 0, 1, 20, 7741920, 193548, 7935468)
GO
INSERT [dbo].[LuongNVHC] ([maLuongNVHC], [maNVHC], [luongThang], [luongCoBan], [luongNgay], [soNgayDiLam], [soNgayNghiCoPhep], [soNgayNghiKhongPhep], [soNgayTangCa], [soNgayLamChuNhat], [soNgayDuocTinhLuong], [tongLuongCoBan], [tongLuongThem], [thanhLuong]) VALUES (N'lnvhc_0000029', N'nvhc_0000006', N'12-2022', 17000000, 548387, 20, 0, 8, 0, 1, 20, 10967740, 274193, 11241933)
GO
INSERT [dbo].[LuongNVHC] ([maLuongNVHC], [maNVHC], [luongThang], [luongCoBan], [luongNgay], [soNgayDiLam], [soNgayNghiCoPhep], [soNgayNghiKhongPhep], [soNgayTangCa], [soNgayLamChuNhat], [soNgayDuocTinhLuong], [tongLuongCoBan], [tongLuongThem], [thanhLuong]) VALUES (N'lnvhc_0000030', N'nvhc_0000007', N'12-2022', 9000000, 290322, 20, 0, 8, 0, 1, 20, 5806440, 145161, 5951601)
GO
INSERT [dbo].[LuongNVHC] ([maLuongNVHC], [maNVHC], [luongThang], [luongCoBan], [luongNgay], [soNgayDiLam], [soNgayNghiCoPhep], [soNgayNghiKhongPhep], [soNgayTangCa], [soNgayLamChuNhat], [soNgayDuocTinhLuong], [tongLuongCoBan], [tongLuongThem], [thanhLuong]) VALUES (N'lnvhc_0000031', N'nvhc_0000002', N'12-2022', 9000000, 290322, 20, 0, 8, 0, 1, 20, 5806440, 145161, 5951601)
GO
INSERT [dbo].[LuongNVHC] ([maLuongNVHC], [maNVHC], [luongThang], [luongCoBan], [luongNgay], [soNgayDiLam], [soNgayNghiCoPhep], [soNgayNghiKhongPhep], [soNgayTangCa], [soNgayLamChuNhat], [soNgayDuocTinhLuong], [tongLuongCoBan], [tongLuongThem], [thanhLuong]) VALUES (N'lnvhc_0000032', N'nvhc_0000003', N'11-2022', 10000000, 322580, 7, 0, 0, 3, 1, 7, 2258060, 645160, 2903220)
GO
INSERT [dbo].[LuongNVHC] ([maLuongNVHC], [maNVHC], [luongThang], [luongCoBan], [luongNgay], [soNgayDiLam], [soNgayNghiCoPhep], [soNgayNghiKhongPhep], [soNgayTangCa], [soNgayLamChuNhat], [soNgayDuocTinhLuong], [tongLuongCoBan], [tongLuongThem], [thanhLuong]) VALUES (N'lnvhc_0000033', N'nvhc_0000000', N'11-2022', 8000000, 258064, 7, 0, 0, 3, 1, 7, 1806448, 516128, 2322576)
GO
INSERT [dbo].[LuongNVHC] ([maLuongNVHC], [maNVHC], [luongThang], [luongCoBan], [luongNgay], [soNgayDiLam], [soNgayNghiCoPhep], [soNgayNghiKhongPhep], [soNgayTangCa], [soNgayLamChuNhat], [soNgayDuocTinhLuong], [tongLuongCoBan], [tongLuongThem], [thanhLuong]) VALUES (N'lnvhc_0000034', N'nvhc_0000005', N'11-2022', 15000000, 483870, 7, 0, 0, 3, 1, 7, 3387090, 967740, 4354830)
GO
INSERT [dbo].[LuongNVHC] ([maLuongNVHC], [maNVHC], [luongThang], [luongCoBan], [luongNgay], [soNgayDiLam], [soNgayNghiCoPhep], [soNgayNghiKhongPhep], [soNgayTangCa], [soNgayLamChuNhat], [soNgayDuocTinhLuong], [tongLuongCoBan], [tongLuongThem], [thanhLuong]) VALUES (N'lnvhc_0000035', N'nvhc_0000004', N'11-2022', 8000000, 258064, 7, 0, 0, 3, 1, 7, 1806448, 516128, 2322576)
GO
INSERT [dbo].[LuongNVHC] ([maLuongNVHC], [maNVHC], [luongThang], [luongCoBan], [luongNgay], [soNgayDiLam], [soNgayNghiCoPhep], [soNgayNghiKhongPhep], [soNgayTangCa], [soNgayLamChuNhat], [soNgayDuocTinhLuong], [tongLuongCoBan], [tongLuongThem], [thanhLuong]) VALUES (N'lnvhc_0000036', N'nvhc_0000001', N'11-2022', 12000000, 387096, 7, 0, 0, 3, 1, 7, 2709672, 774192, 3483864)
GO
INSERT [dbo].[LuongNVHC] ([maLuongNVHC], [maNVHC], [luongThang], [luongCoBan], [luongNgay], [soNgayDiLam], [soNgayNghiCoPhep], [soNgayNghiKhongPhep], [soNgayTangCa], [soNgayLamChuNhat], [soNgayDuocTinhLuong], [tongLuongCoBan], [tongLuongThem], [thanhLuong]) VALUES (N'lnvhc_0000037', N'nvhc_0000006', N'11-2022', 17000000, 548387, 7, 0, 0, 3, 1, 7, 3838709, 1096774, 4935483)
GO
INSERT [dbo].[LuongNVHC] ([maLuongNVHC], [maNVHC], [luongThang], [luongCoBan], [luongNgay], [soNgayDiLam], [soNgayNghiCoPhep], [soNgayNghiKhongPhep], [soNgayTangCa], [soNgayLamChuNhat], [soNgayDuocTinhLuong], [tongLuongCoBan], [tongLuongThem], [thanhLuong]) VALUES (N'lnvhc_0000038', N'nvhc_0000007', N'11-2022', 9000000, 290322, 7, 0, 0, 3, 1, 7, 2032254, 580644, 2612898)
GO
INSERT [dbo].[LuongNVHC] ([maLuongNVHC], [maNVHC], [luongThang], [luongCoBan], [luongNgay], [soNgayDiLam], [soNgayNghiCoPhep], [soNgayNghiKhongPhep], [soNgayTangCa], [soNgayLamChuNhat], [soNgayDuocTinhLuong], [tongLuongCoBan], [tongLuongThem], [thanhLuong]) VALUES (N'lnvhc_0000039', N'nvhc_0000002', N'11-2022', 9000000, 290322, 7, 0, 0, 3, 1, 7, 2032254, 580644, 2612898)
GO
INSERT [dbo].[LuongNVHC] ([maLuongNVHC], [maNVHC], [luongThang], [luongCoBan], [luongNgay], [soNgayDiLam], [soNgayNghiCoPhep], [soNgayNghiKhongPhep], [soNgayTangCa], [soNgayLamChuNhat], [soNgayDuocTinhLuong], [tongLuongCoBan], [tongLuongThem], [thanhLuong]) VALUES (N'lnvhc_0000040', N'nvhc_0000003', N'10-2022', 10000000, 322580, 5, 0, 0, 0, 0, 5, 1612900, 0, 1612900)
GO
INSERT [dbo].[LuongNVHC] ([maLuongNVHC], [maNVHC], [luongThang], [luongCoBan], [luongNgay], [soNgayDiLam], [soNgayNghiCoPhep], [soNgayNghiKhongPhep], [soNgayTangCa], [soNgayLamChuNhat], [soNgayDuocTinhLuong], [tongLuongCoBan], [tongLuongThem], [thanhLuong]) VALUES (N'lnvhc_0000041', N'nvhc_0000000', N'10-2022', 8000000, 258064, 5, 0, 0, 0, 0, 5, 1290320, 0, 1290320)
GO
INSERT [dbo].[LuongNVHC] ([maLuongNVHC], [maNVHC], [luongThang], [luongCoBan], [luongNgay], [soNgayDiLam], [soNgayNghiCoPhep], [soNgayNghiKhongPhep], [soNgayTangCa], [soNgayLamChuNhat], [soNgayDuocTinhLuong], [tongLuongCoBan], [tongLuongThem], [thanhLuong]) VALUES (N'lnvhc_0000042', N'nvhc_0000005', N'10-2022', 15000000, 483870, 5, 0, 0, 0, 0, 5, 2419350, 0, 2419350)
GO
INSERT [dbo].[LuongNVHC] ([maLuongNVHC], [maNVHC], [luongThang], [luongCoBan], [luongNgay], [soNgayDiLam], [soNgayNghiCoPhep], [soNgayNghiKhongPhep], [soNgayTangCa], [soNgayLamChuNhat], [soNgayDuocTinhLuong], [tongLuongCoBan], [tongLuongThem], [thanhLuong]) VALUES (N'lnvhc_0000043', N'nvhc_0000004', N'10-2022', 8000000, 258064, 5, 0, 0, 0, 0, 5, 1290320, 0, 1290320)
GO
INSERT [dbo].[LuongNVHC] ([maLuongNVHC], [maNVHC], [luongThang], [luongCoBan], [luongNgay], [soNgayDiLam], [soNgayNghiCoPhep], [soNgayNghiKhongPhep], [soNgayTangCa], [soNgayLamChuNhat], [soNgayDuocTinhLuong], [tongLuongCoBan], [tongLuongThem], [thanhLuong]) VALUES (N'lnvhc_0000044', N'nvhc_0000001', N'10-2022', 12000000, 387096, 5, 0, 0, 0, 0, 5, 1935480, 0, 1935480)
GO
INSERT [dbo].[LuongNVHC] ([maLuongNVHC], [maNVHC], [luongThang], [luongCoBan], [luongNgay], [soNgayDiLam], [soNgayNghiCoPhep], [soNgayNghiKhongPhep], [soNgayTangCa], [soNgayLamChuNhat], [soNgayDuocTinhLuong], [tongLuongCoBan], [tongLuongThem], [thanhLuong]) VALUES (N'lnvhc_0000045', N'nvhc_0000006', N'10-2022', 17000000, 548387, 5, 0, 0, 0, 0, 5, 2741935, 0, 2741935)
GO
INSERT [dbo].[LuongNVHC] ([maLuongNVHC], [maNVHC], [luongThang], [luongCoBan], [luongNgay], [soNgayDiLam], [soNgayNghiCoPhep], [soNgayNghiKhongPhep], [soNgayTangCa], [soNgayLamChuNhat], [soNgayDuocTinhLuong], [tongLuongCoBan], [tongLuongThem], [thanhLuong]) VALUES (N'lnvhc_0000046', N'nvhc_0000007', N'10-2022', 9000000, 290322, 5, 0, 0, 0, 0, 5, 1451610, 0, 1451610)
GO
INSERT [dbo].[LuongNVHC] ([maLuongNVHC], [maNVHC], [luongThang], [luongCoBan], [luongNgay], [soNgayDiLam], [soNgayNghiCoPhep], [soNgayNghiKhongPhep], [soNgayTangCa], [soNgayLamChuNhat], [soNgayDuocTinhLuong], [tongLuongCoBan], [tongLuongThem], [thanhLuong]) VALUES (N'lnvhc_0000047', N'nvhc_0000002', N'10-2022', 9000000, 290322, 5, 0, 0, 0, 0, 5, 1451610, 0, 1451610)
GO
INSERT [dbo].[LuongNVHC] ([maLuongNVHC], [maNVHC], [luongThang], [luongCoBan], [luongNgay], [soNgayDiLam], [soNgayNghiCoPhep], [soNgayNghiKhongPhep], [soNgayTangCa], [soNgayLamChuNhat], [soNgayDuocTinhLuong], [tongLuongCoBan], [tongLuongThem], [thanhLuong]) VALUES (N'lnvhc_0000048', N'nvhc_0000003', N'9-2022', 10000000, 322580, 4, 0, 0, 1, 0, 4, 1290320, 161290, 1451610)
GO
INSERT [dbo].[LuongNVHC] ([maLuongNVHC], [maNVHC], [luongThang], [luongCoBan], [luongNgay], [soNgayDiLam], [soNgayNghiCoPhep], [soNgayNghiKhongPhep], [soNgayTangCa], [soNgayLamChuNhat], [soNgayDuocTinhLuong], [tongLuongCoBan], [tongLuongThem], [thanhLuong]) VALUES (N'lnvhc_0000049', N'nvhc_0000000', N'9-2022', 8000000, 258064, 4, 0, 0, 1, 0, 4, 1032256, 129032, 1161288)
GO
INSERT [dbo].[LuongNVHC] ([maLuongNVHC], [maNVHC], [luongThang], [luongCoBan], [luongNgay], [soNgayDiLam], [soNgayNghiCoPhep], [soNgayNghiKhongPhep], [soNgayTangCa], [soNgayLamChuNhat], [soNgayDuocTinhLuong], [tongLuongCoBan], [tongLuongThem], [thanhLuong]) VALUES (N'lnvhc_0000050', N'nvhc_0000005', N'9-2022', 15000000, 483870, 4, 0, 0, 1, 0, 4, 1935480, 241935, 2177415)
GO
INSERT [dbo].[LuongNVHC] ([maLuongNVHC], [maNVHC], [luongThang], [luongCoBan], [luongNgay], [soNgayDiLam], [soNgayNghiCoPhep], [soNgayNghiKhongPhep], [soNgayTangCa], [soNgayLamChuNhat], [soNgayDuocTinhLuong], [tongLuongCoBan], [tongLuongThem], [thanhLuong]) VALUES (N'lnvhc_0000051', N'nvhc_0000004', N'9-2022', 8000000, 258064, 4, 0, 0, 1, 0, 4, 1032256, 129032, 1161288)
GO
INSERT [dbo].[LuongNVHC] ([maLuongNVHC], [maNVHC], [luongThang], [luongCoBan], [luongNgay], [soNgayDiLam], [soNgayNghiCoPhep], [soNgayNghiKhongPhep], [soNgayTangCa], [soNgayLamChuNhat], [soNgayDuocTinhLuong], [tongLuongCoBan], [tongLuongThem], [thanhLuong]) VALUES (N'lnvhc_0000052', N'nvhc_0000001', N'9-2022', 12000000, 387096, 4, 0, 0, 1, 0, 4, 1548384, 193548, 1741932)
GO
INSERT [dbo].[LuongNVHC] ([maLuongNVHC], [maNVHC], [luongThang], [luongCoBan], [luongNgay], [soNgayDiLam], [soNgayNghiCoPhep], [soNgayNghiKhongPhep], [soNgayTangCa], [soNgayLamChuNhat], [soNgayDuocTinhLuong], [tongLuongCoBan], [tongLuongThem], [thanhLuong]) VALUES (N'lnvhc_0000053', N'nvhc_0000006', N'9-2022', 17000000, 548387, 4, 0, 0, 1, 0, 4, 2193548, 274193, 2467741)
GO
INSERT [dbo].[LuongNVHC] ([maLuongNVHC], [maNVHC], [luongThang], [luongCoBan], [luongNgay], [soNgayDiLam], [soNgayNghiCoPhep], [soNgayNghiKhongPhep], [soNgayTangCa], [soNgayLamChuNhat], [soNgayDuocTinhLuong], [tongLuongCoBan], [tongLuongThem], [thanhLuong]) VALUES (N'lnvhc_0000054', N'nvhc_0000007', N'9-2022', 9000000, 290322, 4, 0, 0, 1, 0, 4, 1161288, 145161, 1306449)
GO
INSERT [dbo].[LuongNVHC] ([maLuongNVHC], [maNVHC], [luongThang], [luongCoBan], [luongNgay], [soNgayDiLam], [soNgayNghiCoPhep], [soNgayNghiKhongPhep], [soNgayTangCa], [soNgayLamChuNhat], [soNgayDuocTinhLuong], [tongLuongCoBan], [tongLuongThem], [thanhLuong]) VALUES (N'lnvhc_0000055', N'nvhc_0000002', N'9-2022', 9000000, 290322, 4, 0, 0, 1, 0, 4, 1161288, 145161, 1306449)
GO
INSERT [dbo].[LuongNVHC] ([maLuongNVHC], [maNVHC], [luongThang], [luongCoBan], [luongNgay], [soNgayDiLam], [soNgayNghiCoPhep], [soNgayNghiKhongPhep], [soNgayTangCa], [soNgayLamChuNhat], [soNgayDuocTinhLuong], [tongLuongCoBan], [tongLuongThem], [thanhLuong]) VALUES (N'lnvhc_0000056', N'nvhc_0000003', N'8-2022', 10000000, 322580, 3, 0, 0, 0, 1, 3, 967740, 161290, 1129030)
GO
INSERT [dbo].[LuongNVHC] ([maLuongNVHC], [maNVHC], [luongThang], [luongCoBan], [luongNgay], [soNgayDiLam], [soNgayNghiCoPhep], [soNgayNghiKhongPhep], [soNgayTangCa], [soNgayLamChuNhat], [soNgayDuocTinhLuong], [tongLuongCoBan], [tongLuongThem], [thanhLuong]) VALUES (N'lnvhc_0000057', N'nvhc_0000000', N'8-2022', 8000000, 258064, 3, 0, 0, 0, 1, 3, 774192, 129032, 903224)
GO
INSERT [dbo].[LuongNVHC] ([maLuongNVHC], [maNVHC], [luongThang], [luongCoBan], [luongNgay], [soNgayDiLam], [soNgayNghiCoPhep], [soNgayNghiKhongPhep], [soNgayTangCa], [soNgayLamChuNhat], [soNgayDuocTinhLuong], [tongLuongCoBan], [tongLuongThem], [thanhLuong]) VALUES (N'lnvhc_0000058', N'nvhc_0000005', N'8-2022', 15000000, 483870, 3, 0, 0, 0, 1, 3, 1451610, 241935, 1693545)
GO
INSERT [dbo].[LuongNVHC] ([maLuongNVHC], [maNVHC], [luongThang], [luongCoBan], [luongNgay], [soNgayDiLam], [soNgayNghiCoPhep], [soNgayNghiKhongPhep], [soNgayTangCa], [soNgayLamChuNhat], [soNgayDuocTinhLuong], [tongLuongCoBan], [tongLuongThem], [thanhLuong]) VALUES (N'lnvhc_0000059', N'nvhc_0000004', N'8-2022', 8000000, 258064, 3, 0, 0, 0, 1, 3, 774192, 129032, 903224)
GO
INSERT [dbo].[LuongNVHC] ([maLuongNVHC], [maNVHC], [luongThang], [luongCoBan], [luongNgay], [soNgayDiLam], [soNgayNghiCoPhep], [soNgayNghiKhongPhep], [soNgayTangCa], [soNgayLamChuNhat], [soNgayDuocTinhLuong], [tongLuongCoBan], [tongLuongThem], [thanhLuong]) VALUES (N'lnvhc_0000060', N'nvhc_0000001', N'8-2022', 12000000, 387096, 3, 0, 0, 0, 1, 3, 1161288, 193548, 1354836)
GO
INSERT [dbo].[LuongNVHC] ([maLuongNVHC], [maNVHC], [luongThang], [luongCoBan], [luongNgay], [soNgayDiLam], [soNgayNghiCoPhep], [soNgayNghiKhongPhep], [soNgayTangCa], [soNgayLamChuNhat], [soNgayDuocTinhLuong], [tongLuongCoBan], [tongLuongThem], [thanhLuong]) VALUES (N'lnvhc_0000061', N'nvhc_0000006', N'8-2022', 17000000, 548387, 3, 0, 0, 0, 1, 3, 1645161, 274193, 1919354)
GO
INSERT [dbo].[LuongNVHC] ([maLuongNVHC], [maNVHC], [luongThang], [luongCoBan], [luongNgay], [soNgayDiLam], [soNgayNghiCoPhep], [soNgayNghiKhongPhep], [soNgayTangCa], [soNgayLamChuNhat], [soNgayDuocTinhLuong], [tongLuongCoBan], [tongLuongThem], [thanhLuong]) VALUES (N'lnvhc_0000062', N'nvhc_0000007', N'8-2022', 9000000, 290322, 3, 0, 0, 0, 1, 3, 870966, 145161, 1016127)
GO
INSERT [dbo].[LuongNVHC] ([maLuongNVHC], [maNVHC], [luongThang], [luongCoBan], [luongNgay], [soNgayDiLam], [soNgayNghiCoPhep], [soNgayNghiKhongPhep], [soNgayTangCa], [soNgayLamChuNhat], [soNgayDuocTinhLuong], [tongLuongCoBan], [tongLuongThem], [thanhLuong]) VALUES (N'lnvhc_0000063', N'nvhc_0000002', N'8-2022', 9000000, 290322, 3, 0, 0, 0, 1, 3, 870966, 145161, 1016127)
GO
INSERT [dbo].[LuongNVHC] ([maLuongNVHC], [maNVHC], [luongThang], [luongCoBan], [luongNgay], [soNgayDiLam], [soNgayNghiCoPhep], [soNgayNghiKhongPhep], [soNgayTangCa], [soNgayLamChuNhat], [soNgayDuocTinhLuong], [tongLuongCoBan], [tongLuongThem], [thanhLuong]) VALUES (N'lnvhc_0000064', N'nvhc_0000003', N'7-2022', 10000000, 322580, 2, 0, 0, 0, 0, 2, 645160, 0, 645160)
GO
INSERT [dbo].[LuongNVHC] ([maLuongNVHC], [maNVHC], [luongThang], [luongCoBan], [luongNgay], [soNgayDiLam], [soNgayNghiCoPhep], [soNgayNghiKhongPhep], [soNgayTangCa], [soNgayLamChuNhat], [soNgayDuocTinhLuong], [tongLuongCoBan], [tongLuongThem], [thanhLuong]) VALUES (N'lnvhc_0000065', N'nvhc_0000000', N'7-2022', 8000000, 258064, 2, 0, 0, 0, 0, 2, 516128, 0, 516128)
GO
INSERT [dbo].[LuongNVHC] ([maLuongNVHC], [maNVHC], [luongThang], [luongCoBan], [luongNgay], [soNgayDiLam], [soNgayNghiCoPhep], [soNgayNghiKhongPhep], [soNgayTangCa], [soNgayLamChuNhat], [soNgayDuocTinhLuong], [tongLuongCoBan], [tongLuongThem], [thanhLuong]) VALUES (N'lnvhc_0000066', N'nvhc_0000005', N'7-2022', 15000000, 483870, 2, 0, 0, 0, 0, 2, 967740, 0, 967740)
GO
INSERT [dbo].[LuongNVHC] ([maLuongNVHC], [maNVHC], [luongThang], [luongCoBan], [luongNgay], [soNgayDiLam], [soNgayNghiCoPhep], [soNgayNghiKhongPhep], [soNgayTangCa], [soNgayLamChuNhat], [soNgayDuocTinhLuong], [tongLuongCoBan], [tongLuongThem], [thanhLuong]) VALUES (N'lnvhc_0000067', N'nvhc_0000004', N'7-2022', 8000000, 258064, 2, 0, 0, 0, 0, 2, 516128, 0, 516128)
GO
INSERT [dbo].[LuongNVHC] ([maLuongNVHC], [maNVHC], [luongThang], [luongCoBan], [luongNgay], [soNgayDiLam], [soNgayNghiCoPhep], [soNgayNghiKhongPhep], [soNgayTangCa], [soNgayLamChuNhat], [soNgayDuocTinhLuong], [tongLuongCoBan], [tongLuongThem], [thanhLuong]) VALUES (N'lnvhc_0000068', N'nvhc_0000001', N'7-2022', 12000000, 387096, 2, 0, 0, 0, 0, 2, 774192, 0, 774192)
GO
INSERT [dbo].[LuongNVHC] ([maLuongNVHC], [maNVHC], [luongThang], [luongCoBan], [luongNgay], [soNgayDiLam], [soNgayNghiCoPhep], [soNgayNghiKhongPhep], [soNgayTangCa], [soNgayLamChuNhat], [soNgayDuocTinhLuong], [tongLuongCoBan], [tongLuongThem], [thanhLuong]) VALUES (N'lnvhc_0000069', N'nvhc_0000006', N'7-2022', 17000000, 548387, 2, 0, 0, 0, 0, 2, 1096774, 0, 1096774)
GO
INSERT [dbo].[LuongNVHC] ([maLuongNVHC], [maNVHC], [luongThang], [luongCoBan], [luongNgay], [soNgayDiLam], [soNgayNghiCoPhep], [soNgayNghiKhongPhep], [soNgayTangCa], [soNgayLamChuNhat], [soNgayDuocTinhLuong], [tongLuongCoBan], [tongLuongThem], [thanhLuong]) VALUES (N'lnvhc_0000070', N'nvhc_0000007', N'7-2022', 9000000, 290322, 2, 0, 0, 0, 0, 2, 580644, 0, 580644)
GO
INSERT [dbo].[LuongNVHC] ([maLuongNVHC], [maNVHC], [luongThang], [luongCoBan], [luongNgay], [soNgayDiLam], [soNgayNghiCoPhep], [soNgayNghiKhongPhep], [soNgayTangCa], [soNgayLamChuNhat], [soNgayDuocTinhLuong], [tongLuongCoBan], [tongLuongThem], [thanhLuong]) VALUES (N'lnvhc_0000071', N'nvhc_0000002', N'7-2022', 9000000, 290322, 2, 0, 0, 0, 0, 2, 580644, 0, 580644)
GO
INSERT [dbo].[NhanVienHanhChach] ([maNVHC], [tenNVHC], [gioiTinh], [ngaySinh], [diaChi], [soDienThoai], [ngayTGCT], [chucVu], [trinhDo], [tiengAnh], [luongCoBan], [maPB]) VALUES (N'nvhc_0000000', N'Nguyễn Thị Mai Anh', 1, CAST(N'1995-04-15' AS Date), N'123 Nguyễn Văn Linh, Quận Thanh Khê, TP. Đà Nẵng', N'0912345678', CAST(N'2015-01-01' AS Date), N'Nhân viên kế toán', N'Dưới Đại học', N'Mức yếu', 8000000, N'pb_0000000')
GO
INSERT [dbo].[NhanVienHanhChach] ([maNVHC], [tenNVHC], [gioiTinh], [ngaySinh], [diaChi], [soDienThoai], [ngayTGCT], [chucVu], [trinhDo], [tiengAnh], [luongCoBan], [maPB]) VALUES (N'nvhc_0000001', N'Trần Văn Hưng', 0, CAST(N'1994-12-02' AS Date), N'456 Nguyễn Hữu Thọ, Quận 7, TP. Hồ Chí Minh', N'0912345678', CAST(N'2017-09-15' AS Date), N'Nhân viên marketing', N'Đại học', N'Mức khá', 12000000, N'pb_0000000')
GO
INSERT [dbo].[NhanVienHanhChach] ([maNVHC], [tenNVHC], [gioiTinh], [ngaySinh], [diaChi], [soDienThoai], [ngayTGCT], [chucVu], [trinhDo], [tiengAnh], [luongCoBan], [maPB]) VALUES (N'nvhc_0000002', N'Lê Thị Thanh Tuyền', 1, CAST(N'1996-10-26' AS Date), N'789 Trần Hưng Đạo, Quận 1, TP. Hồ Chí Minh', N'0312345678', CAST(N'2016-05-11' AS Date), N'Nhân viên IT', N'Trên Đại học', N'Mức khá', 9000000, N'pb_0000000')
GO
INSERT [dbo].[NhanVienHanhChach] ([maNVHC], [tenNVHC], [gioiTinh], [ngaySinh], [diaChi], [soDienThoai], [ngayTGCT], [chucVu], [trinhDo], [tiengAnh], [luongCoBan], [maPB]) VALUES (N'nvhc_0000003', N'Phạm Văn An', 0, CAST(N'1997-03-22' AS Date), N'234 Hoàng Quốc Việt, Quận Cầu Giấy, TP. Hà Nội', N'0312345678', CAST(N'2017-12-13' AS Date), N'Nhân viên chăm sóc khách hàng', N'Đại học', N'Mức giỏi', 10000000, N'pb_0000000')
GO
INSERT [dbo].[NhanVienHanhChach] ([maNVHC], [tenNVHC], [gioiTinh], [ngaySinh], [diaChi], [soDienThoai], [ngayTGCT], [chucVu], [trinhDo], [tiengAnh], [luongCoBan], [maPB]) VALUES (N'nvhc_0000004', N'Nguyễn Thanh Huyền', 1, CAST(N'1996-03-22' AS Date), N'234 Hoàng Quốc Việt, Quận Cầu Giấy, TP. Hà Nội', N'0312345678', CAST(N'2014-11-03' AS Date), N'Nhân viên nhân sự', N'Trên Đại học', N'Mức giỏi', 8000000, N'pb_0000000')
GO
INSERT [dbo].[NhanVienHanhChach] ([maNVHC], [tenNVHC], [gioiTinh], [ngaySinh], [diaChi], [soDienThoai], [ngayTGCT], [chucVu], [trinhDo], [tiengAnh], [luongCoBan], [maPB]) VALUES (N'nvhc_0000005', N'Lê Hữu Bằng', 0, CAST(N'1986-08-06' AS Date), N'234 Hoàng Quốc Việt, Quận Cầu Giấy, TP. Hà Nội', N'0312345678', CAST(N'2002-12-07' AS Date), N'Nhân viên IT', N'Đại học', N'Mức khá', 15000000, N'pb_0000000')
GO
INSERT [dbo].[NhanVienHanhChach] ([maNVHC], [tenNVHC], [gioiTinh], [ngaySinh], [diaChi], [soDienThoai], [ngayTGCT], [chucVu], [trinhDo], [tiengAnh], [luongCoBan], [maPB]) VALUES (N'nvhc_0000006', N'Phạm Tiến Thành', 0, CAST(N'1988-10-15' AS Date), N'234 Hoàng Quốc Việt, Quận Cầu Giấy, TP. Hà Nội', N'0312345678', CAST(N'2003-12-20' AS Date), N'Nhân viên marketing', N'Trên Đại học', N'Mức giỏi', 17000000, N'pb_0000000')
GO
INSERT [dbo].[NhanVienHanhChach] ([maNVHC], [tenNVHC], [gioiTinh], [ngaySinh], [diaChi], [soDienThoai], [ngayTGCT], [chucVu], [trinhDo], [tiengAnh], [luongCoBan], [maPB]) VALUES (N'nvhc_0000007', N'Nguyễn Khắc Trí', 0, CAST(N'1968-10-19' AS Date), N'234 Hoàng Quốc Việt, Quận Cầu Giấy, TP. Hà Nội', N'0312345678', CAST(N'2018-12-08' AS Date), N'Nhân viên chăm sóc khách hàng', N'Đại học', N'Mức giỏi', 9000000, N'pb_0000000')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000000', 20, N'ppc_0000000')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000001', 20, N'ppc_0000001')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000002', 20, N'ppc_0000002')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000003', 20, N'ppc_0000003')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000004', 20, N'ppc_0000004')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000005', 20, N'ppc_0000005')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000006', 20, N'ppc_0000006')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000007', 20, N'ppc_0000007')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000008', 20, N'ppc_0000008')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000009', 20, N'ppc_0000009')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000010', 20, N'ppc_0000010')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000011', 20, N'ppc_0000011')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000012', 20, N'ppc_0000012')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000013', 20, N'ppc_0000013')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000014', 20, N'ppc_0000014')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000015', 20, N'ppc_0000015')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000016', 20, N'ppc_0000016')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000017', 20, N'ppc_0000017')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000018', 20, N'ppc_0000018')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000019', 20, N'ppc_0000019')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000020', 20, N'ppc_0000020')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000021', 20, N'ppc_0000021')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000022', 20, N'ppc_0000022')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000023', 20, N'ppc_0000023')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000024', 20, N'ppc_0000024')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000025', 20, N'ppc_0000025')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000026', 20, N'ppc_0000026')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000027', 20, N'ppc_0000027')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000028', 20, N'ppc_0000028')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000029', 20, N'ppc_0000029')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000030', 20, N'ppc_0000030')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000031', 20, N'ppc_0000031')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000032', 20, N'ppc_0000032')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000033', 20, N'ppc_0000033')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000034', 20, N'ppc_0000034')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000035', 20, N'ppc_0000035')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000036', 20, N'ppc_0000036')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000037', 20, N'ppc_0000037')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000038', 20, N'ppc_0000038')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000039', 20, N'ppc_0000039')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000040', 20, N'ppc_0000040')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000041', 20, N'ppc_0000041')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000042', 20, N'ppc_0000042')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000043', 20, N'ppc_0000043')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000044', 20, N'ppc_0000044')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000045', 20, N'ppc_0000045')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000046', 20, N'ppc_0000046')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000047', 20, N'ppc_0000047')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000048', 20, N'ppc_0000048')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000049', 20, N'ppc_0000049')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000050', 20, N'ppc_0000050')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000051', 20, N'ppc_0000051')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000052', 20, N'ppc_0000052')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000053', 20, N'ppc_0000053')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000054', 20, N'ppc_0000054')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000055', 20, N'ppc_0000055')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000056', 20, N'ppc_0000056')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000057', 20, N'ppc_0000057')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000058', 20, N'ppc_0000058')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000059', 20, N'ppc_0000059')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000060', 20, N'ppc_0000060')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000061', 20, N'ppc_0000061')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000062', 20, N'ppc_0000062')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000063', 20, N'ppc_0000063')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000064', 20, N'ppc_0000064')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000065', 20, N'ppc_0000065')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000066', 20, N'ppc_0000066')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000067', 20, N'ppc_0000067')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000068', 20, N'ppc_0000068')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000069', 20, N'ppc_0000069')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000070', 20, N'ppc_0000070')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000071', 20, N'ppc_0000071')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000072', 20, N'ppc_0000072')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000073', 20, N'ppc_0000073')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000074', 20, N'ppc_0000074')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000075', 20, N'ppc_0000075')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000076', 20, N'ppc_0000076')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000077', 20, N'ppc_0000077')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000078', 20, N'ppc_0000078')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000079', 20, N'ppc_0000079')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000080', 20, N'ppc_0000080')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000081', 20, N'ppc_0000081')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000082', 20, N'ppc_0000082')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000083', 20, N'ppc_0000083')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000084', 20, N'ppc_0000084')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000085', 20, N'ppc_0000085')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000086', 20, N'ppc_0000086')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000087', 20, N'ppc_0000087')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000088', 20, N'ppc_0000088')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000089', 20, N'ppc_0000089')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000090', 20, N'ppc_0000090')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000091', 20, N'ppc_0000091')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000092', 20, N'ppc_0000092')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000093', 20, N'ppc_0000093')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000094', 20, N'ppc_0000094')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000095', 20, N'ppc_0000095')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000096', 20, N'ppc_0000096')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000097', 20, N'ppc_0000097')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000098', 20, N'ppc_0000098')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000099', 20, N'ppc_0000099')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000100', 20, N'ppc_0000100')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000101', 20, N'ppc_0000101')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000102', 20, N'ppc_0000102')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000103', 20, N'ppc_0000103')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000104', 20, N'ppc_0000104')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000105', 20, N'ppc_0000105')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000106', 20, N'ppc_0000106')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000107', 20, N'ppc_0000107')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000108', 20, N'ppc_0000108')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000109', 20, N'ppc_0000109')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000110', 20, N'ppc_0000110')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000111', 20, N'ppc_0000111')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000112', 20, N'ppc_0000112')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000113', 20, N'ppc_0000113')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000114', 20, N'ppc_0000114')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000115', 20, N'ppc_0000115')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000116', 20, N'ppc_0000116')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000117', 20, N'ppc_0000117')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000118', 20, N'ppc_0000118')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000119', 20, N'ppc_0000119')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000120', 20, N'ppc_0000120')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000121', 20, N'ppc_0000121')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000122', 20, N'ppc_0000122')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000123', 20, N'ppc_0000123')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000124', 20, N'ppc_0000124')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000125', 20, N'ppc_0000125')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000126', 20, N'ppc_0000126')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000127', 20, N'ppc_0000127')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000128', 20, N'ppc_0000128')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000129', 20, N'ppc_0000129')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000130', 20, N'ppc_0000130')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000131', 20, N'ppc_0000131')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000132', 20, N'ppc_0000132')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000133', 20, N'ppc_0000133')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000134', 20, N'ppc_0000134')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000135', 20, N'ppc_0000135')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000136', 20, N'ppc_0000136')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000137', 20, N'ppc_0000137')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000138', 20, N'ppc_0000138')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000139', 20, N'ppc_0000139')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000140', 20, N'ppc_0000140')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000141', 20, N'ppc_0000141')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000142', 20, N'ppc_0000142')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000143', 20, N'ppc_0000143')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000144', 20, N'ppc_0000144')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000145', 20, N'ppc_0000145')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000146', 20, N'ppc_0000146')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000147', 20, N'ppc_0000147')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000148', 20, N'ppc_0000148')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000149', 20, N'ppc_0000149')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000150', 20, N'ppc_0000150')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000151', 20, N'ppc_0000151')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000152', 20, N'ppc_0000152')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000153', 20, N'ppc_0000153')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000154', 20, N'ppc_0000154')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000155', 20, N'ppc_0000155')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000156', 20, N'ppc_0000156')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000157', 20, N'ppc_0000157')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000158', 20, N'ppc_0000158')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000159', 20, N'ppc_0000159')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000160', 20, N'ppc_0000160')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000161', 20, N'ppc_0000161')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000162', 20, N'ppc_0000162')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000163', 20, N'ppc_0000163')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000164', 20, N'ppc_0000164')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000165', 20, N'ppc_0000165')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000166', 20, N'ppc_0000166')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000167', 20, N'ppc_0000167')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000168', 20, N'ppc_0000168')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000169', 20, N'ppc_0000169')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000170', 20, N'ppc_0000170')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000171', 20, N'ppc_0000171')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000172', 20, N'ppc_0000172')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000173', 20, N'ppc_0000173')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000174', 20, N'ppc_0000174')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000175', 20, N'ppc_0000175')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000176', 20, N'ppc_0000176')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000177', 20, N'ppc_0000177')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000178', 20, N'ppc_0000178')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000179', 20, N'ppc_0000179')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000180', 20, N'ppc_0000180')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000181', 20, N'ppc_0000181')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000182', 20, N'ppc_0000182')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000183', 20, N'ppc_0000183')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000184', 20, N'ppc_0000184')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000185', 20, N'ppc_0000185')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000186', 20, N'ppc_0000186')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000187', 20, N'ppc_0000187')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000188', 20, N'ppc_0000188')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000189', 20, N'ppc_0000189')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000190', 20, N'ppc_0000190')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000191', 20, N'ppc_0000191')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000192', 20, N'ppc_0000192')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000193', 20, N'ppc_0000193')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000194', 20, N'ppc_0000194')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000195', 20, N'ppc_0000195')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000196', 20, N'ppc_0000196')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000197', 20, N'ppc_0000197')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000198', 20, N'ppc_0000198')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000199', 20, N'ppc_0000199')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000200', 20, N'ppc_0000200')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000201', 20, N'ppc_0000201')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000202', 20, N'ppc_0000202')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000203', 20, N'ppc_0000203')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000204', 20, N'ppc_0000204')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000205', 20, N'ppc_0000205')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000206', 20, N'ppc_0000206')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000207', 20, N'ppc_0000207')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000208', 20, N'ppc_0000208')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000209', 20, N'ppc_0000209')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000210', 20, N'ppc_0000210')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000211', 20, N'ppc_0000211')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000212', 20, N'ppc_0000212')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000213', 20, N'ppc_0000213')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000214', 20, N'ppc_0000214')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000215', 20, N'ppc_0000215')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000216', 20, N'ppc_0000216')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000217', 20, N'ppc_0000217')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000218', 20, N'ppc_0000218')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000219', 20, N'ppc_0000219')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000220', 20, N'ppc_0000220')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000221', 20, N'ppc_0000221')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000222', 20, N'ppc_0000222')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000223', 20, N'ppc_0000223')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000224', 20, N'ppc_0000224')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000225', 20, N'ppc_0000225')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000226', 20, N'ppc_0000226')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000227', 20, N'ppc_0000227')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000228', 20, N'ppc_0000228')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000229', 20, N'ppc_0000229')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000230', 20, N'ppc_0000230')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000231', 20, N'ppc_0000231')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000232', 20, N'ppc_0000232')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000233', 20, N'ppc_0000233')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000234', 20, N'ppc_0000234')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000235', 20, N'ppc_0000235')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000236', 20, N'ppc_0000236')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000237', 20, N'ppc_0000237')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000238', 20, N'ppc_0000238')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000239', 20, N'ppc_0000239')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000240', 20, N'ppc_0000240')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000241', 20, N'ppc_0000241')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000242', 20, N'ppc_0000242')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000243', 20, N'ppc_0000243')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000244', 20, N'ppc_0000244')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000245', 20, N'ppc_0000245')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000246', 20, N'ppc_0000246')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000247', 20, N'ppc_0000247')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000248', 20, N'ppc_0000248')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000249', 20, N'ppc_0000249')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000250', 20, N'ppc_0000250')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000251', 20, N'ppc_0000251')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000252', 20, N'ppc_0000252')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000253', 20, N'ppc_0000253')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000254', 20, N'ppc_0000254')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000255', 20, N'ppc_0000255')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000256', 20, N'ppc_0000256')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000257', 20, N'ppc_0000257')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000258', 20, N'ppc_0000258')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000259', 20, N'ppc_0000259')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000260', 20, N'ppc_0000260')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000261', 20, N'ppc_0000261')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000262', 20, N'ppc_0000262')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000263', 20, N'ppc_0000263')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000264', 20, N'ppc_0000264')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000265', 20, N'ppc_0000265')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000266', 20, N'ppc_0000266')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000267', 20, N'ppc_0000267')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000268', 20, N'ppc_0000268')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000269', 20, N'ppc_0000269')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000270', 20, N'ppc_0000270')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000271', 20, N'ppc_0000271')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000272', 20, N'ppc_0000272')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000273', 20, N'ppc_0000273')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000274', 20, N'ppc_0000274')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000275', 20, N'ppc_0000275')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000276', 20, N'ppc_0000276')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000277', 20, N'ppc_0000277')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000278', 20, N'ppc_0000278')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000279', 20, N'ppc_0000279')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000280', 20, N'ppc_0000280')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000281', 20, N'ppc_0000281')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000282', 20, N'ppc_0000282')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000283', 20, N'ppc_0000283')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000284', 20, N'ppc_0000284')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000285', 20, N'ppc_0000285')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000286', 20, N'ppc_0000286')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000287', 20, N'ppc_0000287')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000288', 20, N'ppc_0000288')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000289', 20, N'ppc_0000289')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000290', 20, N'ppc_0000290')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000291', 20, N'ppc_0000291')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000292', 20, N'ppc_0000292')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000293', 20, N'ppc_0000293')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000294', 20, N'ppc_0000294')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000295', 20, N'ppc_0000295')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000296', 20, N'ppc_0000296')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000297', 20, N'ppc_0000297')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000298', 20, N'ppc_0000298')
GO
INSERT [dbo].[PhieuChamCongCN] ([maPCCCN], [soLuong], [maPPC]) VALUES (N'pcccn_0000299', 20, N'ppc_0000299')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000000', 1, CAST(N'2023-02-01' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000001', 0, CAST(N'2023-02-02' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000002', 0, CAST(N'2023-02-03' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000003', 0, CAST(N'2023-02-04' AS Date), N'Vắng có phép', N'Đám cưới em ruột', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000004', 0, CAST(N'2023-02-05' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000005', 0, CAST(N'2023-02-06' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000006', 0, CAST(N'2023-02-07' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000007', 1, CAST(N'2023-02-08' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000008', 0, CAST(N'2023-02-09' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000009', 0, CAST(N'2023-02-10' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000010', 0, CAST(N'2023-02-11' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000011', 0, CAST(N'2023-02-12' AS Date), N'Vắng có phép', N'Đi mổ ruột thừa', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000012', 0, CAST(N'2023-02-13' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000013', 0, CAST(N'2023-02-14' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000014', 0, CAST(N'2023-02-15' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000015', 0, CAST(N'2023-02-16' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000016', 0, CAST(N'2023-02-17' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000017', 0, CAST(N'2023-02-18' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000018', 0, CAST(N'2023-02-19' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000019', 0, CAST(N'2023-02-20' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000020', 0, CAST(N'2023-02-21' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000021', 0, CAST(N'2023-02-22' AS Date), N'Vắng không phép', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000022', 0, CAST(N'2023-02-23' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000023', 0, CAST(N'2023-02-24' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000024', 0, CAST(N'2023-02-25' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000025', 0, CAST(N'2023-02-26' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000026', 0, CAST(N'2023-02-27' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000027', 0, CAST(N'2023-02-28' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000028', 0, CAST(N'2023-02-01' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000029', 0, CAST(N'2023-02-02' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000030', 0, CAST(N'2023-02-03' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000031', 0, CAST(N'2023-02-04' AS Date), N'Vắng có phép', N'Đám cưới em ruột', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000032', 0, CAST(N'2023-02-05' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000033', 0, CAST(N'2023-02-06' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000034', 0, CAST(N'2023-02-07' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000035', 0, CAST(N'2023-02-08' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000036', 0, CAST(N'2023-02-09' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000037', 0, CAST(N'2023-02-10' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000038', 0, CAST(N'2023-02-11' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000039', 0, CAST(N'2023-02-12' AS Date), N'Vắng có phép', N'Đi mổ ruột thừa', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000040', 0, CAST(N'2023-02-13' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000041', 0, CAST(N'2023-02-14' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000042', 0, CAST(N'2023-02-15' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000043', 0, CAST(N'2023-02-16' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000044', 0, CAST(N'2023-02-17' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000045', 0, CAST(N'2023-02-18' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000046', 0, CAST(N'2023-02-19' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000047', 0, CAST(N'2023-02-20' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000048', 0, CAST(N'2023-02-21' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000049', 0, CAST(N'2023-02-22' AS Date), N'Vắng không phép', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000050', 0, CAST(N'2023-02-23' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000051', 0, CAST(N'2023-02-24' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000052', 0, CAST(N'2023-02-25' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000053', 0, CAST(N'2023-02-26' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000054', 0, CAST(N'2023-02-27' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000055', 0, CAST(N'2023-02-28' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000056', 0, CAST(N'2023-02-01' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000057', 0, CAST(N'2023-02-02' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000058', 0, CAST(N'2023-02-03' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000059', 0, CAST(N'2023-02-04' AS Date), N'Vắng có phép', N'Đám cưới em ruột', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000060', 0, CAST(N'2023-02-05' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000061', 0, CAST(N'2023-02-06' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000062', 0, CAST(N'2023-02-07' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000063', 0, CAST(N'2023-02-08' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000064', 0, CAST(N'2023-02-09' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000065', 0, CAST(N'2023-02-10' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000066', 0, CAST(N'2023-02-11' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000067', 0, CAST(N'2023-02-12' AS Date), N'Vắng có phép', N'Đi mổ ruột thừa', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000068', 0, CAST(N'2023-02-13' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000069', 0, CAST(N'2023-02-14' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000070', 0, CAST(N'2023-02-15' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000071', 0, CAST(N'2023-02-16' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000072', 0, CAST(N'2023-02-17' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000073', 0, CAST(N'2023-02-18' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000074', 0, CAST(N'2023-02-19' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000075', 0, CAST(N'2023-02-20' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000076', 0, CAST(N'2023-02-21' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000077', 0, CAST(N'2023-02-22' AS Date), N'Vắng không phép', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000078', 0, CAST(N'2023-02-23' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000079', 0, CAST(N'2023-02-24' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000080', 0, CAST(N'2023-02-25' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000081', 0, CAST(N'2023-02-26' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000082', 0, CAST(N'2023-02-27' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000083', 0, CAST(N'2023-02-28' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000084', 0, CAST(N'2023-02-01' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000085', 0, CAST(N'2023-02-02' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000086', 0, CAST(N'2023-02-03' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000087', 0, CAST(N'2023-02-04' AS Date), N'Vắng có phép', N'Đám cưới em ruột', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000088', 0, CAST(N'2023-02-05' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000089', 0, CAST(N'2023-02-06' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000090', 0, CAST(N'2023-02-07' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000091', 0, CAST(N'2023-02-08' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000092', 0, CAST(N'2023-02-09' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000093', 0, CAST(N'2023-02-10' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000094', 0, CAST(N'2023-02-11' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000095', 0, CAST(N'2023-02-12' AS Date), N'Vắng có phép', N'Đi mổ ruột thừa', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000096', 0, CAST(N'2023-02-13' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000097', 0, CAST(N'2023-02-14' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000098', 0, CAST(N'2023-02-15' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000099', 0, CAST(N'2023-02-16' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000100', 0, CAST(N'2023-02-17' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000101', 0, CAST(N'2023-02-18' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000102', 0, CAST(N'2023-02-19' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000103', 0, CAST(N'2023-02-20' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000104', 0, CAST(N'2023-02-21' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000105', 0, CAST(N'2023-02-22' AS Date), N'Vắng không phép', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000106', 0, CAST(N'2023-02-23' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000107', 0, CAST(N'2023-02-24' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000108', 0, CAST(N'2023-02-25' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000109', 0, CAST(N'2023-02-26' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000110', 0, CAST(N'2023-02-27' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000111', 0, CAST(N'2023-02-28' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000112', 0, CAST(N'2023-02-01' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000113', 0, CAST(N'2023-02-02' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000114', 0, CAST(N'2023-02-03' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000115', 0, CAST(N'2023-02-04' AS Date), N'Vắng có phép', N'Đám cưới em ruột', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000116', 0, CAST(N'2023-02-05' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000117', 0, CAST(N'2023-02-06' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000118', 0, CAST(N'2023-02-07' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000119', 0, CAST(N'2023-02-08' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000120', 0, CAST(N'2023-02-09' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000121', 0, CAST(N'2023-02-10' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000122', 0, CAST(N'2023-02-11' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000123', 0, CAST(N'2023-02-12' AS Date), N'Vắng có phép', N'Đi mổ ruột thừa', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000124', 0, CAST(N'2023-02-13' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000125', 0, CAST(N'2023-02-14' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000126', 0, CAST(N'2023-02-15' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000127', 0, CAST(N'2023-02-16' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000128', 0, CAST(N'2023-02-17' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000129', 0, CAST(N'2023-02-18' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000130', 0, CAST(N'2023-02-19' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000131', 0, CAST(N'2023-02-20' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000132', 1, CAST(N'2023-02-21' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000133', 0, CAST(N'2023-02-22' AS Date), N'Vắng không phép', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000134', 0, CAST(N'2023-02-23' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000135', 0, CAST(N'2023-02-24' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000136', 0, CAST(N'2023-02-25' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000137', 0, CAST(N'2023-02-26' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000138', 0, CAST(N'2023-02-27' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000139', 0, CAST(N'2023-02-28' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000140', 1, CAST(N'2023-02-01' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000141', 1, CAST(N'2023-02-01' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000142', 0, CAST(N'2023-02-01' AS Date), N'Vắng có phép', N'Bệnh ', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000143', 0, CAST(N'2023-02-02' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000144', 0, CAST(N'2023-02-02' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000145', 0, CAST(N'2023-02-02' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000146', 0, CAST(N'2023-02-03' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000147', 0, CAST(N'2023-02-03' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000148', 0, CAST(N'2023-02-03' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000149', 0, CAST(N'2023-02-04' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000150', 0, CAST(N'2023-02-04' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000151', 0, CAST(N'2023-02-04' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000152', 0, CAST(N'2023-02-05' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000153', 0, CAST(N'2023-02-05' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000154', 0, CAST(N'2023-02-05' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000155', 0, CAST(N'2023-02-06' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000156', 0, CAST(N'2023-02-06' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000157', 0, CAST(N'2023-02-06' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000158', 0, CAST(N'2023-02-07' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000159', 0, CAST(N'2023-02-07' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000160', 0, CAST(N'2023-02-07' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000161', 0, CAST(N'2023-02-08' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000162', 0, CAST(N'2023-02-08' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000163', 0, CAST(N'2023-02-08' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000164', 0, CAST(N'2023-02-09' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000165', 0, CAST(N'2023-02-09' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000166', 0, CAST(N'2023-02-09' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000167', 0, CAST(N'2023-02-10' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000168', 0, CAST(N'2023-02-10' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000169', 0, CAST(N'2023-02-10' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000170', 0, CAST(N'2023-02-11' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000171', 0, CAST(N'2023-02-11' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000172', 0, CAST(N'2023-02-11' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000173', 0, CAST(N'2023-02-12' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000174', 0, CAST(N'2023-02-12' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000175', 0, CAST(N'2023-02-12' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000176', 0, CAST(N'2023-02-13' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000177', 0, CAST(N'2023-02-13' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000178', 0, CAST(N'2023-02-13' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000179', 0, CAST(N'2023-02-14' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000180', 0, CAST(N'2023-02-14' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000181', 0, CAST(N'2023-02-14' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000182', 0, CAST(N'2023-02-15' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000183', 0, CAST(N'2023-02-15' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000184', 0, CAST(N'2023-02-15' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000185', 0, CAST(N'2023-02-16' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000186', 0, CAST(N'2023-02-16' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000187', 0, CAST(N'2023-02-16' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000188', 0, CAST(N'2023-02-17' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000189', 0, CAST(N'2023-02-17' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000190', 0, CAST(N'2023-02-17' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000191', 0, CAST(N'2023-02-18' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000192', 0, CAST(N'2023-02-18' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000193', 0, CAST(N'2023-02-18' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000194', 0, CAST(N'2023-02-19' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000195', 0, CAST(N'2023-02-19' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000196', 0, CAST(N'2023-02-19' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000197', 0, CAST(N'2023-02-20' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000198', 0, CAST(N'2023-02-20' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000199', 0, CAST(N'2023-02-20' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000200', 0, CAST(N'2023-02-21' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000201', 0, CAST(N'2023-02-21' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000202', 0, CAST(N'2023-02-21' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000203', 0, CAST(N'2023-02-22' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000204', 0, CAST(N'2023-02-22' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000205', 0, CAST(N'2023-02-22' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000206', 0, CAST(N'2023-02-23' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000207', 0, CAST(N'2023-02-23' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000208', 0, CAST(N'2023-02-23' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000209', 0, CAST(N'2023-02-24' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000210', 0, CAST(N'2023-02-24' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000211', 0, CAST(N'2023-02-24' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000212', 0, CAST(N'2023-02-25' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000213', 0, CAST(N'2023-02-25' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000214', 0, CAST(N'2023-02-25' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000215', 0, CAST(N'2023-02-26' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000216', 1, CAST(N'2023-02-26' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000217', 0, CAST(N'2023-02-26' AS Date), N'Vắng có phép', N'Đi đám cưới', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000218', 0, CAST(N'2023-02-27' AS Date), N'Vắng có phép', N'Đi đám cưới', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000219', 0, CAST(N'2023-02-27' AS Date), N'Vắng có phép', N'Đi đám cưới', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000220', 0, CAST(N'2023-02-27' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000221', 0, CAST(N'2023-02-28' AS Date), N'Vắng không phép', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000222', 0, CAST(N'2023-02-28' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000223', 0, CAST(N'2023-02-28' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000224', 0, CAST(N'2023-03-01' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000225', 0, CAST(N'2023-03-01' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000226', 0, CAST(N'2023-03-01' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000227', 0, CAST(N'2023-03-01' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000228', 0, CAST(N'2023-03-01' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000229', 0, CAST(N'2023-03-01' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000230', 0, CAST(N'2023-03-01' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000231', 0, CAST(N'2023-03-01' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000232', 0, CAST(N'2023-03-02' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000233', 0, CAST(N'2023-03-02' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000234', 0, CAST(N'2023-03-02' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000235', 0, CAST(N'2023-03-02' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000236', 0, CAST(N'2023-03-02' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000237', 0, CAST(N'2023-03-02' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000238', 0, CAST(N'2023-03-02' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000239', 0, CAST(N'2023-03-02' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000240', 0, CAST(N'2023-03-03' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000241', 0, CAST(N'2023-03-03' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000242', 0, CAST(N'2023-03-03' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000243', 0, CAST(N'2023-03-03' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000244', 0, CAST(N'2023-03-03' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000245', 0, CAST(N'2023-03-03' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000246', 0, CAST(N'2023-03-03' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000247', 0, CAST(N'2023-03-03' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000248', 0, CAST(N'2023-03-04' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000249', 0, CAST(N'2023-03-04' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000250', 0, CAST(N'2023-03-04' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000251', 0, CAST(N'2023-03-04' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000252', 0, CAST(N'2023-03-04' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000253', 0, CAST(N'2023-03-04' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000254', 0, CAST(N'2023-03-04' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000255', 0, CAST(N'2023-03-04' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000256', 0, CAST(N'2023-03-05' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000257', 0, CAST(N'2023-03-05' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000258', 0, CAST(N'2023-03-05' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000259', 0, CAST(N'2023-03-05' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000260', 0, CAST(N'2023-03-05' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000261', 0, CAST(N'2023-03-05' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000262', 0, CAST(N'2023-03-05' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000263', 0, CAST(N'2023-03-05' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000264', 0, CAST(N'2023-03-06' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000265', 0, CAST(N'2023-03-06' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000266', 0, CAST(N'2023-03-06' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000267', 0, CAST(N'2023-03-06' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000268', 0, CAST(N'2023-03-06' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000269', 0, CAST(N'2023-03-06' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000270', 0, CAST(N'2023-03-06' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000271', 0, CAST(N'2023-03-06' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000272', 0, CAST(N'2023-03-07' AS Date), N'Vắng có phép', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000273', 0, CAST(N'2023-03-07' AS Date), N'Vắng có phép', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000274', 0, CAST(N'2023-03-07' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000275', 0, CAST(N'2023-03-07' AS Date), N'Vắng không phép', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000276', 0, CAST(N'2023-03-07' AS Date), N'Vắng không phép', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000277', 0, CAST(N'2023-03-07' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000278', 0, CAST(N'2023-03-07' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000279', 0, CAST(N'2023-03-07' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000280', 0, CAST(N'2023-03-08' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000281', 0, CAST(N'2023-03-08' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000282', 1, CAST(N'2023-03-08' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000283', 1, CAST(N'2023-03-08' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000284', 1, CAST(N'2023-03-08' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000285', 1, CAST(N'2023-03-08' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000286', 0, CAST(N'2023-03-08' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000287', 0, CAST(N'2023-03-08' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000288', 0, CAST(N'2023-03-09' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000289', 1, CAST(N'2023-03-09' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000290', 1, CAST(N'2023-03-09' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000291', 1, CAST(N'2023-03-09' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000292', 1, CAST(N'2023-03-09' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000293', 1, CAST(N'2023-03-09' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000294', 1, CAST(N'2023-03-09' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000295', 1, CAST(N'2023-03-09' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000296', 0, CAST(N'2023-03-10' AS Date), N'Vắng có phép', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000297', 0, CAST(N'2023-03-10' AS Date), N'Vắng có phép', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000298', 0, CAST(N'2023-03-10' AS Date), N'Vắng có phép', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000299', 0, CAST(N'2023-03-10' AS Date), N'Vắng có phép', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000300', 0, CAST(N'2023-03-10' AS Date), N'Vắng có phép', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000301', 0, CAST(N'2023-03-10' AS Date), N'Vắng có phép', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000302', 0, CAST(N'2023-03-10' AS Date), N'Vắng có phép', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000303', 0, CAST(N'2023-03-10' AS Date), N'Vắng có phép', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000304', 1, CAST(N'2023-03-11' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000305', 1, CAST(N'2023-03-11' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000306', 1, CAST(N'2023-03-11' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000307', 1, CAST(N'2023-03-11' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000308', 1, CAST(N'2023-03-11' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000309', 1, CAST(N'2023-03-11' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000310', 1, CAST(N'2023-03-11' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000311', 1, CAST(N'2023-03-11' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000312', 1, CAST(N'2023-03-12' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000313', 1, CAST(N'2023-03-12' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000314', 1, CAST(N'2023-03-12' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000315', 1, CAST(N'2023-03-12' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000316', 1, CAST(N'2023-03-12' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000317', 1, CAST(N'2023-03-12' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000318', 1, CAST(N'2023-03-12' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000319', 1, CAST(N'2023-03-12' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000320', 0, CAST(N'2023-03-13' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000321', 0, CAST(N'2023-03-13' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000322', 0, CAST(N'2023-03-13' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000323', 0, CAST(N'2023-03-13' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000324', 0, CAST(N'2023-03-13' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000325', 0, CAST(N'2023-03-13' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000326', 0, CAST(N'2023-03-13' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000327', 0, CAST(N'2023-03-13' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000328', 0, CAST(N'2023-03-14' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000329', 0, CAST(N'2023-03-14' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000330', 0, CAST(N'2023-03-14' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000331', 0, CAST(N'2023-03-14' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000332', 0, CAST(N'2023-03-14' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000333', 0, CAST(N'2023-03-14' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000334', 0, CAST(N'2023-03-14' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000335', 0, CAST(N'2023-03-14' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000336', 0, CAST(N'2023-03-15' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000337', 0, CAST(N'2023-03-15' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000338', 0, CAST(N'2023-03-15' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000339', 0, CAST(N'2023-03-15' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000340', 0, CAST(N'2023-03-15' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000341', 0, CAST(N'2023-03-15' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000342', 0, CAST(N'2023-03-15' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000343', 0, CAST(N'2023-03-15' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000344', 0, CAST(N'2023-03-16' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000345', 0, CAST(N'2023-03-16' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000346', 0, CAST(N'2023-03-16' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000347', 0, CAST(N'2023-03-16' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000348', 0, CAST(N'2023-03-16' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000349', 0, CAST(N'2023-03-16' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000350', 0, CAST(N'2023-03-16' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000351', 1, CAST(N'2023-03-16' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000352', 0, CAST(N'2023-03-17' AS Date), N'Vắng không phép', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000353', 0, CAST(N'2023-03-17' AS Date), N'Vắng không phép', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000354', 0, CAST(N'2023-03-17' AS Date), N'Vắng không phép', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000355', 0, CAST(N'2023-03-17' AS Date), N'Vắng không phép', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000356', 0, CAST(N'2023-03-17' AS Date), N'Vắng không phép', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000357', 0, CAST(N'2023-03-17' AS Date), N'Vắng không phép', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000358', 0, CAST(N'2023-03-17' AS Date), N'Vắng không phép', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000359', 0, CAST(N'2023-03-17' AS Date), N'Vắng không phép', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000360', 0, CAST(N'2023-03-18' AS Date), N'Vắng không phép', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000361', 0, CAST(N'2023-03-18' AS Date), N'Vắng không phép', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000362', 0, CAST(N'2023-03-18' AS Date), N'Vắng không phép', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000363', 0, CAST(N'2023-03-18' AS Date), N'Vắng không phép', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000364', 0, CAST(N'2023-03-18' AS Date), N'Vắng không phép', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000365', 0, CAST(N'2023-03-18' AS Date), N'Vắng không phép', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000366', 0, CAST(N'2023-03-18' AS Date), N'Vắng không phép', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000367', 0, CAST(N'2023-03-18' AS Date), N'Vắng không phép', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000368', 1, CAST(N'2023-03-19' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000369', 1, CAST(N'2023-03-19' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000370', 1, CAST(N'2023-03-19' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000371', 1, CAST(N'2023-03-19' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000372', 1, CAST(N'2023-03-19' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000373', 1, CAST(N'2023-03-19' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000374', 1, CAST(N'2023-03-19' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000375', 1, CAST(N'2023-03-19' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000376', 0, CAST(N'2023-03-20' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000377', 0, CAST(N'2023-03-20' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000378', 0, CAST(N'2023-03-20' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000379', 0, CAST(N'2023-03-20' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000380', 0, CAST(N'2023-03-20' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000381', 0, CAST(N'2023-03-20' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000382', 0, CAST(N'2023-03-20' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000383', 0, CAST(N'2023-03-20' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000384', 0, CAST(N'2023-03-21' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000385', 0, CAST(N'2023-03-21' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000386', 0, CAST(N'2023-03-21' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000387', 0, CAST(N'2023-03-21' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000388', 0, CAST(N'2023-03-21' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000389', 0, CAST(N'2023-03-21' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000390', 0, CAST(N'2023-03-21' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000391', 0, CAST(N'2023-03-21' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000392', 0, CAST(N'2023-03-22' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000393', 0, CAST(N'2023-03-22' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000394', 0, CAST(N'2023-03-22' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000395', 0, CAST(N'2023-03-22' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000396', 0, CAST(N'2023-03-22' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000397', 0, CAST(N'2023-03-22' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000398', 0, CAST(N'2023-03-22' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000399', 0, CAST(N'2023-03-22' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000400', 0, CAST(N'2023-03-23' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000401', 0, CAST(N'2023-03-23' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000402', 0, CAST(N'2023-03-23' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000403', 0, CAST(N'2023-03-23' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000404', 0, CAST(N'2023-03-23' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000405', 0, CAST(N'2023-03-23' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000406', 0, CAST(N'2023-03-23' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000407', 0, CAST(N'2023-03-23' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000408', 0, CAST(N'2023-03-24' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000409', 0, CAST(N'2023-03-24' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000410', 0, CAST(N'2023-03-24' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000411', 0, CAST(N'2023-03-24' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000412', 0, CAST(N'2023-03-24' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000413', 0, CAST(N'2023-03-24' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000414', 0, CAST(N'2023-03-24' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000415', 0, CAST(N'2023-03-24' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000416', 0, CAST(N'2023-03-25' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000417', 0, CAST(N'2023-03-25' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000418', 0, CAST(N'2023-03-25' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000419', 0, CAST(N'2023-03-25' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000420', 0, CAST(N'2023-03-25' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000421', 0, CAST(N'2023-03-25' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000422', 0, CAST(N'2023-03-25' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000423', 0, CAST(N'2023-03-25' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000424', 0, CAST(N'2023-03-26' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000425', 0, CAST(N'2023-03-26' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000426', 0, CAST(N'2023-03-26' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000427', 0, CAST(N'2023-03-26' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000428', 0, CAST(N'2023-03-26' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000429', 0, CAST(N'2023-03-26' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000430', 0, CAST(N'2023-03-26' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000431', 0, CAST(N'2023-03-26' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000432', 0, CAST(N'2023-03-27' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000433', 0, CAST(N'2023-03-27' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000434', 0, CAST(N'2023-03-27' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000435', 0, CAST(N'2023-03-27' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000436', 0, CAST(N'2023-03-27' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000437', 0, CAST(N'2023-03-27' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000438', 0, CAST(N'2023-03-27' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000439', 0, CAST(N'2023-03-27' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000440', 0, CAST(N'2023-03-28' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000441', 0, CAST(N'2023-03-28' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000442', 0, CAST(N'2023-03-28' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000443', 0, CAST(N'2023-03-28' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000444', 0, CAST(N'2023-03-28' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000445', 0, CAST(N'2023-03-28' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000446', 0, CAST(N'2023-03-28' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000447', 0, CAST(N'2023-03-28' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000448', 0, CAST(N'2023-03-29' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000449', 0, CAST(N'2023-03-29' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000450', 0, CAST(N'2023-03-29' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000451', 0, CAST(N'2023-03-29' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000452', 0, CAST(N'2023-03-29' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000453', 0, CAST(N'2023-03-29' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000454', 0, CAST(N'2023-03-29' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000455', 0, CAST(N'2023-03-29' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000456', 0, CAST(N'2023-03-30' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000457', 0, CAST(N'2023-03-30' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000458', 0, CAST(N'2023-03-30' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000459', 0, CAST(N'2023-03-30' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000460', 0, CAST(N'2023-03-30' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000461', 0, CAST(N'2023-03-30' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000462', 0, CAST(N'2023-03-30' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000463', 0, CAST(N'2023-03-30' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000464', 0, CAST(N'2023-03-31' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000465', 0, CAST(N'2023-03-31' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000466', 0, CAST(N'2023-03-31' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000467', 0, CAST(N'2023-03-31' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000468', 0, CAST(N'2023-03-31' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000469', 0, CAST(N'2023-03-31' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000470', 0, CAST(N'2023-03-31' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000471', 0, CAST(N'2023-03-31' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000472', 0, CAST(N'2023-01-01' AS Date), N'Vắng không phép', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000473', 0, CAST(N'2023-01-01' AS Date), N'Vắng không phép', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000474', 0, CAST(N'2023-01-01' AS Date), N'Vắng không phép', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000475', 0, CAST(N'2023-01-01' AS Date), N'Vắng không phép', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000476', 0, CAST(N'2023-01-01' AS Date), N'Vắng không phép', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000477', 0, CAST(N'2023-01-01' AS Date), N'Vắng không phép', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000478', 0, CAST(N'2023-01-01' AS Date), N'Vắng không phép', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000479', 0, CAST(N'2023-01-01' AS Date), N'Vắng không phép', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000480', 0, CAST(N'2023-01-02' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000481', 0, CAST(N'2023-01-02' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000482', 0, CAST(N'2023-01-02' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000483', 0, CAST(N'2023-01-02' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000484', 0, CAST(N'2023-01-02' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000485', 0, CAST(N'2023-01-02' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000486', 0, CAST(N'2023-01-02' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000487', 0, CAST(N'2023-01-02' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000488', 0, CAST(N'2023-01-03' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000489', 0, CAST(N'2023-01-03' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000490', 0, CAST(N'2023-01-03' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000491', 0, CAST(N'2023-01-03' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000492', 0, CAST(N'2023-01-03' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000493', 0, CAST(N'2023-01-03' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000494', 0, CAST(N'2023-01-03' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000495', 0, CAST(N'2023-01-03' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000496', 0, CAST(N'2023-01-04' AS Date), N'Vắng không phép', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000497', 0, CAST(N'2023-01-04' AS Date), N'Vắng không phép', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000498', 0, CAST(N'2023-01-04' AS Date), N'Vắng không phép', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000499', 0, CAST(N'2023-01-04' AS Date), N'Vắng không phép', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000500', 0, CAST(N'2023-01-04' AS Date), N'Vắng không phép', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000501', 0, CAST(N'2023-01-04' AS Date), N'Vắng không phép', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000502', 0, CAST(N'2023-01-04' AS Date), N'Vắng không phép', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000503', 0, CAST(N'2023-01-04' AS Date), N'Vắng không phép', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000504', 0, CAST(N'2023-01-05' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000505', 0, CAST(N'2023-01-05' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000506', 0, CAST(N'2023-01-05' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000507', 0, CAST(N'2023-01-05' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000508', 0, CAST(N'2023-01-05' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000509', 0, CAST(N'2023-01-05' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000510', 0, CAST(N'2023-01-05' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000511', 0, CAST(N'2023-01-05' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000512', 0, CAST(N'2023-01-06' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000513', 0, CAST(N'2023-01-06' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000514', 0, CAST(N'2023-01-06' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000515', 0, CAST(N'2023-01-06' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000516', 0, CAST(N'2023-01-06' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000517', 0, CAST(N'2023-01-06' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000518', 0, CAST(N'2023-01-06' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000519', 0, CAST(N'2023-01-06' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000520', 0, CAST(N'2023-01-07' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000521', 0, CAST(N'2023-01-07' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000522', 0, CAST(N'2023-01-07' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000523', 0, CAST(N'2023-01-07' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000524', 0, CAST(N'2023-01-07' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000525', 0, CAST(N'2023-01-07' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000526', 0, CAST(N'2023-01-07' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000527', 0, CAST(N'2023-01-07' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000528', 0, CAST(N'2023-01-09' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000529', 0, CAST(N'2023-01-09' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000530', 0, CAST(N'2023-01-09' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000531', 0, CAST(N'2023-01-09' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000532', 0, CAST(N'2023-01-09' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000533', 0, CAST(N'2023-01-09' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000534', 0, CAST(N'2023-01-09' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000535', 0, CAST(N'2023-01-09' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000536', 0, CAST(N'2023-01-10' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000537', 0, CAST(N'2023-01-10' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000538', 0, CAST(N'2023-01-10' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000539', 0, CAST(N'2023-01-10' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000540', 0, CAST(N'2023-01-10' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000541', 0, CAST(N'2023-01-10' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000542', 0, CAST(N'2023-01-10' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000543', 0, CAST(N'2023-01-10' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000544', 0, CAST(N'2023-01-11' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000545', 0, CAST(N'2023-01-11' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000546', 0, CAST(N'2023-01-11' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000547', 0, CAST(N'2023-01-11' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000548', 0, CAST(N'2023-01-11' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000549', 0, CAST(N'2023-01-11' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000550', 0, CAST(N'2023-01-11' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000551', 0, CAST(N'2023-01-11' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000552', 0, CAST(N'2023-01-12' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000553', 0, CAST(N'2023-01-12' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000554', 0, CAST(N'2023-01-12' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000555', 0, CAST(N'2023-01-12' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000556', 0, CAST(N'2023-01-12' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000557', 0, CAST(N'2023-01-12' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000558', 0, CAST(N'2023-01-12' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000559', 0, CAST(N'2023-01-12' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000560', 0, CAST(N'2023-01-13' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000561', 0, CAST(N'2023-01-13' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000562', 0, CAST(N'2023-01-13' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000563', 0, CAST(N'2023-01-13' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000564', 0, CAST(N'2023-01-13' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000565', 0, CAST(N'2023-01-13' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000566', 0, CAST(N'2023-01-13' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000567', 0, CAST(N'2023-01-13' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000568', 0, CAST(N'2023-01-14' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000569', 0, CAST(N'2023-01-14' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000570', 0, CAST(N'2023-01-14' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000571', 0, CAST(N'2023-01-14' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000572', 0, CAST(N'2023-01-14' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000573', 0, CAST(N'2023-01-14' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000574', 0, CAST(N'2023-01-14' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000575', 0, CAST(N'2023-01-14' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000576', 0, CAST(N'2023-01-16' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000577', 0, CAST(N'2023-01-16' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000578', 0, CAST(N'2023-01-16' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000579', 0, CAST(N'2023-01-16' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000580', 0, CAST(N'2023-01-16' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000581', 0, CAST(N'2023-01-16' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000582', 0, CAST(N'2023-01-16' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000583', 0, CAST(N'2023-01-16' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000584', 0, CAST(N'2023-01-17' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000585', 0, CAST(N'2023-01-17' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000586', 0, CAST(N'2023-01-17' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000587', 0, CAST(N'2023-01-17' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000588', 0, CAST(N'2023-01-17' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000589', 0, CAST(N'2023-01-17' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000590', 0, CAST(N'2023-01-17' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000591', 0, CAST(N'2023-01-17' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000592', 0, CAST(N'2023-01-18' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000593', 0, CAST(N'2023-01-18' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000594', 0, CAST(N'2023-01-18' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000595', 0, CAST(N'2023-01-18' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000596', 0, CAST(N'2023-01-18' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000597', 0, CAST(N'2023-01-18' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000598', 0, CAST(N'2023-01-18' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000599', 0, CAST(N'2023-01-18' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000600', 0, CAST(N'2023-01-19' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000601', 0, CAST(N'2023-01-19' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000602', 0, CAST(N'2023-01-19' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000603', 0, CAST(N'2023-01-19' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000604', 0, CAST(N'2023-01-19' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000605', 0, CAST(N'2023-01-19' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000606', 0, CAST(N'2023-01-19' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000607', 0, CAST(N'2023-01-19' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000608', 0, CAST(N'2023-01-20' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000609', 0, CAST(N'2023-01-20' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000610', 0, CAST(N'2023-01-20' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000611', 0, CAST(N'2023-01-20' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000612', 0, CAST(N'2023-01-20' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000613', 0, CAST(N'2023-01-20' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000614', 0, CAST(N'2023-01-20' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000615', 0, CAST(N'2023-01-20' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000616', 0, CAST(N'2023-01-21' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000617', 0, CAST(N'2023-01-21' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000618', 0, CAST(N'2023-01-21' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000619', 0, CAST(N'2023-01-21' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000620', 0, CAST(N'2023-01-21' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000621', 0, CAST(N'2023-01-21' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000622', 0, CAST(N'2023-01-21' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000623', 0, CAST(N'2023-01-21' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000624', 0, CAST(N'2023-01-23' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000625', 0, CAST(N'2023-01-23' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000626', 0, CAST(N'2023-01-23' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000627', 0, CAST(N'2023-01-23' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000628', 0, CAST(N'2023-01-23' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000629', 0, CAST(N'2023-01-23' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000630', 0, CAST(N'2023-01-23' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000631', 0, CAST(N'2023-01-23' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000632', 1, CAST(N'2023-01-24' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000633', 1, CAST(N'2023-01-24' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000634', 1, CAST(N'2023-01-24' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000635', 1, CAST(N'2023-01-24' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000636', 1, CAST(N'2023-01-24' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000637', 1, CAST(N'2023-01-24' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000638', 1, CAST(N'2023-01-24' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000639', 1, CAST(N'2023-01-24' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000640', 0, CAST(N'2023-01-25' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000641', 0, CAST(N'2023-01-25' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000642', 0, CAST(N'2023-01-25' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000643', 0, CAST(N'2023-01-25' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000644', 0, CAST(N'2023-01-25' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000645', 0, CAST(N'2023-01-25' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000646', 0, CAST(N'2023-01-25' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000647', 0, CAST(N'2023-01-25' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000648', 0, CAST(N'2023-01-26' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000649', 0, CAST(N'2023-01-26' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000650', 0, CAST(N'2023-01-26' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000651', 0, CAST(N'2023-01-26' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000652', 0, CAST(N'2023-01-26' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000653', 0, CAST(N'2023-01-26' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000654', 0, CAST(N'2023-01-26' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000655', 0, CAST(N'2023-01-26' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000656', 0, CAST(N'2023-01-27' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000657', 0, CAST(N'2023-01-27' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000658', 0, CAST(N'2023-01-27' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000659', 0, CAST(N'2023-01-27' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000660', 0, CAST(N'2023-01-27' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000661', 0, CAST(N'2023-01-27' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000662', 0, CAST(N'2023-01-27' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000663', 0, CAST(N'2023-01-27' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000664', 0, CAST(N'2023-01-28' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000665', 0, CAST(N'2023-01-28' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000666', 0, CAST(N'2023-01-28' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000667', 0, CAST(N'2023-01-28' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000668', 0, CAST(N'2023-01-28' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000669', 0, CAST(N'2023-01-28' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000670', 0, CAST(N'2023-01-28' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000671', 0, CAST(N'2023-01-28' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000672', 0, CAST(N'2023-01-30' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000673', 0, CAST(N'2023-01-30' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000674', 0, CAST(N'2023-01-30' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000675', 0, CAST(N'2023-01-30' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000676', 0, CAST(N'2023-01-30' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000677', 0, CAST(N'2023-01-30' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000678', 0, CAST(N'2023-01-30' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000679', 0, CAST(N'2023-01-30' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000680', 0, CAST(N'2023-01-31' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000681', 0, CAST(N'2023-01-31' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000682', 0, CAST(N'2023-01-31' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000683', 0, CAST(N'2023-01-31' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000684', 0, CAST(N'2023-01-31' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000685', 0, CAST(N'2023-01-31' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000686', 0, CAST(N'2023-01-31' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000687', 0, CAST(N'2023-01-31' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000688', 0, CAST(N'2022-12-01' AS Date), N'Vắng không phép', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000689', 0, CAST(N'2022-12-01' AS Date), N'Vắng không phép', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000690', 0, CAST(N'2022-12-01' AS Date), N'Vắng không phép', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000691', 0, CAST(N'2022-12-01' AS Date), N'Vắng không phép', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000692', 0, CAST(N'2022-12-01' AS Date), N'Vắng không phép', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000693', 0, CAST(N'2022-12-01' AS Date), N'Vắng không phép', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000694', 0, CAST(N'2022-12-01' AS Date), N'Vắng không phép', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000695', 0, CAST(N'2022-12-01' AS Date), N'Vắng không phép', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000696', 0, CAST(N'2022-12-02' AS Date), N'Vắng không phép', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000697', 0, CAST(N'2022-12-02' AS Date), N'Vắng không phép', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000698', 0, CAST(N'2022-12-02' AS Date), N'Vắng không phép', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000699', 0, CAST(N'2022-12-02' AS Date), N'Vắng không phép', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000700', 0, CAST(N'2022-12-02' AS Date), N'Vắng không phép', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000701', 0, CAST(N'2022-12-02' AS Date), N'Vắng không phép', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000702', 0, CAST(N'2022-12-02' AS Date), N'Vắng không phép', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000703', 0, CAST(N'2022-12-02' AS Date), N'Vắng không phép', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000704', 0, CAST(N'2022-12-03' AS Date), N'Vắng không phép', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000705', 0, CAST(N'2022-12-03' AS Date), N'Vắng không phép', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000706', 0, CAST(N'2022-12-03' AS Date), N'Vắng không phép', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000707', 0, CAST(N'2022-12-03' AS Date), N'Vắng không phép', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000708', 0, CAST(N'2022-12-03' AS Date), N'Vắng không phép', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000709', 0, CAST(N'2022-12-03' AS Date), N'Vắng không phép', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000710', 0, CAST(N'2022-12-03' AS Date), N'Vắng không phép', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000711', 0, CAST(N'2022-12-03' AS Date), N'Vắng không phép', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000712', 0, CAST(N'2022-12-04' AS Date), N'Vắng không phép', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000713', 0, CAST(N'2022-12-04' AS Date), N'Vắng không phép', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000714', 0, CAST(N'2022-12-04' AS Date), N'Vắng không phép', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000715', 0, CAST(N'2022-12-04' AS Date), N'Vắng không phép', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000716', 0, CAST(N'2022-12-04' AS Date), N'Vắng không phép', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000717', 0, CAST(N'2022-12-04' AS Date), N'Vắng không phép', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000718', 0, CAST(N'2022-12-04' AS Date), N'Vắng không phép', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000719', 0, CAST(N'2022-12-04' AS Date), N'Vắng không phép', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000720', 0, CAST(N'2022-12-05' AS Date), N'Vắng không phép', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000721', 0, CAST(N'2022-12-05' AS Date), N'Vắng không phép', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000722', 0, CAST(N'2022-12-05' AS Date), N'Vắng không phép', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000723', 0, CAST(N'2022-12-05' AS Date), N'Vắng không phép', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000724', 0, CAST(N'2022-12-05' AS Date), N'Vắng không phép', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000725', 0, CAST(N'2022-12-05' AS Date), N'Vắng không phép', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000726', 0, CAST(N'2022-12-05' AS Date), N'Vắng không phép', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000727', 0, CAST(N'2022-12-05' AS Date), N'Vắng không phép', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000728', 0, CAST(N'2022-12-06' AS Date), N'Vắng không phép', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000729', 0, CAST(N'2022-12-06' AS Date), N'Vắng không phép', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000730', 0, CAST(N'2022-12-06' AS Date), N'Vắng không phép', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000731', 0, CAST(N'2022-12-06' AS Date), N'Vắng không phép', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000732', 0, CAST(N'2022-12-06' AS Date), N'Vắng không phép', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000733', 0, CAST(N'2022-12-06' AS Date), N'Vắng không phép', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000734', 0, CAST(N'2022-12-06' AS Date), N'Vắng không phép', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000735', 0, CAST(N'2022-12-06' AS Date), N'Vắng không phép', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000736', 0, CAST(N'2022-12-07' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000737', 0, CAST(N'2022-12-07' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000738', 0, CAST(N'2022-12-07' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000739', 0, CAST(N'2022-12-07' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000740', 0, CAST(N'2022-12-07' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000741', 0, CAST(N'2022-12-07' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000742', 0, CAST(N'2022-12-07' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000743', 0, CAST(N'2022-12-07' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000744', 0, CAST(N'2022-12-08' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000745', 0, CAST(N'2022-12-08' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000746', 0, CAST(N'2022-12-08' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000747', 0, CAST(N'2022-12-08' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000748', 0, CAST(N'2022-12-08' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000749', 0, CAST(N'2022-12-08' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000750', 0, CAST(N'2022-12-08' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000751', 0, CAST(N'2022-12-08' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000752', 0, CAST(N'2022-12-09' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000753', 0, CAST(N'2022-12-09' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000754', 0, CAST(N'2022-12-09' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000755', 0, CAST(N'2022-12-09' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000756', 0, CAST(N'2022-12-09' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000757', 0, CAST(N'2022-12-09' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000758', 0, CAST(N'2022-12-09' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000759', 0, CAST(N'2022-12-09' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000760', 0, CAST(N'2022-12-10' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000761', 0, CAST(N'2022-12-10' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000762', 0, CAST(N'2022-12-10' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000763', 0, CAST(N'2022-12-10' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000764', 0, CAST(N'2022-12-10' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000765', 0, CAST(N'2022-12-10' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000766', 0, CAST(N'2022-12-10' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000767', 0, CAST(N'2022-12-10' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000768', 0, CAST(N'2022-12-12' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000769', 0, CAST(N'2022-12-12' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000770', 0, CAST(N'2022-12-12' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000771', 0, CAST(N'2022-12-12' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000772', 0, CAST(N'2022-12-12' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000773', 0, CAST(N'2022-12-12' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000774', 0, CAST(N'2022-12-12' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000775', 0, CAST(N'2022-12-12' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000776', 0, CAST(N'2022-12-13' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000777', 0, CAST(N'2022-12-13' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000778', 0, CAST(N'2022-12-13' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000779', 0, CAST(N'2022-12-13' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000780', 0, CAST(N'2022-12-13' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000781', 0, CAST(N'2022-12-13' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000782', 0, CAST(N'2022-12-13' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000783', 0, CAST(N'2022-12-13' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000784', 0, CAST(N'2022-12-14' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000785', 0, CAST(N'2022-12-14' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000786', 0, CAST(N'2022-12-14' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000787', 0, CAST(N'2022-12-14' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000788', 0, CAST(N'2022-12-14' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000789', 0, CAST(N'2022-12-14' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000790', 0, CAST(N'2022-12-14' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000791', 0, CAST(N'2022-12-14' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000792', 0, CAST(N'2022-12-15' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000793', 0, CAST(N'2022-12-15' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000794', 0, CAST(N'2022-12-15' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000795', 0, CAST(N'2022-12-15' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000796', 0, CAST(N'2022-12-15' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000797', 0, CAST(N'2022-12-15' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000798', 0, CAST(N'2022-12-15' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000799', 0, CAST(N'2022-12-15' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000800', 0, CAST(N'2022-12-16' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000801', 0, CAST(N'2022-12-16' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000802', 0, CAST(N'2022-12-16' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000803', 0, CAST(N'2022-12-16' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000804', 0, CAST(N'2022-12-16' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000805', 0, CAST(N'2022-12-16' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000806', 0, CAST(N'2022-12-16' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000807', 0, CAST(N'2022-12-16' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000808', 0, CAST(N'2022-12-17' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000809', 0, CAST(N'2022-12-17' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000810', 0, CAST(N'2022-12-17' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000811', 0, CAST(N'2022-12-17' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000812', 0, CAST(N'2022-12-17' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000813', 0, CAST(N'2022-12-17' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000814', 0, CAST(N'2022-12-17' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000815', 0, CAST(N'2022-12-17' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000816', 0, CAST(N'2022-12-19' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000817', 0, CAST(N'2022-12-19' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000818', 0, CAST(N'2022-12-19' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000819', 0, CAST(N'2022-12-19' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000820', 0, CAST(N'2022-12-19' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000821', 0, CAST(N'2022-12-19' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000822', 0, CAST(N'2022-12-19' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000823', 0, CAST(N'2022-12-19' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000824', 0, CAST(N'2022-12-20' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000825', 0, CAST(N'2022-12-20' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000826', 0, CAST(N'2022-12-20' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000827', 0, CAST(N'2022-12-20' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000828', 0, CAST(N'2022-12-20' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000829', 0, CAST(N'2022-12-20' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000830', 0, CAST(N'2022-12-20' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000831', 0, CAST(N'2022-12-20' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000832', 0, CAST(N'2022-12-21' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000833', 0, CAST(N'2022-12-21' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000834', 0, CAST(N'2022-12-21' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000835', 0, CAST(N'2022-12-21' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000836', 0, CAST(N'2022-12-21' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000837', 0, CAST(N'2022-12-21' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000838', 0, CAST(N'2022-12-21' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000839', 0, CAST(N'2022-12-21' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000840', 0, CAST(N'2022-12-22' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000841', 0, CAST(N'2022-12-22' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000842', 0, CAST(N'2022-12-22' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000843', 0, CAST(N'2022-12-22' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000844', 0, CAST(N'2022-12-22' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000845', 0, CAST(N'2022-12-22' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000846', 0, CAST(N'2022-12-22' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000847', 0, CAST(N'2022-12-22' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000848', 0, CAST(N'2022-12-23' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000849', 0, CAST(N'2022-12-23' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000850', 0, CAST(N'2022-12-23' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000851', 0, CAST(N'2022-12-23' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000852', 0, CAST(N'2022-12-23' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000853', 0, CAST(N'2022-12-23' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000854', 0, CAST(N'2022-12-23' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000855', 0, CAST(N'2022-12-23' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000856', 0, CAST(N'2022-12-24' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000857', 0, CAST(N'2022-12-24' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000858', 0, CAST(N'2022-12-24' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000859', 0, CAST(N'2022-12-24' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000860', 0, CAST(N'2022-12-24' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000861', 0, CAST(N'2022-12-24' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000862', 0, CAST(N'2022-12-24' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000863', 0, CAST(N'2022-12-24' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000864', 0, CAST(N'2022-12-26' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000865', 0, CAST(N'2022-12-26' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000866', 0, CAST(N'2022-12-26' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000867', 0, CAST(N'2022-12-26' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000868', 0, CAST(N'2022-12-26' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000869', 0, CAST(N'2022-12-26' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000870', 0, CAST(N'2022-12-26' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000871', 0, CAST(N'2022-12-26' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000872', 0, CAST(N'2022-12-27' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000873', 0, CAST(N'2022-12-27' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000874', 0, CAST(N'2022-12-27' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000875', 0, CAST(N'2022-12-27' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000876', 0, CAST(N'2022-12-27' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000877', 0, CAST(N'2022-12-27' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000878', 0, CAST(N'2022-12-27' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000879', 0, CAST(N'2022-12-27' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000880', 0, CAST(N'2022-12-28' AS Date), N'Vắng không phép', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000881', 0, CAST(N'2022-12-28' AS Date), N'Vắng không phép', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000882', 0, CAST(N'2022-12-28' AS Date), N'Vắng không phép', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000883', 0, CAST(N'2022-12-28' AS Date), N'Vắng không phép', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000884', 0, CAST(N'2022-12-28' AS Date), N'Vắng không phép', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000885', 0, CAST(N'2022-12-28' AS Date), N'Vắng không phép', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000886', 0, CAST(N'2022-12-28' AS Date), N'Vắng không phép', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000887', 0, CAST(N'2022-12-28' AS Date), N'Vắng không phép', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000888', 0, CAST(N'2022-12-29' AS Date), N'Vắng không phép', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000889', 0, CAST(N'2022-12-29' AS Date), N'Vắng không phép', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000890', 0, CAST(N'2022-12-29' AS Date), N'Vắng không phép', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000891', 0, CAST(N'2022-12-29' AS Date), N'Vắng không phép', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000892', 0, CAST(N'2022-12-29' AS Date), N'Vắng không phép', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000893', 0, CAST(N'2022-12-29' AS Date), N'Vắng không phép', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000894', 0, CAST(N'2022-12-29' AS Date), N'Vắng không phép', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000895', 0, CAST(N'2022-12-29' AS Date), N'Vắng không phép', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000896', 0, CAST(N'2022-12-30' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000897', 0, CAST(N'2022-12-30' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000898', 0, CAST(N'2022-12-30' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000899', 0, CAST(N'2022-12-30' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000900', 0, CAST(N'2022-12-30' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000901', 0, CAST(N'2022-12-30' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000902', 0, CAST(N'2022-12-30' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000903', 0, CAST(N'2022-12-30' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000904', 0, CAST(N'2022-12-31' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000905', 0, CAST(N'2022-12-31' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000906', 0, CAST(N'2022-12-31' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000907', 0, CAST(N'2022-12-31' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000908', 0, CAST(N'2022-12-31' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000909', 0, CAST(N'2022-12-31' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000910', 0, CAST(N'2022-12-31' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000911', 0, CAST(N'2022-12-31' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000912', 0, CAST(N'2022-11-01' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000913', 0, CAST(N'2022-11-01' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000914', 0, CAST(N'2022-11-01' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000915', 0, CAST(N'2022-11-01' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000916', 0, CAST(N'2022-11-01' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000917', 0, CAST(N'2022-11-01' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000918', 0, CAST(N'2022-11-01' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000919', 0, CAST(N'2022-11-01' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000920', 0, CAST(N'2022-11-05' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000921', 0, CAST(N'2022-11-05' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000922', 0, CAST(N'2022-11-05' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000923', 0, CAST(N'2022-11-05' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000924', 0, CAST(N'2022-11-05' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000925', 0, CAST(N'2022-11-05' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000926', 0, CAST(N'2022-11-05' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000927', 0, CAST(N'2022-11-05' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000928', 0, CAST(N'2022-11-07' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000929', 0, CAST(N'2022-11-07' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000930', 0, CAST(N'2022-11-07' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000931', 0, CAST(N'2022-11-07' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000932', 0, CAST(N'2022-11-07' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000933', 0, CAST(N'2022-11-07' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000934', 0, CAST(N'2022-11-07' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000935', 0, CAST(N'2022-11-07' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000936', 1, CAST(N'2022-11-17' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000937', 1, CAST(N'2022-11-17' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000938', 1, CAST(N'2022-11-17' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000939', 1, CAST(N'2022-11-17' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000940', 1, CAST(N'2022-11-17' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000941', 1, CAST(N'2022-11-17' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000942', 1, CAST(N'2022-11-17' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000943', 1, CAST(N'2022-11-17' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000944', 1, CAST(N'2022-11-21' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000945', 1, CAST(N'2022-11-21' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000946', 1, CAST(N'2022-11-21' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000947', 1, CAST(N'2022-11-21' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000948', 1, CAST(N'2022-11-21' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000949', 1, CAST(N'2022-11-21' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000950', 1, CAST(N'2022-11-21' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000951', 1, CAST(N'2022-11-21' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000952', 1, CAST(N'2022-11-27' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000953', 1, CAST(N'2022-11-27' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000954', 1, CAST(N'2022-11-27' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000955', 1, CAST(N'2022-11-27' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000956', 1, CAST(N'2022-11-27' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000957', 1, CAST(N'2022-11-27' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000958', 1, CAST(N'2022-11-27' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000959', 1, CAST(N'2022-11-27' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000960', 0, CAST(N'2022-11-30' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000961', 0, CAST(N'2022-11-30' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000962', 0, CAST(N'2022-11-30' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000963', 0, CAST(N'2022-11-30' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000964', 0, CAST(N'2022-11-30' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000965', 0, CAST(N'2022-11-30' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000966', 0, CAST(N'2022-11-30' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000967', 0, CAST(N'2022-11-30' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000968', 0, CAST(N'2022-10-01' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000969', 0, CAST(N'2022-10-01' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000970', 0, CAST(N'2022-10-01' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000971', 0, CAST(N'2022-10-01' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000972', 0, CAST(N'2022-10-01' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000973', 0, CAST(N'2022-10-01' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000974', 0, CAST(N'2022-10-01' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000975', 0, CAST(N'2022-10-01' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000976', 0, CAST(N'2022-10-13' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000977', 0, CAST(N'2022-10-13' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000978', 0, CAST(N'2022-10-13' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000979', 0, CAST(N'2022-10-13' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000980', 0, CAST(N'2022-10-13' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000981', 0, CAST(N'2022-10-13' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000982', 0, CAST(N'2022-10-13' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000983', 0, CAST(N'2022-10-13' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000984', 0, CAST(N'2022-10-22' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000985', 0, CAST(N'2022-10-22' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000986', 0, CAST(N'2022-10-22' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000987', 0, CAST(N'2022-10-22' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000988', 0, CAST(N'2022-10-22' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000989', 0, CAST(N'2022-10-22' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000990', 0, CAST(N'2022-10-22' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000991', 0, CAST(N'2022-10-22' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000992', 0, CAST(N'2022-10-26' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000993', 0, CAST(N'2022-10-26' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000994', 0, CAST(N'2022-10-26' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000995', 0, CAST(N'2022-10-26' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000996', 0, CAST(N'2022-10-26' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000997', 0, CAST(N'2022-10-26' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000998', 0, CAST(N'2022-10-26' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0000999', 0, CAST(N'2022-10-26' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001000', 0, CAST(N'2022-10-31' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001001', 0, CAST(N'2022-10-31' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001002', 0, CAST(N'2022-10-31' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001003', 0, CAST(N'2022-10-31' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001004', 0, CAST(N'2022-10-31' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001005', 0, CAST(N'2022-10-31' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001006', 0, CAST(N'2022-10-31' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001007', 0, CAST(N'2022-10-31' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001008', 0, CAST(N'2022-09-01' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001009', 0, CAST(N'2022-09-01' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001010', 0, CAST(N'2022-09-01' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001011', 0, CAST(N'2022-09-01' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001012', 0, CAST(N'2022-09-01' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001013', 0, CAST(N'2022-09-01' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001014', 0, CAST(N'2022-09-01' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001015', 0, CAST(N'2022-09-01' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001016', 0, CAST(N'2022-09-08' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001017', 0, CAST(N'2022-09-08' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001018', 0, CAST(N'2022-09-08' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001019', 0, CAST(N'2022-09-08' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001020', 0, CAST(N'2022-09-08' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001021', 0, CAST(N'2022-09-08' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001022', 0, CAST(N'2022-09-08' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001023', 0, CAST(N'2022-09-08' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001024', 1, CAST(N'2022-09-15' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001025', 1, CAST(N'2022-09-15' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001026', 1, CAST(N'2022-09-15' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001027', 1, CAST(N'2022-09-15' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001028', 1, CAST(N'2022-09-15' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001029', 1, CAST(N'2022-09-15' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001030', 1, CAST(N'2022-09-15' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001031', 1, CAST(N'2022-09-15' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001032', 0, CAST(N'2022-09-22' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001033', 0, CAST(N'2022-09-22' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001034', 0, CAST(N'2022-09-22' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001035', 0, CAST(N'2022-09-22' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001036', 0, CAST(N'2022-09-22' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001037', 0, CAST(N'2022-09-22' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001038', 0, CAST(N'2022-09-22' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001039', 0, CAST(N'2022-09-22' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001040', 0, CAST(N'2022-08-11' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001041', 0, CAST(N'2022-08-11' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001042', 0, CAST(N'2022-08-11' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001043', 0, CAST(N'2022-08-11' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001044', 0, CAST(N'2022-08-11' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001045', 0, CAST(N'2022-08-11' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001046', 0, CAST(N'2022-08-11' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001047', 0, CAST(N'2022-08-11' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001048', 0, CAST(N'2022-08-14' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001049', 0, CAST(N'2022-08-14' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001050', 0, CAST(N'2022-08-14' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001051', 0, CAST(N'2022-08-14' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001052', 0, CAST(N'2022-08-14' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001053', 0, CAST(N'2022-08-14' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001054', 0, CAST(N'2022-08-14' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001055', 0, CAST(N'2022-08-14' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001056', 0, CAST(N'2022-08-29' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001057', 0, CAST(N'2022-08-29' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001058', 0, CAST(N'2022-08-29' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001059', 0, CAST(N'2022-08-29' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001060', 0, CAST(N'2022-08-29' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001061', 0, CAST(N'2022-08-29' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001062', 0, CAST(N'2022-08-29' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001063', 0, CAST(N'2022-08-29' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001064', 0, CAST(N'2022-07-15' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001065', 0, CAST(N'2022-07-15' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001066', 0, CAST(N'2022-07-15' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001067', 0, CAST(N'2022-07-15' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001068', 0, CAST(N'2022-07-15' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001069', 0, CAST(N'2022-07-15' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001070', 0, CAST(N'2022-07-15' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001071', 0, CAST(N'2022-07-15' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001072', 0, CAST(N'2022-07-28' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001073', 0, CAST(N'2022-07-28' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001074', 0, CAST(N'2022-07-28' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001075', 0, CAST(N'2022-07-28' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001076', 0, CAST(N'2022-07-28' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001077', 0, CAST(N'2022-07-28' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001078', 0, CAST(N'2022-07-28' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001079', 0, CAST(N'2022-07-28' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001080', 0, CAST(N'2023-04-01' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001081', 0, CAST(N'2023-04-01' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001082', 0, CAST(N'2023-04-01' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001083', 0, CAST(N'2023-04-01' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001084', 0, CAST(N'2023-04-01' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001085', 0, CAST(N'2023-04-01' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001086', 0, CAST(N'2023-04-01' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001087', 0, CAST(N'2023-04-01' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001088', 1, CAST(N'2023-04-02' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001089', 1, CAST(N'2023-04-02' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001090', 1, CAST(N'2023-04-02' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001091', 1, CAST(N'2023-04-02' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001092', 1, CAST(N'2023-04-02' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001093', 1, CAST(N'2023-04-02' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001094', 1, CAST(N'2023-04-02' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001095', 1, CAST(N'2023-04-02' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001096', 0, CAST(N'2023-04-03' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001097', 0, CAST(N'2023-04-04' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001098', 0, CAST(N'2023-04-04' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001099', 0, CAST(N'2023-04-04' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001100', 0, CAST(N'2023-04-04' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001101', 0, CAST(N'2023-04-04' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001102', 0, CAST(N'2023-04-04' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001103', 0, CAST(N'2023-04-04' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001104', 0, CAST(N'2023-04-04' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001105', 0, CAST(N'2023-04-05' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001106', 0, CAST(N'2023-04-05' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001107', 0, CAST(N'2023-04-05' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001108', 0, CAST(N'2023-04-05' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001109', 0, CAST(N'2023-04-05' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001110', 0, CAST(N'2023-04-05' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001111', 0, CAST(N'2023-04-05' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001112', 0, CAST(N'2023-04-05' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001113', 0, CAST(N'2023-04-06' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001114', 0, CAST(N'2023-04-06' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001115', 0, CAST(N'2023-04-06' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001116', 0, CAST(N'2023-04-06' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001117', 0, CAST(N'2023-04-06' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001118', 0, CAST(N'2023-04-06' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001119', 0, CAST(N'2023-04-06' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001120', 0, CAST(N'2023-04-06' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001121', 0, CAST(N'2023-04-07' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001122', 0, CAST(N'2023-04-07' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001123', 0, CAST(N'2023-04-07' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001124', 0, CAST(N'2023-04-07' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001125', 0, CAST(N'2023-04-07' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001126', 0, CAST(N'2023-04-07' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001127', 0, CAST(N'2023-04-07' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001128', 0, CAST(N'2023-04-07' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001129', 0, CAST(N'2023-04-08' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001130', 0, CAST(N'2023-04-08' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001131', 0, CAST(N'2023-04-08' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001132', 0, CAST(N'2023-04-08' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001133', 0, CAST(N'2023-04-08' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001134', 0, CAST(N'2023-04-08' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001135', 0, CAST(N'2023-04-08' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001136', 0, CAST(N'2023-04-08' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001137', 0, CAST(N'2023-04-09' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001138', 0, CAST(N'2023-04-09' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001139', 0, CAST(N'2023-04-09' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001140', 0, CAST(N'2023-04-09' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001141', 0, CAST(N'2023-04-09' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001142', 0, CAST(N'2023-04-09' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001143', 0, CAST(N'2023-04-09' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001144', 0, CAST(N'2023-04-09' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001145', 0, CAST(N'2023-04-10' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001146', 0, CAST(N'2023-04-10' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001147', 0, CAST(N'2023-04-10' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001148', 0, CAST(N'2023-04-10' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001149', 0, CAST(N'2023-04-10' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001150', 0, CAST(N'2023-04-10' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001151', 0, CAST(N'2023-04-10' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001152', 0, CAST(N'2023-04-10' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001153', 0, CAST(N'2023-04-11' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001154', 0, CAST(N'2023-04-11' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001155', 0, CAST(N'2023-04-11' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001156', 0, CAST(N'2023-04-11' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001157', 0, CAST(N'2023-04-11' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001158', 0, CAST(N'2023-04-11' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001159', 0, CAST(N'2023-04-11' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001160', 0, CAST(N'2023-04-11' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001161', 0, CAST(N'2023-04-12' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001162', 0, CAST(N'2023-04-12' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001163', 0, CAST(N'2023-04-12' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001164', 0, CAST(N'2023-04-12' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001165', 0, CAST(N'2023-04-12' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001166', 0, CAST(N'2023-04-12' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001167', 0, CAST(N'2023-04-12' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001168', 0, CAST(N'2023-04-12' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001169', 0, CAST(N'2023-04-13' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001170', 0, CAST(N'2023-04-13' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001171', 0, CAST(N'2023-04-13' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001172', 0, CAST(N'2023-04-13' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001173', 0, CAST(N'2023-04-13' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001174', 0, CAST(N'2023-04-13' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001175', 0, CAST(N'2023-04-13' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001176', 0, CAST(N'2023-04-13' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001177', 0, CAST(N'2023-04-14' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001178', 0, CAST(N'2023-04-14' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001179', 0, CAST(N'2023-04-14' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001180', 0, CAST(N'2023-04-14' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001181', 0, CAST(N'2023-04-14' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001182', 0, CAST(N'2023-04-14' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001183', 0, CAST(N'2023-04-14' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001184', 0, CAST(N'2023-04-14' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001185', 0, CAST(N'2023-04-15' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001186', 0, CAST(N'2023-04-15' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001187', 0, CAST(N'2023-04-15' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001188', 0, CAST(N'2023-04-15' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001189', 0, CAST(N'2023-04-15' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001190', 0, CAST(N'2023-04-15' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001191', 0, CAST(N'2023-04-15' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001192', 0, CAST(N'2023-04-15' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001193', 0, CAST(N'2023-04-16' AS Date), N'Có mặt', N'', N'nvhc_0000000')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001194', 0, CAST(N'2023-04-16' AS Date), N'Có mặt', N'', N'nvhc_0000001')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001195', 0, CAST(N'2023-04-16' AS Date), N'Có mặt', N'', N'nvhc_0000002')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001196', 0, CAST(N'2023-04-16' AS Date), N'Có mặt', N'', N'nvhc_0000003')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001197', 0, CAST(N'2023-04-16' AS Date), N'Có mặt', N'', N'nvhc_0000004')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001198', 0, CAST(N'2023-04-16' AS Date), N'Có mặt', N'', N'nvhc_0000005')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001199', 0, CAST(N'2023-04-16' AS Date), N'Có mặt', N'', N'nvhc_0000006')
GO
INSERT [dbo].[PhieuChamCongNVHC] ([maPCCNVHC], [tangCa], [ngayCham], [trangThai], [lyDo], [maNVHC]) VALUES (N'pccnvhc_0001200', 0, CAST(N'2023-04-16' AS Date), N'Có mặt', N'', N'nvhc_0000007')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000000', CAST(N'2023-02-01' AS Date), N'cn_0000000', N'cd_0000000', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000001', CAST(N'2023-02-01' AS Date), N'cn_0000000', N'cd_0000000', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000002', CAST(N'2023-02-02' AS Date), N'cn_0000000', N'cd_0000000', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000003', CAST(N'2023-02-02' AS Date), N'cn_0000000', N'cd_0000000', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000004', CAST(N'2023-02-03' AS Date), N'cn_0000000', N'cd_0000000', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000005', CAST(N'2023-02-03' AS Date), N'cn_0000000', N'cd_0000000', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000006', CAST(N'2023-02-04' AS Date), N'cn_0000000', N'cd_0000000', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000007', CAST(N'2023-02-04' AS Date), N'cn_0000000', N'cd_0000000', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000008', CAST(N'2023-02-05' AS Date), N'cn_0000000', N'cd_0000000', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000009', CAST(N'2023-02-05' AS Date), N'cn_0000000', N'cd_0000000', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000010', CAST(N'2023-02-06' AS Date), N'cn_0000000', N'cd_0000000', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000011', CAST(N'2023-02-06' AS Date), N'cn_0000000', N'cd_0000000', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000012', CAST(N'2023-02-07' AS Date), N'cn_0000000', N'cd_0000000', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000013', CAST(N'2023-02-07' AS Date), N'cn_0000000', N'cd_0000000', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000014', CAST(N'2023-02-08' AS Date), N'cn_0000000', N'cd_0000000', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000015', CAST(N'2023-02-08' AS Date), N'cn_0000000', N'cd_0000000', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000016', CAST(N'2023-02-09' AS Date), N'cn_0000000', N'cd_0000000', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000017', CAST(N'2023-02-09' AS Date), N'cn_0000000', N'cd_0000000', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000018', CAST(N'2023-02-10' AS Date), N'cn_0000000', N'cd_0000000', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000019', CAST(N'2023-02-10' AS Date), N'cn_0000000', N'cd_0000000', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000020', CAST(N'2023-02-01' AS Date), N'cn_0000001', N'cd_0000000', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000021', CAST(N'2023-02-01' AS Date), N'cn_0000001', N'cd_0000000', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000022', CAST(N'2023-02-02' AS Date), N'cn_0000001', N'cd_0000000', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000023', CAST(N'2023-02-02' AS Date), N'cn_0000001', N'cd_0000000', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000024', CAST(N'2023-02-03' AS Date), N'cn_0000001', N'cd_0000000', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000025', CAST(N'2023-02-03' AS Date), N'cn_0000001', N'cd_0000000', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000026', CAST(N'2023-02-04' AS Date), N'cn_0000001', N'cd_0000000', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000027', CAST(N'2023-02-04' AS Date), N'cn_0000001', N'cd_0000000', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000028', CAST(N'2023-02-05' AS Date), N'cn_0000001', N'cd_0000000', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000029', CAST(N'2023-02-05' AS Date), N'cn_0000001', N'cd_0000000', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000030', CAST(N'2023-02-06' AS Date), N'cn_0000001', N'cd_0000000', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000031', CAST(N'2023-02-06' AS Date), N'cn_0000001', N'cd_0000000', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000032', CAST(N'2023-02-07' AS Date), N'cn_0000001', N'cd_0000000', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000033', CAST(N'2023-02-07' AS Date), N'cn_0000001', N'cd_0000000', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000034', CAST(N'2023-02-08' AS Date), N'cn_0000001', N'cd_0000000', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000035', CAST(N'2023-02-08' AS Date), N'cn_0000001', N'cd_0000000', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000036', CAST(N'2023-02-09' AS Date), N'cn_0000001', N'cd_0000000', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000037', CAST(N'2023-02-09' AS Date), N'cn_0000001', N'cd_0000000', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000038', CAST(N'2023-02-10' AS Date), N'cn_0000001', N'cd_0000000', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000039', CAST(N'2023-02-10' AS Date), N'cn_0000001', N'cd_0000000', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000040', CAST(N'2023-02-01' AS Date), N'cn_0000002', N'cd_0000000', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000041', CAST(N'2023-02-01' AS Date), N'cn_0000002', N'cd_0000000', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000042', CAST(N'2023-02-02' AS Date), N'cn_0000002', N'cd_0000000', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000043', CAST(N'2023-02-02' AS Date), N'cn_0000002', N'cd_0000000', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000044', CAST(N'2023-02-03' AS Date), N'cn_0000002', N'cd_0000000', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000045', CAST(N'2023-02-03' AS Date), N'cn_0000002', N'cd_0000000', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000046', CAST(N'2023-02-04' AS Date), N'cn_0000002', N'cd_0000000', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000047', CAST(N'2023-02-04' AS Date), N'cn_0000002', N'cd_0000000', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000048', CAST(N'2023-02-05' AS Date), N'cn_0000002', N'cd_0000000', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000049', CAST(N'2023-02-05' AS Date), N'cn_0000002', N'cd_0000000', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000050', CAST(N'2023-02-06' AS Date), N'cn_0000002', N'cd_0000000', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000051', CAST(N'2023-02-06' AS Date), N'cn_0000002', N'cd_0000000', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000052', CAST(N'2023-02-07' AS Date), N'cn_0000002', N'cd_0000000', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000053', CAST(N'2023-02-07' AS Date), N'cn_0000002', N'cd_0000000', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000054', CAST(N'2023-02-08' AS Date), N'cn_0000002', N'cd_0000000', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000055', CAST(N'2023-02-08' AS Date), N'cn_0000002', N'cd_0000000', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000056', CAST(N'2023-02-09' AS Date), N'cn_0000002', N'cd_0000000', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000057', CAST(N'2023-02-09' AS Date), N'cn_0000002', N'cd_0000000', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000058', CAST(N'2023-02-10' AS Date), N'cn_0000002', N'cd_0000000', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000059', CAST(N'2023-02-10' AS Date), N'cn_0000002', N'cd_0000000', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000060', CAST(N'2023-02-01' AS Date), N'cn_0000003', N'cd_0000000', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000061', CAST(N'2023-02-01' AS Date), N'cn_0000003', N'cd_0000000', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000062', CAST(N'2023-02-02' AS Date), N'cn_0000003', N'cd_0000000', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000063', CAST(N'2023-02-02' AS Date), N'cn_0000003', N'cd_0000000', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000064', CAST(N'2023-02-03' AS Date), N'cn_0000003', N'cd_0000000', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000065', CAST(N'2023-02-03' AS Date), N'cn_0000003', N'cd_0000000', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000066', CAST(N'2023-02-04' AS Date), N'cn_0000003', N'cd_0000000', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000067', CAST(N'2023-02-04' AS Date), N'cn_0000003', N'cd_0000000', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000068', CAST(N'2023-02-05' AS Date), N'cn_0000003', N'cd_0000000', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000069', CAST(N'2023-02-05' AS Date), N'cn_0000003', N'cd_0000000', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000070', CAST(N'2023-02-06' AS Date), N'cn_0000003', N'cd_0000000', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000071', CAST(N'2023-02-06' AS Date), N'cn_0000003', N'cd_0000000', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000072', CAST(N'2023-02-07' AS Date), N'cn_0000003', N'cd_0000000', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000073', CAST(N'2023-02-07' AS Date), N'cn_0000003', N'cd_0000000', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000074', CAST(N'2023-02-08' AS Date), N'cn_0000003', N'cd_0000000', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000075', CAST(N'2023-02-08' AS Date), N'cn_0000003', N'cd_0000000', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000076', CAST(N'2023-02-09' AS Date), N'cn_0000003', N'cd_0000000', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000077', CAST(N'2023-02-09' AS Date), N'cn_0000003', N'cd_0000000', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000078', CAST(N'2023-02-10' AS Date), N'cn_0000003', N'cd_0000000', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000079', CAST(N'2023-02-10' AS Date), N'cn_0000003', N'cd_0000000', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000080', CAST(N'2023-02-01' AS Date), N'cn_0000004', N'cd_0000000', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000081', CAST(N'2023-02-01' AS Date), N'cn_0000004', N'cd_0000000', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000082', CAST(N'2023-02-02' AS Date), N'cn_0000004', N'cd_0000000', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000083', CAST(N'2023-02-02' AS Date), N'cn_0000004', N'cd_0000000', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000084', CAST(N'2023-02-03' AS Date), N'cn_0000004', N'cd_0000000', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000085', CAST(N'2023-02-03' AS Date), N'cn_0000004', N'cd_0000000', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000086', CAST(N'2023-02-04' AS Date), N'cn_0000004', N'cd_0000000', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000087', CAST(N'2023-02-04' AS Date), N'cn_0000004', N'cd_0000000', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000088', CAST(N'2023-02-05' AS Date), N'cn_0000004', N'cd_0000000', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000089', CAST(N'2023-02-05' AS Date), N'cn_0000004', N'cd_0000000', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000090', CAST(N'2023-02-06' AS Date), N'cn_0000004', N'cd_0000000', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000091', CAST(N'2023-02-06' AS Date), N'cn_0000004', N'cd_0000000', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000092', CAST(N'2023-02-07' AS Date), N'cn_0000004', N'cd_0000000', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000093', CAST(N'2023-02-07' AS Date), N'cn_0000004', N'cd_0000000', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000094', CAST(N'2023-02-08' AS Date), N'cn_0000004', N'cd_0000000', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000095', CAST(N'2023-02-08' AS Date), N'cn_0000004', N'cd_0000000', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000096', CAST(N'2023-02-09' AS Date), N'cn_0000004', N'cd_0000000', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000097', CAST(N'2023-02-09' AS Date), N'cn_0000004', N'cd_0000000', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000098', CAST(N'2023-02-10' AS Date), N'cn_0000004', N'cd_0000000', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000099', CAST(N'2023-02-10' AS Date), N'cn_0000004', N'cd_0000000', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000100', CAST(N'2023-02-01' AS Date), N'cn_0000000', N'cd_0000001', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000101', CAST(N'2023-02-01' AS Date), N'cn_0000000', N'cd_0000001', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000102', CAST(N'2023-02-02' AS Date), N'cn_0000000', N'cd_0000001', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000103', CAST(N'2023-02-02' AS Date), N'cn_0000000', N'cd_0000001', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000104', CAST(N'2023-02-03' AS Date), N'cn_0000000', N'cd_0000001', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000105', CAST(N'2023-02-03' AS Date), N'cn_0000000', N'cd_0000001', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000106', CAST(N'2023-02-04' AS Date), N'cn_0000000', N'cd_0000001', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000107', CAST(N'2023-02-04' AS Date), N'cn_0000000', N'cd_0000001', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000108', CAST(N'2023-02-05' AS Date), N'cn_0000000', N'cd_0000001', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000109', CAST(N'2023-02-05' AS Date), N'cn_0000000', N'cd_0000001', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000110', CAST(N'2023-02-06' AS Date), N'cn_0000000', N'cd_0000001', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000111', CAST(N'2023-02-06' AS Date), N'cn_0000000', N'cd_0000001', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000112', CAST(N'2023-02-07' AS Date), N'cn_0000000', N'cd_0000001', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000113', CAST(N'2023-02-07' AS Date), N'cn_0000000', N'cd_0000001', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000114', CAST(N'2023-02-08' AS Date), N'cn_0000000', N'cd_0000001', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000115', CAST(N'2023-02-08' AS Date), N'cn_0000000', N'cd_0000001', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000116', CAST(N'2023-02-09' AS Date), N'cn_0000000', N'cd_0000001', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000117', CAST(N'2023-02-09' AS Date), N'cn_0000000', N'cd_0000001', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000118', CAST(N'2023-02-10' AS Date), N'cn_0000000', N'cd_0000001', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000119', CAST(N'2023-02-10' AS Date), N'cn_0000000', N'cd_0000001', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000120', CAST(N'2023-02-01' AS Date), N'cn_0000001', N'cd_0000001', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000121', CAST(N'2023-02-01' AS Date), N'cn_0000001', N'cd_0000001', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000122', CAST(N'2023-02-02' AS Date), N'cn_0000001', N'cd_0000001', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000123', CAST(N'2023-02-02' AS Date), N'cn_0000001', N'cd_0000001', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000124', CAST(N'2023-02-03' AS Date), N'cn_0000001', N'cd_0000001', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000125', CAST(N'2023-02-03' AS Date), N'cn_0000001', N'cd_0000001', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000126', CAST(N'2023-02-04' AS Date), N'cn_0000001', N'cd_0000001', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000127', CAST(N'2023-02-04' AS Date), N'cn_0000001', N'cd_0000001', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000128', CAST(N'2023-02-05' AS Date), N'cn_0000001', N'cd_0000001', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000129', CAST(N'2023-02-05' AS Date), N'cn_0000001', N'cd_0000001', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000130', CAST(N'2023-02-06' AS Date), N'cn_0000001', N'cd_0000001', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000131', CAST(N'2023-02-06' AS Date), N'cn_0000001', N'cd_0000001', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000132', CAST(N'2023-02-07' AS Date), N'cn_0000001', N'cd_0000001', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000133', CAST(N'2023-02-07' AS Date), N'cn_0000001', N'cd_0000001', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000134', CAST(N'2023-02-08' AS Date), N'cn_0000001', N'cd_0000001', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000135', CAST(N'2023-02-08' AS Date), N'cn_0000001', N'cd_0000001', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000136', CAST(N'2023-02-09' AS Date), N'cn_0000001', N'cd_0000001', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000137', CAST(N'2023-02-09' AS Date), N'cn_0000001', N'cd_0000001', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000138', CAST(N'2023-02-10' AS Date), N'cn_0000001', N'cd_0000001', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000139', CAST(N'2023-02-10' AS Date), N'cn_0000001', N'cd_0000001', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000140', CAST(N'2023-02-01' AS Date), N'cn_0000002', N'cd_0000001', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000141', CAST(N'2023-02-01' AS Date), N'cn_0000002', N'cd_0000001', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000142', CAST(N'2023-02-02' AS Date), N'cn_0000002', N'cd_0000001', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000143', CAST(N'2023-02-02' AS Date), N'cn_0000002', N'cd_0000001', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000144', CAST(N'2023-02-03' AS Date), N'cn_0000002', N'cd_0000001', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000145', CAST(N'2023-02-03' AS Date), N'cn_0000002', N'cd_0000001', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000146', CAST(N'2023-02-04' AS Date), N'cn_0000002', N'cd_0000001', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000147', CAST(N'2023-02-04' AS Date), N'cn_0000002', N'cd_0000001', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000148', CAST(N'2023-02-05' AS Date), N'cn_0000002', N'cd_0000001', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000149', CAST(N'2023-02-05' AS Date), N'cn_0000002', N'cd_0000001', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000150', CAST(N'2023-02-06' AS Date), N'cn_0000002', N'cd_0000001', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000151', CAST(N'2023-02-06' AS Date), N'cn_0000002', N'cd_0000001', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000152', CAST(N'2023-02-07' AS Date), N'cn_0000002', N'cd_0000001', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000153', CAST(N'2023-02-07' AS Date), N'cn_0000002', N'cd_0000001', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000154', CAST(N'2023-02-08' AS Date), N'cn_0000002', N'cd_0000001', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000155', CAST(N'2023-02-08' AS Date), N'cn_0000002', N'cd_0000001', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000156', CAST(N'2023-02-09' AS Date), N'cn_0000002', N'cd_0000001', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000157', CAST(N'2023-02-09' AS Date), N'cn_0000002', N'cd_0000001', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000158', CAST(N'2023-02-10' AS Date), N'cn_0000002', N'cd_0000001', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000159', CAST(N'2023-02-10' AS Date), N'cn_0000002', N'cd_0000001', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000160', CAST(N'2023-02-01' AS Date), N'cn_0000003', N'cd_0000001', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000161', CAST(N'2023-02-01' AS Date), N'cn_0000003', N'cd_0000001', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000162', CAST(N'2023-02-02' AS Date), N'cn_0000003', N'cd_0000001', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000163', CAST(N'2023-02-02' AS Date), N'cn_0000003', N'cd_0000001', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000164', CAST(N'2023-02-03' AS Date), N'cn_0000003', N'cd_0000001', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000165', CAST(N'2023-02-03' AS Date), N'cn_0000003', N'cd_0000001', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000166', CAST(N'2023-02-04' AS Date), N'cn_0000003', N'cd_0000001', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000167', CAST(N'2023-02-04' AS Date), N'cn_0000003', N'cd_0000001', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000168', CAST(N'2023-02-05' AS Date), N'cn_0000003', N'cd_0000001', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000169', CAST(N'2023-02-05' AS Date), N'cn_0000003', N'cd_0000001', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000170', CAST(N'2023-02-06' AS Date), N'cn_0000003', N'cd_0000001', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000171', CAST(N'2023-02-06' AS Date), N'cn_0000003', N'cd_0000001', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000172', CAST(N'2023-02-07' AS Date), N'cn_0000003', N'cd_0000001', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000173', CAST(N'2023-02-07' AS Date), N'cn_0000003', N'cd_0000001', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000174', CAST(N'2023-02-08' AS Date), N'cn_0000003', N'cd_0000001', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000175', CAST(N'2023-02-08' AS Date), N'cn_0000003', N'cd_0000001', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000176', CAST(N'2023-02-09' AS Date), N'cn_0000003', N'cd_0000001', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000177', CAST(N'2023-02-09' AS Date), N'cn_0000003', N'cd_0000001', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000178', CAST(N'2023-02-10' AS Date), N'cn_0000003', N'cd_0000001', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000179', CAST(N'2023-02-10' AS Date), N'cn_0000003', N'cd_0000001', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000180', CAST(N'2023-02-01' AS Date), N'cn_0000004', N'cd_0000001', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000181', CAST(N'2023-02-01' AS Date), N'cn_0000004', N'cd_0000001', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000182', CAST(N'2023-02-02' AS Date), N'cn_0000004', N'cd_0000001', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000183', CAST(N'2023-02-02' AS Date), N'cn_0000004', N'cd_0000001', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000184', CAST(N'2023-02-03' AS Date), N'cn_0000004', N'cd_0000001', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000185', CAST(N'2023-02-03' AS Date), N'cn_0000004', N'cd_0000001', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000186', CAST(N'2023-02-04' AS Date), N'cn_0000004', N'cd_0000001', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000187', CAST(N'2023-02-04' AS Date), N'cn_0000004', N'cd_0000001', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000188', CAST(N'2023-02-05' AS Date), N'cn_0000004', N'cd_0000001', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000189', CAST(N'2023-02-05' AS Date), N'cn_0000004', N'cd_0000001', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000190', CAST(N'2023-02-06' AS Date), N'cn_0000004', N'cd_0000001', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000191', CAST(N'2023-02-06' AS Date), N'cn_0000004', N'cd_0000001', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000192', CAST(N'2023-02-07' AS Date), N'cn_0000004', N'cd_0000001', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000193', CAST(N'2023-02-07' AS Date), N'cn_0000004', N'cd_0000001', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000194', CAST(N'2023-02-08' AS Date), N'cn_0000004', N'cd_0000001', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000195', CAST(N'2023-02-08' AS Date), N'cn_0000004', N'cd_0000001', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000196', CAST(N'2023-02-09' AS Date), N'cn_0000004', N'cd_0000001', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000197', CAST(N'2023-02-09' AS Date), N'cn_0000004', N'cd_0000001', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000198', CAST(N'2023-02-10' AS Date), N'cn_0000004', N'cd_0000001', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000199', CAST(N'2023-02-10' AS Date), N'cn_0000004', N'cd_0000001', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000200', CAST(N'2023-02-01' AS Date), N'cn_0000000', N'cd_0000002', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000201', CAST(N'2023-02-01' AS Date), N'cn_0000000', N'cd_0000002', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000202', CAST(N'2023-02-02' AS Date), N'cn_0000000', N'cd_0000002', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000203', CAST(N'2023-02-02' AS Date), N'cn_0000000', N'cd_0000002', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000204', CAST(N'2023-02-03' AS Date), N'cn_0000000', N'cd_0000002', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000205', CAST(N'2023-02-03' AS Date), N'cn_0000000', N'cd_0000002', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000206', CAST(N'2023-02-04' AS Date), N'cn_0000000', N'cd_0000002', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000207', CAST(N'2023-02-04' AS Date), N'cn_0000000', N'cd_0000002', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000208', CAST(N'2023-02-05' AS Date), N'cn_0000000', N'cd_0000002', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000209', CAST(N'2023-02-05' AS Date), N'cn_0000000', N'cd_0000002', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000210', CAST(N'2023-02-06' AS Date), N'cn_0000000', N'cd_0000002', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000211', CAST(N'2023-02-06' AS Date), N'cn_0000000', N'cd_0000002', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000212', CAST(N'2023-02-07' AS Date), N'cn_0000000', N'cd_0000002', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000213', CAST(N'2023-02-07' AS Date), N'cn_0000000', N'cd_0000002', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000214', CAST(N'2023-02-08' AS Date), N'cn_0000000', N'cd_0000002', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000215', CAST(N'2023-02-08' AS Date), N'cn_0000000', N'cd_0000002', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000216', CAST(N'2023-02-09' AS Date), N'cn_0000000', N'cd_0000002', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000217', CAST(N'2023-02-09' AS Date), N'cn_0000000', N'cd_0000002', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000218', CAST(N'2023-02-10' AS Date), N'cn_0000000', N'cd_0000002', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000219', CAST(N'2023-02-10' AS Date), N'cn_0000000', N'cd_0000002', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000220', CAST(N'2023-02-01' AS Date), N'cn_0000001', N'cd_0000002', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000221', CAST(N'2023-02-01' AS Date), N'cn_0000001', N'cd_0000002', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000222', CAST(N'2023-02-02' AS Date), N'cn_0000001', N'cd_0000002', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000223', CAST(N'2023-02-02' AS Date), N'cn_0000001', N'cd_0000002', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000224', CAST(N'2023-02-03' AS Date), N'cn_0000001', N'cd_0000002', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000225', CAST(N'2023-02-03' AS Date), N'cn_0000001', N'cd_0000002', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000226', CAST(N'2023-02-04' AS Date), N'cn_0000001', N'cd_0000002', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000227', CAST(N'2023-02-04' AS Date), N'cn_0000001', N'cd_0000002', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000228', CAST(N'2023-02-05' AS Date), N'cn_0000001', N'cd_0000002', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000229', CAST(N'2023-02-05' AS Date), N'cn_0000001', N'cd_0000002', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000230', CAST(N'2023-02-06' AS Date), N'cn_0000001', N'cd_0000002', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000231', CAST(N'2023-02-06' AS Date), N'cn_0000001', N'cd_0000002', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000232', CAST(N'2023-02-07' AS Date), N'cn_0000001', N'cd_0000002', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000233', CAST(N'2023-02-07' AS Date), N'cn_0000001', N'cd_0000002', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000234', CAST(N'2023-02-08' AS Date), N'cn_0000001', N'cd_0000002', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000235', CAST(N'2023-02-08' AS Date), N'cn_0000001', N'cd_0000002', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000236', CAST(N'2023-02-09' AS Date), N'cn_0000001', N'cd_0000002', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000237', CAST(N'2023-02-09' AS Date), N'cn_0000001', N'cd_0000002', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000238', CAST(N'2023-02-10' AS Date), N'cn_0000001', N'cd_0000002', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000239', CAST(N'2023-02-10' AS Date), N'cn_0000001', N'cd_0000002', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000240', CAST(N'2023-02-01' AS Date), N'cn_0000002', N'cd_0000002', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000241', CAST(N'2023-02-01' AS Date), N'cn_0000002', N'cd_0000002', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000242', CAST(N'2023-02-02' AS Date), N'cn_0000002', N'cd_0000002', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000243', CAST(N'2023-02-02' AS Date), N'cn_0000002', N'cd_0000002', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000244', CAST(N'2023-02-03' AS Date), N'cn_0000002', N'cd_0000002', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000245', CAST(N'2023-02-03' AS Date), N'cn_0000002', N'cd_0000002', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000246', CAST(N'2023-02-04' AS Date), N'cn_0000002', N'cd_0000002', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000247', CAST(N'2023-02-04' AS Date), N'cn_0000002', N'cd_0000002', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000248', CAST(N'2023-02-05' AS Date), N'cn_0000002', N'cd_0000002', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000249', CAST(N'2023-02-05' AS Date), N'cn_0000002', N'cd_0000002', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000250', CAST(N'2023-02-06' AS Date), N'cn_0000002', N'cd_0000002', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000251', CAST(N'2023-02-06' AS Date), N'cn_0000002', N'cd_0000002', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000252', CAST(N'2023-02-07' AS Date), N'cn_0000002', N'cd_0000002', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000253', CAST(N'2023-02-07' AS Date), N'cn_0000002', N'cd_0000002', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000254', CAST(N'2023-02-08' AS Date), N'cn_0000002', N'cd_0000002', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000255', CAST(N'2023-02-08' AS Date), N'cn_0000002', N'cd_0000002', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000256', CAST(N'2023-02-09' AS Date), N'cn_0000002', N'cd_0000002', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000257', CAST(N'2023-02-09' AS Date), N'cn_0000002', N'cd_0000002', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000258', CAST(N'2023-02-10' AS Date), N'cn_0000002', N'cd_0000002', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000259', CAST(N'2023-02-10' AS Date), N'cn_0000002', N'cd_0000002', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000260', CAST(N'2023-02-01' AS Date), N'cn_0000003', N'cd_0000002', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000261', CAST(N'2023-02-01' AS Date), N'cn_0000003', N'cd_0000002', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000262', CAST(N'2023-02-02' AS Date), N'cn_0000003', N'cd_0000002', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000263', CAST(N'2023-02-02' AS Date), N'cn_0000003', N'cd_0000002', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000264', CAST(N'2023-02-03' AS Date), N'cn_0000003', N'cd_0000002', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000265', CAST(N'2023-02-03' AS Date), N'cn_0000003', N'cd_0000002', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000266', CAST(N'2023-02-04' AS Date), N'cn_0000003', N'cd_0000002', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000267', CAST(N'2023-02-04' AS Date), N'cn_0000003', N'cd_0000002', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000268', CAST(N'2023-02-05' AS Date), N'cn_0000003', N'cd_0000002', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000269', CAST(N'2023-02-05' AS Date), N'cn_0000003', N'cd_0000002', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000270', CAST(N'2023-02-06' AS Date), N'cn_0000003', N'cd_0000002', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000271', CAST(N'2023-02-06' AS Date), N'cn_0000003', N'cd_0000002', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000272', CAST(N'2023-02-07' AS Date), N'cn_0000003', N'cd_0000002', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000273', CAST(N'2023-02-07' AS Date), N'cn_0000003', N'cd_0000002', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000274', CAST(N'2023-02-08' AS Date), N'cn_0000003', N'cd_0000002', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000275', CAST(N'2023-02-08' AS Date), N'cn_0000003', N'cd_0000002', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000276', CAST(N'2023-02-09' AS Date), N'cn_0000003', N'cd_0000002', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000277', CAST(N'2023-02-09' AS Date), N'cn_0000003', N'cd_0000002', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000278', CAST(N'2023-02-10' AS Date), N'cn_0000003', N'cd_0000002', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000279', CAST(N'2023-02-10' AS Date), N'cn_0000003', N'cd_0000002', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000280', CAST(N'2023-02-01' AS Date), N'cn_0000004', N'cd_0000002', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000281', CAST(N'2023-02-01' AS Date), N'cn_0000004', N'cd_0000002', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000282', CAST(N'2023-02-02' AS Date), N'cn_0000004', N'cd_0000002', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000283', CAST(N'2023-02-02' AS Date), N'cn_0000004', N'cd_0000002', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000284', CAST(N'2023-02-03' AS Date), N'cn_0000004', N'cd_0000002', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000285', CAST(N'2023-02-03' AS Date), N'cn_0000004', N'cd_0000002', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000286', CAST(N'2023-02-04' AS Date), N'cn_0000004', N'cd_0000002', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000287', CAST(N'2023-02-04' AS Date), N'cn_0000004', N'cd_0000002', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000288', CAST(N'2023-02-05' AS Date), N'cn_0000004', N'cd_0000002', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000289', CAST(N'2023-02-05' AS Date), N'cn_0000004', N'cd_0000002', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000290', CAST(N'2023-02-06' AS Date), N'cn_0000004', N'cd_0000002', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000291', CAST(N'2023-02-06' AS Date), N'cn_0000004', N'cd_0000002', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000292', CAST(N'2023-02-07' AS Date), N'cn_0000004', N'cd_0000002', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000293', CAST(N'2023-02-07' AS Date), N'cn_0000004', N'cd_0000002', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000294', CAST(N'2023-02-08' AS Date), N'cn_0000004', N'cd_0000002', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000295', CAST(N'2023-02-08' AS Date), N'cn_0000004', N'cd_0000002', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000296', CAST(N'2023-02-09' AS Date), N'cn_0000004', N'cd_0000002', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000297', CAST(N'2023-02-09' AS Date), N'cn_0000004', N'cd_0000002', N'clv_0000001')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000298', CAST(N'2023-02-10' AS Date), N'cn_0000004', N'cd_0000002', N'clv_0000000')
GO
INSERT [dbo].[PhieuPhanCong] ([maPPC], [ngayPhan], [maCN], [maCD], [maCLV]) VALUES (N'ppc_0000299', CAST(N'2023-02-10' AS Date), N'cn_0000004', N'cd_0000002', N'clv_0000001')
GO
INSERT [dbo].[PhongBan] ([maPB], [tenPB], [phanKhu]) VALUES (N'pb_0000000', N'Phòng Hành Chánh', N'Khu văn phòng')
GO
INSERT [dbo].[PhongBan] ([maPB], [tenPB], [phanKhu]) VALUES (N'pb_0000001', N'Ban Sản Xuất 1', N'Phân xưởng 1')
GO
INSERT [dbo].[PhongBan] ([maPB], [tenPB], [phanKhu]) VALUES (N'pb_0000002', N'Ban Sản Xuất 2', N'Phân xưởng 2')
GO
INSERT [dbo].[PhongBan] ([maPB], [tenPB], [phanKhu]) VALUES (N'pb_0000003', N'Ban Sản Xuất 3', N'Phân xưởng 3')
GO
INSERT [dbo].[SanPham] ([maSP], [tenSP], [donViTinh], [soLuong], [ngayBatDau], [ngayKetThuc], [hoanThanh]) VALUES (N'sp_0000000', N'Dép cao su', N'Đôi', 2000, CAST(N'2023-03-10' AS Date), CAST(N'2023-03-10' AS Date), 1)
GO
INSERT [dbo].[SanPham] ([maSP], [tenSP], [donViTinh], [soLuong], [ngayBatDau], [ngayKetThuc], [hoanThanh]) VALUES (N'sp_0000001', N'Dép da tổng hợp', N'Đôi', 2500, CAST(N'2023-03-10' AS Date), CAST(N'2023-03-10' AS Date), 0)
GO
INSERT [dbo].[SanPham] ([maSP], [tenSP], [donViTinh], [soLuong], [ngayBatDau], [ngayKetThuc], [hoanThanh]) VALUES (N'sp_0000002', N'Dép tổ ong', N'Đôi', 1900, CAST(N'2023-03-10' AS Date), CAST(N'2023-03-10' AS Date), 0)
GO
INSERT [dbo].[TaiKhoan] ([gmail], [matKhau], [vaiTro], [maNVHC]) VALUES ('sson12131415@gmail.com', 'pass123', 'NVQLCC', N'nvhc_0000002')
GO
INSERT [dbo].[TaiKhoan] ([gmail], [matKhau], [vaiTro], [maNVHC]) VALUES ('inin.pandagaming0411@gmail.com', 'pass123', 'NVQLCC', N'nvhc_0000003')
GO
INSERT [dbo].[TaiKhoan] ([gmail], [matKhau], [vaiTro], [maNVHC]) VALUES ('thiendat9dthcstanhai@gmail.com', N'pass123', N'ADMIN', N'nvhc_0000004')
GO
ALTER TABLE [dbo].[CaLamViec] ADD  CONSTRAINT [DF__CaLamViec__maCLV__2F10007B]  DEFAULT ([dbo].[AUTO_maCLV]()) FOR [maCLV]
GO
ALTER TABLE [dbo].[CongDoan] ADD  DEFAULT ([dbo].[AUTO_maCD]()) FOR [maCD]
GO
ALTER TABLE [dbo].[CongNhan] ADD  DEFAULT ([dbo].[AUTO_maCN]()) FOR [maCN]
GO
ALTER TABLE [dbo].[LuongCongNhan] ADD  DEFAULT ([dbo].[AUTO_maLuongCN]()) FOR [maLuongCN]
GO
ALTER TABLE [dbo].[LuongNVHC] ADD  CONSTRAINT [DF__LuongNVHC__maLuo__47DBAE45]  DEFAULT ([dbo].[AUTO_maLuongNVHC]()) FOR [maLuongNVHC]
GO
ALTER TABLE [dbo].[NhanVienHanhChach] ADD  DEFAULT ([dbo].[AUTO_maNVHC]()) FOR [maNVHC]
GO
ALTER TABLE [dbo].[PhieuChamCongCN] ADD  DEFAULT ([dbo].[AUTO_maPCCCN]()) FOR [maPCCCN]
GO
ALTER TABLE [dbo].[PhieuChamCongNVHC] ADD  DEFAULT ([dbo].[AUTO_maPCCNVHC]()) FOR [maPCCNVHC]
GO
ALTER TABLE [dbo].[PhieuPhanCong] ADD  DEFAULT ([dbo].[AUTO_maPPC]()) FOR [maPPC]
GO
ALTER TABLE [dbo].[PhongBan] ADD  DEFAULT ([dbo].[AUTO_maPB]()) FOR [maPB]
GO
ALTER TABLE [dbo].[SanPham] ADD  DEFAULT ([dbo].[AUTO_maSP]()) FOR [maSP]
GO
ALTER TABLE [dbo].[CongDoan]  WITH CHECK ADD  CONSTRAINT [FK_CongDoan_SanPham] FOREIGN KEY([maSP])
REFERENCES [dbo].[SanPham] ([maSP])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CongDoan] CHECK CONSTRAINT [FK_CongDoan_SanPham]
GO
ALTER TABLE [dbo].[CongNhan]  WITH CHECK ADD  CONSTRAINT [FK_CongNhan_PhongBan] FOREIGN KEY([maPB])
REFERENCES [dbo].[PhongBan] ([maPB])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CongNhan] CHECK CONSTRAINT [FK_CongNhan_PhongBan]
GO
ALTER TABLE [dbo].[LuongCongNhan]  WITH CHECK ADD  CONSTRAINT [FK_LuongCongNhan_CongNhan] FOREIGN KEY([maCN])
REFERENCES [dbo].[CongNhan] ([maCN])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LuongCongNhan] CHECK CONSTRAINT [FK_LuongCongNhan_CongNhan]
GO
ALTER TABLE [dbo].[LuongNVHC]  WITH CHECK ADD  CONSTRAINT [FK_LuongNVHC_NhanVienHanhChanh] FOREIGN KEY([maNVHC])
REFERENCES [dbo].[NhanVienHanhChach] ([maNVHC])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LuongNVHC] CHECK CONSTRAINT [FK_LuongNVHC_NhanVienHanhChanh]
GO
ALTER TABLE [dbo].[NhanVienHanhChach]  WITH CHECK ADD  CONSTRAINT [FK_NhanVienHanhChanh_PhongBan] FOREIGN KEY([maPB])
REFERENCES [dbo].[PhongBan] ([maPB])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NhanVienHanhChach] CHECK CONSTRAINT [FK_NhanVienHanhChanh_PhongBan]
GO
ALTER TABLE [dbo].[PhieuChamCongCN]  WITH CHECK ADD  CONSTRAINT [FK_PhieuChamCongCN_PhieuPhanCong] FOREIGN KEY([maPPC])
REFERENCES [dbo].[PhieuPhanCong] ([maPPC])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PhieuChamCongCN] CHECK CONSTRAINT [FK_PhieuChamCongCN_PhieuPhanCong]
GO
ALTER TABLE [dbo].[PhieuChamCongNVHC]  WITH CHECK ADD  CONSTRAINT [FK_PhieuChamCongNVHC_NhanVienHanhChanh] FOREIGN KEY([maNVHC])
REFERENCES [dbo].[NhanVienHanhChach] ([maNVHC])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PhieuChamCongNVHC] CHECK CONSTRAINT [FK_PhieuChamCongNVHC_NhanVienHanhChanh]
GO
ALTER TABLE [dbo].[PhieuPhanCong]  WITH CHECK ADD  CONSTRAINT [FK_PhieuPhanCong_CaLamViec] FOREIGN KEY([maCLV])
REFERENCES [dbo].[CaLamViec] ([maCLV])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PhieuPhanCong] CHECK CONSTRAINT [FK_PhieuPhanCong_CaLamViec]
GO
ALTER TABLE [dbo].[PhieuPhanCong]  WITH CHECK ADD  CONSTRAINT [FK_PhieuPhanCong_CongDoan] FOREIGN KEY([maCD])
REFERENCES [dbo].[CongDoan] ([maCD])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PhieuPhanCong] CHECK CONSTRAINT [FK_PhieuPhanCong_CongDoan]
GO
ALTER TABLE [dbo].[PhieuPhanCong]  WITH CHECK ADD  CONSTRAINT [FK_PhieuPhanCong_CongNhan] FOREIGN KEY([maCN])
REFERENCES [dbo].[CongNhan] ([maCN])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PhieuPhanCong] CHECK CONSTRAINT [FK_PhieuPhanCong_CongNhan]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_TaiKhoan_NhanVienHanhChanh] FOREIGN KEY([maNVHC])
REFERENCES [dbo].[NhanVienHanhChach] ([maNVHC])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [FK_TaiKhoan_NhanVienHanhChanh]
GO
