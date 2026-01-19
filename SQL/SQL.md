# ĐỀ BÀI: HỆ THỐNG QUẢN LÝ ĐƠN HÀNG
** Bối cảnh: Bạn được thuê làm Backend Dev cho một cửa hàng tạp hóa. Chủ cửa hàng cần một hệ thống lưu trữ thông tin Khách hàng, Sản phẩm và lịch sử Đơn hàng. **

Phần 1: Thiết kế Database (DDL)
Hãy viết câu lệnh SQL để tạo Database tên là QuanLyBanHang và 3 bảng sau:

Bảng KhachHang (Customers):

MaKH (INT): Khóa chính (Primary Key), tự động tăng (Identity).

HoTen (NVARCHAR 50): Tên khách, không được để trống.

SoDienThoai (VARCHAR 15): Số điện thoại.

Bảng SanPham (Products):

MaSP (INT): Khóa chính, tự động tăng.

TenSP (NVARCHAR 100): Tên sản phẩm, không được để trống.

GiaBan (DECIMAL hoặc INT): Giá tiền.

Bảng DonHang (Orders) - Bảng quan trọng nhất:

MaDH (INT): Khóa chính, tự động tăng.

MaKH (INT): Khóa ngoại (Foreign Key) liên kết với bảng KhachHang.

NgayDat (DATETIME): Ngày mua hàng (Mặc định là thời điểm hiện tại - gợi ý dùng GETDATE()).

TongTien (DECIMAL): Tổng tiền của đơn này.

Phần 2: Thêm dữ liệu giả (Data Entry)
Viết câu lệnh INSERT để thêm dữ liệu sau:

3 Khách hàng: "Nguyễn Văn A", "Trần Thị B", "Lê C".

5 Sản phẩm:

Cafe Đen (20.000)

Cafe Sữa (25.000)

Bánh Mì (15.000)

Sting (10.000)

Trà Đá (5.000)

3 Đơn hàng:

Đơn 1: Khách "Nguyễn Văn A" mua hết 50.000 vào ngày hôm qua.

Đơn 2: Khách "Trần Thị B" mua hết 25.000 vào ngày hôm nay.

Đơn 3: Khách "Nguyễn Văn A" (mua lại lần nữa) hết 15.000 vào ngày hôm nay.

Phần 3: Truy vấn dữ liệu (Query Challenges)
Hãy viết câu lệnh SELECT để trả lời các câu hỏi của chủ cửa hàng:

Câu dễ: In ra danh sách tất cả sản phẩm có giá từ 15.000 VNĐ trở lên.

Câu trung bình (JOIN): In ra danh sách các đơn hàng, nhưng thay vì hiện mã số (1, 2, 3), hãy hiện ra Tên Khách Hàng tương ứng.

Kết quả mong muốn: Mã Đơn | Tên Khách | Ngày Đặt | Tổng Tiền

Câu khó (Report): Tính tổng doanh thu mà cửa hàng đã bán được cho khách hàng tên là "Nguyễn Văn A".