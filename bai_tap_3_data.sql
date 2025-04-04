USE [K58kmtDB]
GO
INSERT [dbo].[SinhVien] ([maSV], [hoTen], [NgaySinh]) VALUES (N'SV001     ', N'Lương Văn Học', CAST(N'2004-06-03' AS Date))
INSERT [dbo].[SinhVien] ([maSV], [hoTen], [NgaySinh]) VALUES (N'SV002     ', N'Nguyễn Anh Chính', CAST(N'2005-04-22' AS Date))
INSERT [dbo].[SinhVien] ([maSV], [hoTen], [NgaySinh]) VALUES (N'SV003     ', N'Vũ Văn Thắng', CAST(N'2003-02-10' AS Date))
GO
INSERT [dbo].[Lop] ([maLop], [tenLop]) VALUES (N'L001      ', N'Lớp 58KMT')
INSERT [dbo].[Lop] ([maLop], [tenLop]) VALUES (N'L002      ', N'Lớp 58KT')
INSERT [dbo].[Lop] ([maLop], [tenLop]) VALUES (N'L01       ', N'Lớp Công nghệ thông tin 1')
INSERT [dbo].[Lop] ([maLop], [tenLop]) VALUES (N'L02       ', N'Lớp Kỹ thuật phần mềm')
INSERT [dbo].[Lop] ([maLop], [tenLop]) VALUES (N'L03       ', N'Lớp Hệ thống thông tin')
GO
INSERT [dbo].[LopSV] ([maLop], [maSV], [ChucVu]) VALUES (N'L001      ', N'SV001     ', N'Sinh Viên')
INSERT [dbo].[LopSV] ([maLop], [maSV], [ChucVu]) VALUES (N'L001      ', N'SV002     ', N'Bí thư')
GO
INSERT [dbo].[MonHoc] ([maMon], [tenMon], [STC]) VALUES (N'MH001     ', N'Hệ quản trị CSDL', 3)
INSERT [dbo].[MonHoc] ([maMon], [tenMon], [STC]) VALUES (N'MH002     ', N'Cấu trúc dữ liệu và giải thuật', 3)
INSERT [dbo].[MonHoc] ([maMon], [tenMon], [STC]) VALUES (N'MH003     ', N'Lập trình hướng đối tượng', 3)
GO
INSERT [dbo].[Khoa] ([maKhoa], [tenKhoa]) VALUES (N'K001      ', N'Khoa điện tử')
INSERT [dbo].[Khoa] ([maKhoa], [tenKhoa]) VALUES (N'K002      ', N'Khoa Điện')
INSERT [dbo].[Khoa] ([maKhoa], [tenKhoa]) VALUES (N'K01       ', N'Khoa cơ khí')
INSERT [dbo].[Khoa] ([maKhoa], [tenKhoa]) VALUES (N'K02       ', N'Khoa quốc tế ')
INSERT [dbo].[Khoa] ([maKhoa], [tenKhoa]) VALUES (N'K03       ', N'Khoa kinh tế công nghiệp')
GO
INSERT [dbo].[BoMon] ([maBM], [tenBM], [maKhoa]) VALUES (N'BM001     ', N'Bộ môn Khoa học máy tính', N'K001      ')
INSERT [dbo].[BoMon] ([maBM], [tenBM], [maKhoa]) VALUES (N'BM002     ', N'Bộ môn Kỹ thuật phần mềm', N'K001      ')
INSERT [dbo].[BoMon] ([maBM], [tenBM], [maKhoa]) VALUES (N'BM01      ', N'Công nghệ phần mềm', N'K01       ')
INSERT [dbo].[BoMon] ([maBM], [tenBM], [maKhoa]) VALUES (N'BM02      ', N'Hệ thống thông tin', N'K02       ')
INSERT [dbo].[BoMon] ([maBM], [tenBM], [maKhoa]) VALUES (N'BM03      ', N'Khoa học máy tính', N'K03       ')
GO
INSERT [dbo].[GiaoVien] ([maGV], [hoTen], [NgaySinh], [maBM]) VALUES (N'GV001     ', N'Đỗ Duy Cốp', CAST(N'1990-05-15' AS Date), N'BM001     ')
INSERT [dbo].[GiaoVien] ([maGV], [hoTen], [NgaySinh], [maBM]) VALUES (N'GV002     ', N'Trần Thị Thanh', CAST(N'1999-08-20' AS Date), N'BM002     ')
GO
INSERT [dbo].[LopHP] ([maLopHP], [tenLopHP], [HK], [maMon], [maGV]) VALUES (N'LHP001    ', N'Hệ quản trị CSDL', 1, N'MH001     ', N'GV001     ')
INSERT [dbo].[LopHP] ([maLopHP], [tenLopHP], [HK], [maMon], [maGV]) VALUES (N'LHP002    ', N'Cấu trúc dữ liệu ', 2, N'MH002     ', N'GV002     ')
GO
INSERT [dbo].[DKMH] ([id_dk], [maLopHP], [maSV], [DiemThi], [PhanTramThi]) VALUES (N'2         ', N'LHP001    ', N'SV001     ', 8.5, 70)
INSERT [dbo].[DKMH] ([id_dk], [maLopHP], [maSV], [DiemThi], [PhanTramThi]) VALUES (N'3         ', N'LHP002    ', N'SV002     ', 7, 80)
GO
INSERT [dbo].[GVCN] ([maLop], [maGV], [HK]) VALUES (N'L001      ', N'GV001     ', N'HK1       ')
INSERT [dbo].[GVCN] ([maLop], [maGV], [HK]) VALUES (N'L002      ', N'GV002     ', N'HK1       ')
GO
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (N'3         ', N'3         ', 9)
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (N'4         ', N'2         ', 8)
GO
