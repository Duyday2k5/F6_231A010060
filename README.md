# f6_congviec
Nguyễn Nhật Duy - 231A010060
Ứng dụng quản lý công việc (Lab F6) phát triển bằng Flutter.

## Các bài tập nâng cao đã thực hiện

### 1. NC1: Dùng `IndexedStack` để giữ nguyên vị trí cuộn
- **Mô tả:** Sử dụng `IndexedStack` cho `Scaffold.body` thay cho `switch` expression.
- **Tác dụng:** Duy trì trạng thái giao diện và vị trí cuộn cuộn danh sách ở từng tab (Công việc, Thống kê, Cài đặt) khi chuyển qua lại giữa các tab, mang lại trải nghiệm liền mạch cho người dùng.

### 2. NC2: Vuốt sang trái để xóa công việc với `Dismissible`
- **Mô tả:** Bọc từng dòng công việc (`ListTile`) trong widget `Dismissible` với hướng vuốt `DismissDirection.endToStart` và `key: ObjectKey(cv)`.
- **Tác dụng:** Hỗ trợ vuốt nhanh một công việc sang trái để xóa (kèm hiệu ứng nền đỏ và biểu tượng thùng rác). Sau khi xóa, ứng dụng tự động hiển thị `SnackBar` có nút **HOÀN TÁC** để khôi phục công việc khi cần.
