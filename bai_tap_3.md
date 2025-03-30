# Bài tập 03 của sv: K225480106025 - Lương Văn Học - Môn hệ quản trị csdl
BÀI TOÁN: Sửa bài 2 để có csdl như sau:
  + SinhVien(#masv,hoten,NgaySinh)
  + Lop(#maLop,tenLop)
  + GVCN(#@maLop,#@magv,#HK)
  + LopSV(#@maLop,#@maSV,ChucVu)
  + GiaoVien(#magv,hoten,NgaySinh,@maBM)
  + BoMon(#MaBM,tenBM,@maKhoa)
  + Khoa(#maKhoa,tenKhoa)
  + MonHoc(#mamon,Tenmon,STC)
  + LopHP(#maLopHP,TenLopHP,HK,@maMon,@maGV)
  + DKMH(#id_dk, @maLopHP,@maSV,DiemThi,PhanTramThi)
  + Diem(#id, @id_dk, diem)

YÊU CẦU:
1. Sửa bảng DKMH và bảng Điểm từ bài tập 2 để có các bảng như yêu cầu.
2. Nhập dữ liệu demo cho các bảng (nhập có kiểm soát từ tính năng Edit trên UI của mssm)
3. Viết lệnh truy vấn để: Tính được điểm thành phần của 1 sinh viên đang học tại 1 lớp học phần.

# Bai làm
## 1.Sửa bảng DKMH và bảng Điểm
Bảng ĐKMH sau khi chỉnh: Thêm cột id_dk và cho cột id_dk làm khoá chính
![image](https://github.com/user-attachments/assets/1fb4db8d-e480-441d-8f0f-d89286710bca)
Tạo bảng điểm:
![image](https://github.com/user-attachments/assets/8b3ca554-4180-4063-85ff-d7b584c7c60a)
![image](https://github.com/user-attachments/assets/c82d2b74-7af0-4311-9965-5d8fb320baa4)
Tạo khoá ngoại(FK) cho bảng điểm:
Nhấn vào bảng Diểm -> chọn Design -> trong giao diên nhấp chuột phải - > chọn chọn Relationships.... -> chọn Add để thêm khoá ngoại -> trong Tables and Columns Specification ->PK: DKMH, FK: Diem liên kết bằng cột id_dk
![image](https://github.com/user-attachments/assets/8d02a8b9-b818-4b0c-9591-f1baf87f4136)
## 2.Diagram mô tả các PK, FK của db
![image](https://github.com/user-attachments/assets/d6df5254-401e-464b-bc10-662504c0d0a3)
## 3.Nhập dữ liệu demo cho các bảng:
![image](https://github.com/user-attachments/assets/c209e4df-409d-48f9-9941-fe7201138cb1)
Bảng SinhVien
![image](https://github.com/user-attachments/assets/273412b8-8335-4667-917b-05d8ccdc6e6b)
Bảng MonHoc
![image](https://github.com/user-attachments/assets/cc3b9201-ac06-49b9-9bb9-64d8ceac4fa1)
Bảng LopSV
![image](https://github.com/user-attachments/assets/729b9254-d009-4269-8911-98cfeabcd786)
Bảng LopHP
![image](https://github.com/user-attachments/assets/fb521dcb-8e2f-48fc-b6b6-529ea9380af5)
Bảng Lop
![image](https://github.com/user-attachments/assets/3e351b88-f2fa-48ab-9422-275a7aeed42f)
Bảng Khoa
![image](https://github.com/user-attachments/assets/69d1690f-e9c4-410a-9620-7531c38b0fbb)
Bảng GVCN
![image](https://github.com/user-attachments/assets/a080581b-d6a3-489f-8fbc-f3b1f2f45771)
Bảng GiaoVien
![image](https://github.com/user-attachments/assets/c7f1e779-ea71-4585-993d-a8759251a65a)
Bảng BoMon
![image](https://github.com/user-attachments/assets/48d8e3b5-b2f6-462d-bfe7-24d44a6e9f2a)
Bảng DKMH
![image](https://github.com/user-attachments/assets/0fc4dfb0-8b14-4a83-a10e-8b6e09365144)
Bảng Diem
![image](https://github.com/user-attachments/assets/8148ca5d-2dc7-47f3-83d7-3581b4a41ec4)
## 4.lệnh truy vấn để tính được điểm thành phần của 1 sinh viên đang học tại 1 lớp học phần.
![image](https://github.com/user-attachments/assets/0527e5c1-761c-4e65-a166-64c9a7a87b03)







