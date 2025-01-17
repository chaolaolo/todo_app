# Todo App

## Giới thiệu
Todo App là một ứng dụng Flutter đơn giản giúp bạn quản lý danh sách công việc của mình một cách hiệu quả. Ứng dụng được thiết kế nhằm cung cấp trải nghiệm thân thiện, nhanh chóng và dễ dàng sử dụng mà không cần sử dụng server hay các dịch vụ backend như Firebase.

## Chức năng
- **Thêm công việc mới**: Người dùng có thể thêm các công việc cần làm với tiêu đề và mô tả.
- **Danh sách công việc**: Hiển thị danh sách các công việc đã thêm.
- **Đánh dấu hoàn thành**: Cho phép người dùng đánh dấu công việc đã hoàn thành.
- **Xóa công việc**: Người dùng có thể xóa công việc khỏi danh sách.

## Công nghệ sử dụng
- **Flutter**: Framework chính để xây dựng ứng dụng.
- **Dart**: Ngôn ngữ lập trình được sử dụng cho Flutter.
- **Local Storage**: Lưu trữ dữ liệu công việc ngay trên thiết bị (sử dụng `hive`).

## Cách cài đặt

1. **Clone repository**:
   ```bash
   git clone https://github.com/chaolaolo/todo_app.git
   ```

2. **Chuyển vào thư mục dự án**:
   ```bash
   cd todo_app
   ```

3. **Cài đặt các dependencies**:
   ```bash
   flutter pub get
   ```

4. **Chạy ứng dụng**:
   - Trên thiết bị thực:
     ```bash
     flutter run
     ```
   - Trên trình giả lập:
     Mở trình giả lập và chạy:
     ```bash
     flutter emulators --launch <Tên_giả_lập>
     flutter run
     ```

## Hướng dẫn sử dụng
1. Mở ứng dụng.
2. Nhấn vào nút **Thêm Công Việc** (biểu tượng dấu cộng) để thêm công việc mới.
3. Nhập tiêu đề và mô tả công việc, sau đó nhấn **Lưu**.
4. Để đánh dấu một công việc đã hoàn thành, nhấn vào ô checkbox bên cạnh công việc.
5. Để xóa một công việc, nhấn vào biểu tượng thùng rác.

## Cấu trúc dự án
```
lib/
├── main.dart          # Điểm bắt đầu của ứng dụng
├── data/            # Lưu data
├── pages/           # Các màn hình của ứng dụng
└── utils/             # Các tiện ích hỗ trợ
```

## Đóng góp
Nếu bạn muốn đóng góp vào dự án, vui lòng tạo Pull Request hoặc mở Issue trên GitHub. Chúng tôi rất hoan nghênh mọi sự đóng góp từ cộng đồng!

## Liên hệ
- **Tác giả**: chaolaolo
- **Gmail**: chaolaolo290604@gmail.
- **GitHub**: [https://github.com/chaolaolo](https://github.com/chaolaolo)

