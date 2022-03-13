use QLnhac  
GO

-- Tạo bảng nhạc
CREATE TABLE tblSinhVien(
    id_sv INT IDENTITY(1,1) PRIMARY KEY,
    mabaihat NCHAR(20) NOT NULL ,
    tenbaihat NVARCHAR(50) NOT NULL,
    casi NCHAR(20) NOT NULL,
    tacgia BIT,
    ngaycapnhat DATE,
    lyrics NVARCHAR(50),
)

-- tạo bảng tài khoản
CREATE TABLE tblTaiKhoan(
    id_gv INT IDENTITY(1,1) PRIMARY KEY,
    tendangnhap VARCHAR(20) NOT NULL,
    matkhau VARCHAR(50) NOT NULL
)


--nhập dữ liệu cho bảng sinh viên
INSERT INTO tblSinhVien(mabaihat, tenbaihat, casi, tacgia,ngaycapnhat, lyrics) VALUES
    ('abc12',N'Hẹn một mai','Bùi Anh Tuấn',...,'2000-01-08',N'.....'),
    ('abc123',N'Và thế là hết','Soobin Hoàng Sơn',...,'2000-08-27',N'.....'),
    ('bc12',N'Cứ thế chill thôi' ,'Chillies',....,'2000-08-26',N'.....'),
    ('jk09',N'Nói','Nger',.....,'2000-08-25',N'Hải Phòng'),
    ('tas12',N'Cưới thôi','Masew x Bray x TAP',.....,'2000-08-24',N'.....'),
    ('fb12',N'The playal','Soobin Hoàng Sơn',.....,'2000-08-23',N'.....')
	
-- nhập dữ liệu cho bảng tài khoản
INSERT INTO tblTaiKhoan VALUES
    ('admin','abc123')

