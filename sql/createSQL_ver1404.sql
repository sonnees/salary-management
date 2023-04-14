--ver14/04
CREATE DATABASE PhanMemTinhLuong_PTUD
go
USE [PhanMemTinhLuong_PTUD]
GO
/****** Object:  UserDefinedFunction [dbo].[AUTO_maCD]    Script Date: 13/04/2023 10:01:58 CH ******/
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
/****** Object:  UserDefinedFunction [dbo].[AUTO_maCLV]    Script Date: 13/04/2023 10:01:58 CH ******/
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
/****** Object:  UserDefinedFunction [dbo].[AUTO_maCN]    Script Date: 13/04/2023 10:01:58 CH ******/
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
/****** Object:  UserDefinedFunction [dbo].[AUTO_maLuongCN]    Script Date: 13/04/2023 10:01:58 CH ******/
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
/****** Object:  UserDefinedFunction [dbo].[AUTO_maLuongNVHC]    Script Date: 13/04/2023 10:01:58 CH ******/
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
/****** Object:  UserDefinedFunction [dbo].[AUTO_maNVHC]    Script Date: 13/04/2023 10:01:58 CH ******/
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
/****** Object:  UserDefinedFunction [dbo].[AUTO_maPB]    Script Date: 13/04/2023 10:01:58 CH ******/
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
/****** Object:  UserDefinedFunction [dbo].[AUTO_maPCCCN]    Script Date: 13/04/2023 10:01:58 CH ******/
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
/****** Object:  UserDefinedFunction [dbo].[AUTO_maPCCNVHC]    Script Date: 13/04/2023 10:01:58 CH ******/
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
/****** Object:  UserDefinedFunction [dbo].[AUTO_maPPC]    Script Date: 13/04/2023 10:01:58 CH ******/
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
/****** Object:  UserDefinedFunction [dbo].[AUTO_maSP]    Script Date: 13/04/2023 10:01:58 CH ******/
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
/****** Object:  Table [dbo].[CaLamViec]    Script Date: 13/04/2023 10:01:58 CH ******/
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
/****** Object:  Table [dbo].[CongDoan]    Script Date: 13/04/2023 10:01:58 CH ******/
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
/****** Object:  Table [dbo].[CongNhan]    Script Date: 13/04/2023 10:01:58 CH ******/
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
/****** Object:  Table [dbo].[LuongCongNhan]    Script Date: 13/04/2023 10:01:58 CH ******/
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
/****** Object:  Table [dbo].[LuongNVHC]    Script Date: 13/04/2023 10:01:58 CH ******/
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
/****** Object:  Table [dbo].[NhanVienHanhChach]    Script Date: 13/04/2023 10:01:58 CH ******/
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
/****** Object:  Table [dbo].[PhieuChamCongCN]    Script Date: 13/04/2023 10:01:58 CH ******/
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
/****** Object:  Table [dbo].[PhieuChamCongNVHC]    Script Date: 13/04/2023 10:01:58 CH ******/
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
/****** Object:  Table [dbo].[PhieuPhanCong]    Script Date: 13/04/2023 10:01:58 CH ******/
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
/****** Object:  Table [dbo].[PhongBan]    Script Date: 13/04/2023 10:01:58 CH ******/
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
/****** Object:  Table [dbo].[SanPham]    Script Date: 13/04/2023 10:01:58 CH ******/
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
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 13/04/2023 10:01:58 CH ******/
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
INSERT [dbo].[NhanVienHanhChach] ([maNVHC], [tenNVHC], [gioiTinh], [ngaySinh], [diaChi], [soDienThoai], [ngayTGCT], [chucVu], [trinhDo], [tiengAnh], [luongCoBan], [maPB]) VALUES (N'nvhc_0000000', N'Nguyễn Thị Mai Anh', 1, CAST(N'1995-04-15' AS Date), N'123 Nguyễn Văn Linh, Quận Thanh Khê, TP. Đà Nẵng', N'0912345678', CAST(N'2015-01-01' AS Date), N'Nhân viên kế toán', N'Dưới Đại học', N'Mức yếu', 8000000, N'pb_0000000')
GO
INSERT [dbo].[NhanVienHanhChach] ([maNVHC], [tenNVHC], [gioiTinh], [ngaySinh], [diaChi], [soDienThoai], [ngayTGCT], [chucVu], [trinhDo], [tiengAnh], [luongCoBan], [maPB]) VALUES (N'nvhc_0000001', N'Trần Văn Hưng', 0, CAST(N'1994-12-02' AS Date), N'456 Nguyễn Hữu Thọ, Quận 7, TP. Hồ Chí Minh', N'0912345678', CAST(N'2017-09-15' AS Date), N'Nhân viên marketing', N'Đại học', N'Mức khá', 12000000, N'pb_0000000')
GO
INSERT [dbo].[NhanVienHanhChach] ([maNVHC], [tenNVHC], [gioiTinh], [ngaySinh], [diaChi], [soDienThoai], [ngayTGCT], [chucVu], [trinhDo], [tiengAnh], [luongCoBan], [maPB]) VALUES (N'nvhc_0000002', N'Lê Thị Thanh Tuyền', 1, CAST(N'1996-10-02' AS Date), N'789 Trần Hưng Đạo, Quận 1, TP. Hồ Chí Minh', N'0312345678', CAST(N'2016-05-11' AS Date), N'Nhân viên IT', N'Trên Đại học', N'Mức khá', 9000000, N'pb_0000000')
GO
INSERT [dbo].[NhanVienHanhChach] ([maNVHC], [tenNVHC], [gioiTinh], [ngaySinh], [diaChi], [soDienThoai], [ngayTGCT], [chucVu], [trinhDo], [tiengAnh], [luongCoBan], [maPB]) VALUES (N'nvhc_0000003', N'Phạm Văn An', 0, CAST(N'1997-03-22' AS Date), N'234 Hoàng Quốc Việt, Quận Cầu Giấy, TP. Hà Nội', N'0312345678', CAST(N'2017-12-13' AS Date), N'Nhân viên chăm sóc khách hàng', N'Đại học', N'Mức giỏi', 10000000, N'pb_0000000')
GO
INSERT [dbo].[NhanVienHanhChach] ([maNVHC], [tenNVHC], [gioiTinh], [ngaySinh], [diaChi], [soDienThoai], [ngayTGCT], [chucVu], [trinhDo], [tiengAnh], [luongCoBan], [maPB]) VALUES (N'nvhc_0000004', N'Nguyễn Thanh Huyền', 1, CAST(N'1996-03-22' AS Date), N'234 Hoàng Quốc Việt, Quận Cầu Giấy, TP. Hà Nội', N'0312345678', CAST(N'2014-11-03' AS Date), N'Nhân viên nhân sự', N'Trên Đại học', N'Mức giỏi', 8000000, N'pb_0000000')
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
INSERT [dbo].[TaiKhoan] ([gmail], [matKhau], [vaiTro], [maNVHC]) VALUES (N'sson12131415@gmail.com                                                                                                                                ', N'pass123                                                                                                                                               ', N'ADMIN                                                                                                                                                 ', N'nvhc_0000002')
GO
INSERT [dbo].[TaiKhoan] ([gmail], [matKhau], [vaiTro], [maNVHC]) VALUES (N'thiendat9dthcstanhai@gmail.com                                                                                                                        ', N'pass123                                                                                                                                               ', N'ADMIN                                                                                                                                                 ', N'nvhc_0000004')
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

