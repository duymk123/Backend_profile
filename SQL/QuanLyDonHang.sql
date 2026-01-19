CREATE DATABASE QuanLyDonHang;
USE QuanLyDonHang;
CREATE TABLE KhachHang(
	MaKH VARCHAR(50) PRIMARY KEY,
	HoTen NVARCHAR(50),
	SoDienThoai VARCHAR(15)
	
);
CREATE TABLE SanPham (
    MaSP VARCHAR(50) PRIMARY KEY,
    TenSP NVARCHAR(100) NOT NULL,
    GiaBan DECIMAL(12,2)
);
CREATE TABLE DonHang(
	MaDH VARCHAR(10) PRIMARY KEY,
	MaKH VARCHAR(50),
	NgayDat DATETIME DEFAULT GETDATE(),
	TongTien DECIMAL(12,1),
	
	-- Khóa Ngoại:
	FOREIGN KEY (MaKH) references KhachHang(MaKH)
	
);
INSERT INTO KhachHang VALUES
('KH01', 'Phan Minh Duy', '0382568470'),
('KH02', N'Nguyễn Lan Anh', '0382568471'),
('KH03', N'Nguyễn Lê Quỳnh Trâm', '0382568472');
INSERT INTO KhachHang VALUES
('KH06', 'Phans Minh Duy', '0382568470'),
('KH04', N'Nguyễn Lann Anh', '0382568471'),
('KH05', N'Nguyễn Lê Quuỳnh Trâm', '0382568472');
Select * from KhachHang
Delete from KhachHang
INSERT INTO KhachHang VALUES
('KH01', 'Phan Minh Duy', '0382568470'),
('KH02', N'Nguyễn Văn B', '0382568471'),
('KH03', N'Nguyễn Văn C', '0382568472');
INSERT INTO SanPham VALUES
('H01', N'Bánh', '20000'),
('H02', N'Kẹo', '4000'),
('H03', N'Sữa', '9000');
Select * From SanPham
Delete from SanPham
Select * From KhachHang
INSERT INTO SanPham VALUES
('H01', N'Cafe Đen', '20000'),
('H02', N'Cafe Sữa', '25000'),
('H03', N'Bánh Mì', '15000'),
('H04', 'Sting', '10000'),
('H05', N'Trà Đá','5000');
Select * from KhachHang
Select * From SanPham

INSERT INTO DonHang(MaDH, MaKH, NgayDat, TongTien) VALUES
('Pack1', 'KH01', GETDATE() -1, '50000'),
('Pack2', 'KH02', GETDATE(),'25000'),
('Pack3', 'KH03', GETDATE(), '15000');

SELECT * FROM DonHang

--Câu 1:
Select * From SanPham where GiaBan > 15000;

--Câu 2: 
SELECT
	D.MaDH as N'Mã Đơn',
	K.HoTen as N'Họ Tên',
	D.NgayDat as N'Ngày Đặt',
	D.TongTien as N'Tổng Tiền'
FROM DonHang D
JOIN KhachHang K ON D.MaKH = K.MaKH;

--Drop Table DonHang

--Câu 3:
SELECT
	K.Hoten,
	SUM(D.TongTien) as N'Tổng Doanh Thu'
FROM DonHang D
JOIN KhachHang K ON D.MaKH = K.MaKH
Where K.HoTen = N'Phan Minh Duy'
GROUP BY K.HoTen;