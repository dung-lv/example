USE [Library]
GO
/****** Object:  Table [dbo].[tblDocGia]    Script Date: 5/22/2019 3:45:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblDocGia](
	[MADG] [varchar](10) NOT NULL,
	[HOTEN] [nvarchar](100) NOT NULL,
	[NGAYSINH] [varchar](50) NOT NULL,
	[GIOITINH] [nvarchar](10) NOT NULL,
	[LOP] [varchar](50) NOT NULL,
	[DIACHI] [nvarchar](100) NOT NULL,
	[EMAIL] [varchar](50) NOT NULL,
	[GHICHU] [nvarchar](max) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK__tblDocGi__603F004691AC70BA] PRIMARY KEY CLUSTERED 
(
	[MADG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblLinhVuc]    Script Date: 5/22/2019 3:45:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblLinhVuc](
	[MALV] [varchar](10) NOT NULL,
	[TENLV] [nvarchar](100) NOT NULL,
	[GHICHU] [nvarchar](max) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK__tblLinhV__603F415351441711] PRIMARY KEY CLUSTERED 
(
	[MALV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblNhanVien]    Script Date: 5/22/2019 3:45:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblNhanVien](
	[TENTAIKHOAN] [varchar](50) NOT NULL,
	[MATKHAU] [varchar](50) NOT NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TENTAIKHOAN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblSach]    Script Date: 5/22/2019 3:45:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblSach](
	[MASACH] [varchar](10) NOT NULL,
	[TENSACH] [nvarchar](100) NOT NULL,
	[TACGIA] [nvarchar](100) NOT NULL,
	[NHAXUATBAN] [nvarchar](100) NOT NULL,
	[NAMXB] [varchar](50) NOT NULL,
	[SOTRANG] [int] NOT NULL,
	[SOLUONG] [int] NOT NULL,
	[NGAYNHAP] [varchar](50) NOT NULL,
	[GHICHU] [nvarchar](max) NULL,
	[MALV] [varchar](10) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SOSACHHONG] [int] NULL,
 CONSTRAINT [PK__tblSach__3FC48E4CBA3759E4] PRIMARY KEY CLUSTERED 
(
	[MASACH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblThongTinMuon]    Script Date: 5/22/2019 3:45:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblThongTinMuon](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SOLUONGMUON] [int] NOT NULL,
	[NGAYMUON] [varchar](50) NOT NULL,
	[NGAYTRA] [varchar](50) NOT NULL,
	[XACNHANTRA] [nvarchar](50) NULL,
	[GHICHU] [nvarchar](max) NULL,
	[MASACH] [varchar](10) NOT NULL,
	[MADG] [varchar](10) NOT NULL,
	[DEADLINE] [bit] NULL CONSTRAINT [DF_tblThongTinMuon_DEADLINE]  DEFAULT ((0)),
 CONSTRAINT [PK__tblThong__3214EC279004800E] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblDocGia] ON 

INSERT [dbo].[tblDocGia] ([MADG], [HOTEN], [NGAYSINH], [GIOITINH], [LOP], [DIACHI], [EMAIL], [GHICHU], [ID]) VALUES (N'dg01', N'Lê Văn Dũng', N'08-12-1998', N'Nam', N'khmt15', N'Hà Nội', N'dung@gmail.com', N'note 1', 1)
INSERT [dbo].[tblDocGia] ([MADG], [HOTEN], [NGAYSINH], [GIOITINH], [LOP], [DIACHI], [EMAIL], [GHICHU], [ID]) VALUES (N'dg02', N'Nguyễn Thị Hường', N'27-11-1998', N'Nữ', N'httt15', N'Đặng Thùy Trâm', N'huong@gmail.com', N'note 2', 5)
INSERT [dbo].[tblDocGia] ([MADG], [HOTEN], [NGAYSINH], [GIOITINH], [LOP], [DIACHI], [EMAIL], [GHICHU], [ID]) VALUES (N'dg03', N'Nguyễn Chiến Thắng', N'21-02-1998', N'Nam', N'khmt15', N'Trần Cung', N'thang@gmail.com', N'note 3', 6)
INSERT [dbo].[tblDocGia] ([MADG], [HOTEN], [NGAYSINH], [GIOITINH], [LOP], [DIACHI], [EMAIL], [GHICHU], [ID]) VALUES (N'dg04', N'Nguyễn Danh Hiếu', N'09-05-1998', N'Nam', N'khmt15', N'Xuân Đỉnh', N'hieu@gmail.com', N'note 4', 7)
INSERT [dbo].[tblDocGia] ([MADG], [HOTEN], [NGAYSINH], [GIOITINH], [LOP], [DIACHI], [EMAIL], [GHICHU], [ID]) VALUES (N'dg05', N'Trần Tiến Anh', N'01-10-1998', N'Nam', N'khmt15', N'Hồ Tây', N'anh@gmail.com', N'note 5', 8)
INSERT [dbo].[tblDocGia] ([MADG], [HOTEN], [NGAYSINH], [GIOITINH], [LOP], [DIACHI], [EMAIL], [GHICHU], [ID]) VALUES (N'dg06', N'Ngô Hoàng Việt', N'06-05-1998', N'Nam', N'khmt15', N'Cầu Giấy', N'viet@gmail.com', N'note 6', 9)
SET IDENTITY_INSERT [dbo].[tblDocGia] OFF
SET IDENTITY_INSERT [dbo].[tblLinhVuc] ON 

INSERT [dbo].[tblLinhVuc] ([MALV], [TENLV], [GHICHU], [ID]) VALUES (N'lv01', N'lập trình', N'note 1', 1)
INSERT [dbo].[tblLinhVuc] ([MALV], [TENLV], [GHICHU], [ID]) VALUES (N'lv02', N'giáo dục', N'note 2', 4)
INSERT [dbo].[tblLinhVuc] ([MALV], [TENLV], [GHICHU], [ID]) VALUES (N'lv03', N'đời sống', N'note 3', 1003)
INSERT [dbo].[tblLinhVuc] ([MALV], [TENLV], [GHICHU], [ID]) VALUES (N'lv04', N'công nghệ', N'note 4', 1006)
INSERT [dbo].[tblLinhVuc] ([MALV], [TENLV], [GHICHU], [ID]) VALUES (N'lv05', N'Giải trí', N'note 5', 1009)
SET IDENTITY_INSERT [dbo].[tblLinhVuc] OFF
SET IDENTITY_INSERT [dbo].[tblNhanVien] ON 

INSERT [dbo].[tblNhanVien] ([TENTAIKHOAN], [MATKHAU], [ID]) VALUES (N'aaaaa', N'22222', 3)
INSERT [dbo].[tblNhanVien] ([TENTAIKHOAN], [MATKHAU], [ID]) VALUES (N'dung', N'12345', 2)
INSERT [dbo].[tblNhanVien] ([TENTAIKHOAN], [MATKHAU], [ID]) VALUES (N'nv01', N'aaaaa', 1)
SET IDENTITY_INSERT [dbo].[tblNhanVien] OFF
SET IDENTITY_INSERT [dbo].[tblSach] ON 

INSERT [dbo].[tblSach] ([MASACH], [TENSACH], [TACGIA], [NHAXUATBAN], [NAMXB], [SOTRANG], [SOLUONG], [NGAYNHAP], [GHICHU], [MALV], [ID], [SOSACHHONG]) VALUES (N'sach01', N'Lý thuyết ngôn ngữ lập trình', N'Đại Thành Tiến', N'Kim đồng', N'2010', 60, 30, N'02-05-2019', N'note 1', N'lv03', 1007, 0)
INSERT [dbo].[tblSach] ([MASACH], [TENSACH], [TACGIA], [NHAXUATBAN], [NAMXB], [SOTRANG], [SOLUONG], [NGAYNHAP], [GHICHU], [MALV], [ID], [SOSACHHONG]) VALUES (N'sach02', N'Ngôn ngữ lập trình', N'Vũ Trọng Phụng', N'kim đồng', N'2010', 50, 9, N'02-05-2019', N'note 2', N'lv01', 1002, 0)
INSERT [dbo].[tblSach] ([MASACH], [TENSACH], [TACGIA], [NHAXUATBAN], [NAMXB], [SOTRANG], [SOLUONG], [NGAYNHAP], [GHICHU], [MALV], [ID], [SOSACHHONG]) VALUES (N'sach03', N'Triết học', N'Tôn Đại Thành', N'Thành phát', N'2001', 100, 20, N'06-05-2019', N'note 3', N'lv02', 1003, 0)
INSERT [dbo].[tblSach] ([MASACH], [TENSACH], [TACGIA], [NHAXUATBAN], [NAMXB], [SOTRANG], [SOLUONG], [NGAYNHAP], [GHICHU], [MALV], [ID], [SOSACHHONG]) VALUES (N'sach04', N'Toán chuyên đề', N'Nguyễn Ngọc Hà', N'Thành phát', N'2002', 60, 25, N'06-05-2019', N'note 4', N'lv02', 1005, 0)
INSERT [dbo].[tblSach] ([MASACH], [TENSACH], [TACGIA], [NHAXUATBAN], [NAMXB], [SOTRANG], [SOLUONG], [NGAYNHAP], [GHICHU], [MALV], [ID], [SOSACHHONG]) VALUES (N'sach05', N'Mạng máy tính', N'Lương Gia Thành', N'ĐHQG Hà nội', N'2005', 70, 30, N'08-05-2019', N'note 5', N'lv02', 1006, 2)
SET IDENTITY_INSERT [dbo].[tblSach] OFF
SET IDENTITY_INSERT [dbo].[tblThongTinMuon] ON 

INSERT [dbo].[tblThongTinMuon] ([ID], [SOLUONGMUON], [NGAYMUON], [NGAYTRA], [XACNHANTRA], [GHICHU], [MASACH], [MADG], [DEADLINE]) VALUES (33, 1, N'06-05-2019', N'08-05-2019', N'Chưa trả', N'note 2', N'sach05', N'dg05', 1)
INSERT [dbo].[tblThongTinMuon] ([ID], [SOLUONGMUON], [NGAYMUON], [NGAYTRA], [XACNHANTRA], [GHICHU], [MASACH], [MADG], [DEADLINE]) VALUES (35, 2, N'11-05-2019', N'19-05-2019', N'Chưa trả', N'note 3', N'sach02', N'dg03', 0)
INSERT [dbo].[tblThongTinMuon] ([ID], [SOLUONGMUON], [NGAYMUON], [NGAYTRA], [XACNHANTRA], [GHICHU], [MASACH], [MADG], [DEADLINE]) VALUES (36, 2, N'11-05-2019', N'18-05-2019', N'Chưa trả', N'note 3', N'sach03', N'dg03', 0)
INSERT [dbo].[tblThongTinMuon] ([ID], [SOLUONGMUON], [NGAYMUON], [NGAYTRA], [XACNHANTRA], [GHICHU], [MASACH], [MADG], [DEADLINE]) VALUES (37, 1, N'11-05-2019', N'17-05-2019', N'Đã trả', N'note 4', N'sach03', N'dg06', NULL)
INSERT [dbo].[tblThongTinMuon] ([ID], [SOLUONGMUON], [NGAYMUON], [NGAYTRA], [XACNHANTRA], [GHICHU], [MASACH], [MADG], [DEADLINE]) VALUES (40, 1, N'08-05-2019', N'11-05-2019', N'Chưa trả', N'note 1', N'sach01', N'dg01', 1)
SET IDENTITY_INSERT [dbo].[tblThongTinMuon] OFF
ALTER TABLE [dbo].[tblSach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_LinhVuc] FOREIGN KEY([MALV])
REFERENCES [dbo].[tblLinhVuc] ([MALV])
GO
ALTER TABLE [dbo].[tblSach] CHECK CONSTRAINT [FK_Sach_LinhVuc]
GO
ALTER TABLE [dbo].[tblThongTinMuon]  WITH CHECK ADD  CONSTRAINT [FK_TTM_DocGia] FOREIGN KEY([MADG])
REFERENCES [dbo].[tblDocGia] ([MADG])
GO
ALTER TABLE [dbo].[tblThongTinMuon] CHECK CONSTRAINT [FK_TTM_DocGia]
GO
ALTER TABLE [dbo].[tblThongTinMuon]  WITH CHECK ADD  CONSTRAINT [FK_TTM_Sach] FOREIGN KEY([MASACH])
REFERENCES [dbo].[tblSach] ([MASACH])
GO
ALTER TABLE [dbo].[tblThongTinMuon] CHECK CONSTRAINT [FK_TTM_Sach]
GO
/****** Object:  StoredProcedure [dbo].[USP_CheckLogin]    Script Date: 5/22/2019 3:45:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[USP_CheckLogin]
(@TENTAIKHOAN varchar(50),
@MATKHAU varchar(50))
as 
begin
    select ID from tblNhanVien where TENTAIKHOAN = @TENTAIKHOAN and MATKHAU = @MATKHAU
end

GO
/****** Object:  StoredProcedure [dbo].[USP_DeleteDocGia]    Script Date: 5/22/2019 3:45:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[USP_DeleteDocGia](@MADG varchar(10))
as 
begin
    Delete from tblDocGia where MADG = @MADG
end
GO
/****** Object:  StoredProcedure [dbo].[USP_DeleteLinhVuc]    Script Date: 5/22/2019 3:45:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[USP_DeleteLinhVuc](@MALV varchar(10))
as 
begin
    Delete from tblLinhVuc where MaLV = @MALV
end

GO
/****** Object:  StoredProcedure [dbo].[USP_DeleteSach]    Script Date: 5/22/2019 3:45:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[USP_DeleteSach](@MASACH varchar(10))
as 
begin
    Delete from tblSach where MASACH = @MASACH
end

GO
/****** Object:  StoredProcedure [dbo].[USP_DeleteThongTinMuonTra]    Script Date: 5/22/2019 3:45:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[USP_DeleteThongTinMuonTra](@MADG varchar(10), @MASACH varchar(10), @SOLUONGMUON int)
as 
begin
    Delete from tblThongTinMuon where MASACH=@MASACH and MADG=@MADG;
    Update tblThongTinMuon set SOLUONGMUON=(@SOLUONGMUON-1) where MADG=@MADG;
end

GO
/****** Object:  StoredProcedure [dbo].[USP_GetIdDocGia]    Script Date: 5/22/2019 3:45:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[USP_GetIdDocGia](@MADG varchar(10))
as 
begin
    select ID from tblDocGia as hdx where MADG = @MADG
end

GO
/****** Object:  StoredProcedure [dbo].[USP_GetIdLinhVuc]    Script Date: 5/22/2019 3:45:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[USP_GetIdLinhVuc](@MALV varchar(10))
as 
begin
    select ID from tblLinhVuc where MALV = @MALV
end

GO
/****** Object:  StoredProcedure [dbo].[USP_GetIdNhanVien]    Script Date: 5/22/2019 3:45:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[USP_GetIdNhanVien](@TENTAIKHOAN varchar(50))
as 
begin
    select ID from tblNhanVien where TENTAIKHOAN = @TENTAIKHOAN
end

GO
/****** Object:  StoredProcedure [dbo].[USP_GetIdSach]    Script Date: 5/22/2019 3:45:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[USP_GetIdSach](@MASACH varchar(10))
as 
begin
    select ID from tblSach where MASACH = @MASACH
end

GO
/****** Object:  StoredProcedure [dbo].[USP_GetIdThongTinMuonTra]    Script Date: 5/22/2019 3:45:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[USP_GetIdThongTinMuonTra](@MADG varchar(10), @MASACH varchar(10))
as 
begin
    select ID from tblThongTinMuon where MADG = @MADG and MASACH = @MASACH
end

GO
/****** Object:  StoredProcedure [dbo].[USP_GetListDocGia]    Script Date: 5/22/2019 3:45:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[USP_GetListDocGia]
as 
begin
    Select MADG,HOTEN,NGAYSINH,GIOITINH,LOP,DIACHI,EMAIL,GHICHU from tblDocGia
end

GO
/****** Object:  StoredProcedure [dbo].[USP_GetListLinhVuc]    Script Date: 5/22/2019 3:45:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[USP_GetListLinhVuc]
as 
begin
    select MALV,TENLV,GHICHU from tblLinhVuc
end

GO
/****** Object:  StoredProcedure [dbo].[USP_GetListSach]    Script Date: 5/22/2019 3:45:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[USP_GetListSach]
as 
begin
    select MASACH,TENSACH,TACGIA,NHAXUATBAN,MALV,NAMXB,SOTRANG,SOLUONG,SOSACHHONG,NGAYNHAP,GHICHU from tblSach
end

GO
/****** Object:  StoredProcedure [dbo].[USP_GetListThongTinMuonTra]    Script Date: 5/22/2019 3:45:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[USP_GetListThongTinMuonTra]
as 
begin
    select MADG,MASACH,SOLUONGMUON,NGAYMUON,NGAYTRA,XACNHANTRA,GHICHU from tblThongTinMuon
end

GO
/****** Object:  StoredProcedure [dbo].[USP_GetSoLuongSach]    Script Date: 5/22/2019 3:45:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[USP_GetSoLuongSach](@MASACH varchar(10))
as 
begin
    select SOLUONG from tblSach where MASACH = @MASACH
end

GO
/****** Object:  StoredProcedure [dbo].[USP_InsertDocGia]    Script Date: 5/22/2019 3:45:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[USP_InsertDocGia]
(@MADG varchar(10),
@HOTEN nvarchar(100),
@NGAYSINH varchar(50),
@GIOITINH nvarchar(10),
@LOP varchar(50),
@DIACHI nvarchar(100),
@EMAIL varchar(50),
@GHICHU nvarchar(max))
AS
begin
  Insert Into tblDocGia(MADG,HOTEN,NGAYSINH,GIOITINH,LOP,DIACHI,EMAIL,GHICHU) 
  values (@MADG,@HOTEN,@NGAYSINH,@GIOITINH,@LOP,@DIACHI,@EMAIL,@GHICHU)
end
GO
/****** Object:  StoredProcedure [dbo].[USP_InsertLinhVuc]    Script Date: 5/22/2019 3:45:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[USP_InsertLinhVuc]
(@MALV varchar(10),
@TENLV nvarchar(100),
@GHICHU nvarchar(max))
AS
begin
  Insert Into tblLinhVuc(MALV,TENLV,GHICHU) 
  values (@MALV,@TENLV,@GHICHU)
end
GO
/****** Object:  StoredProcedure [dbo].[USP_InsertNhanVien]    Script Date: 5/22/2019 3:45:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[USP_InsertNhanVien]
(@TENTAIKHOAN varchar(50),
@MATKHAU varchar(50))
AS
begin
  Insert Into tblNhanVien(TENTAIKHOAN,MATKHAU) 
  values (@TENTAIKHOAN,@MATKHAU)
end
GO
/****** Object:  StoredProcedure [dbo].[USP_InsertSach]    Script Date: 5/22/2019 3:45:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[USP_InsertSach]
(@MASACH varchar(10),
@TENSACH nvarchar(100),
@TACGIA nvarchar(100),
@NHAXUATBAN nvarchar(100),
@MALV varchar(10),
@NAMXB varchar(50),
@SOTRANG int,
@SOLUONG int,
@SOSACHHONG int,
@NGAYNHAP varchar(50),
@GHICHU nvarchar(max))
AS
begin
  Insert Into tblSach(MASACH,TENSACH,TACGIA,NHAXUATBAN,MALV,NAMXB,SOTRANG,SOLUONG,SOSACHHONG,NGAYNHAP,GHICHU) 
  values (@MASACH,@TENSACH,@TACGIA,@NHAXUATBAN,@MALV,@NAMXB,@SOTRANG,@SOLUONG,@SOSACHHONG,@NGAYNHAP,@GHICHU)
end
GO
/****** Object:  StoredProcedure [dbo].[USP_InsertThongTinMuonTra]    Script Date: 5/22/2019 3:45:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[USP_InsertThongTinMuonTra]
(@MADG varchar(10),
@MASACH varchar(10),
@SOLUONGMUON int,
@NGAYMUON varchar(50),
@NGAYTRA varchar(50),
@XACNHANTRA nvarchar(50),
@GHICHU nvarchar(max))
AS
begin
  Insert Into tblThongTinMuon(MADG,MASACH,SOLUONGMUON,NGAYMUON,NGAYTRA,XACNHANTRA,GHICHU) 
  values (@MADG,@MASACH,@SOLUONGMUON,@NGAYMUON,@NGAYTRA,@XACNHANTRA,@GHICHU)
end
GO
/****** Object:  StoredProcedure [dbo].[USP_SearchDocGia]    Script Date: 5/22/2019 3:45:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[USP_SearchDocGia](@LuaChon varchar(50), @TuKhoa nvarchar(100))
as 
begin
    select MADG,HOTEN,NGAYSINH,GIOITINH,LOP,DIACHI,EMAIL,GHICHU from tblDocGia where @LuaChon like N'%@tuKhoa%'
end

GO
/****** Object:  StoredProcedure [dbo].[USP_SearchSach]    Script Date: 5/22/2019 3:45:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[USP_SearchSach](@LuaChon varchar(50), @TuKhoa nvarchar(100))
as 
begin
    select MASACH,TENSACH,TACGIA,NHAXUATBAN,MALV,NAMXB,SOTRANG,SOLUONG,SOSACHHONG,NGAYNHAP,GHICHU from tblSach where  @LuaChon like N'%@tuKhoa%'
end

GO
/****** Object:  StoredProcedure [dbo].[USP_SearchThongTinMuonTra]    Script Date: 5/22/2019 3:45:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[USP_SearchThongTinMuonTra](@LuaChon varchar(50), @TuKhoa nvarchar(100))
as 
begin
    select MADG,MASACH,SOLUONGMUON,NGAYMUON,NGAYTRA,GHICHU from tblThongTinMuon where  @LuaChon like N'%@tuKhoa%'
end

GO
/****** Object:  StoredProcedure [dbo].[USP_UpdateDocGia]    Script Date: 5/22/2019 3:45:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[USP_UpdateDocGia]
(@MADG varchar(10),
@HOTEN nvarchar(100),
@NGAYSINH varchar(50),
@GIOITINH nvarchar(10),
@LOP varchar(50),
@DIACHI nvarchar(100),
@EMAIL varchar(50),
@GHICHU nvarchar(max))
AS
begin
  update tblDocGia set HOTEN=@HOTEN, NGAYSINH=@NGAYSINH, GIOITINH=@GIOITINH, LOP=@LOP, DIACHI=@DIACHI, EMAIL= @EMAIL, GHICHU=@GHICHU where MADG=@MADG;
end
GO
/****** Object:  StoredProcedure [dbo].[USP_UpdateLinhVuc]    Script Date: 5/22/2019 3:45:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[USP_UpdateLinhVuc]
(@MALV varchar(10),
@TENLV nvarchar(100),
@GHICHU nvarchar(max))
AS
begin
  Update tblLinhVuc set TENLV=@TENLV, GHICHU=@GHICHU where MALV=@MALV;
end
GO
/****** Object:  StoredProcedure [dbo].[USP_UpdateNhanVien]    Script Date: 5/22/2019 3:45:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[USP_UpdateNhanVien]
(@TENTAIKHOAN varchar(50),
@MATKHAU varchar(50))
AS
begin
  Update tblNhanVien set MATKHAU = @MATKHAU where TENTAIKHOAN=@TENTAIKHOAN;
end
GO
/****** Object:  StoredProcedure [dbo].[USP_UpdateSach]    Script Date: 5/22/2019 3:45:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[USP_UpdateSach]
(@MASACH varchar(10),
@TENSACH nvarchar(100),
@TACGIA nvarchar(100),
@NHAXUATBAN nvarchar(100),
@MALV varchar(10),
@NAMXB varchar(50),
@SOTRANG int,
@SOLUONG int,
@SOSACHHONG int,
@NGAYNHAP varchar(50),
@GHICHU nvarchar(max))
AS
begin
  update tblSach set TENSACH=@TENSACH, TACGIA=@TACGIA, NHAXUATBAN=@NHAXUATBAN, MALV=@MALV, NAMXB=@NAMXB, SOTRANG=@SOTRANG, SOLUONG=@SOLUONG, SOSACHHONG=@SOSACHHONG, NGAYNHAP=@NGAYNHAP, GHICHU=@GHICHU where MASACH=@MASACH;
end
GO
/****** Object:  StoredProcedure [dbo].[USP_UpdateSoLuongSachGiam]    Script Date: 5/22/2019 3:45:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[USP_UpdateSoLuongSachGiam](@MASACH varchar(10), @SoLuong int)
as 
begin
	Update tblSach set SOLUONG = (@SoLuong - 1) where MASACH = @MASACH;
end

GO
/****** Object:  StoredProcedure [dbo].[USP_UpdateSoLuongSachTang]    Script Date: 5/22/2019 3:45:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[USP_UpdateSoLuongSachTang](@MASACH varchar(10), @SoLuong int)
as 
begin
 	Update tblSach set SOLUONG = (@SoLuong + 1) where MASACH = @MASACH;
end

GO
/****** Object:  StoredProcedure [dbo].[USP_UpdateThongTinMuonTra]    Script Date: 5/22/2019 3:45:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[USP_UpdateThongTinMuonTra]
(@MADG varchar(10),
@XACNHANTRA nvarchar(50),
@GHICHU nvarchar(max))
AS
begin
  Update tblThongTinMuon set XACNHANTRA=@XACNHANTRA, GHICHU=@GHICHU where MADG = @MADG;
end
GO
