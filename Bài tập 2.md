# Bài tập 02 của sv: K225480106025 - Lương Văn Học - Môn hệ quản trị csdl
# BÀI TOÁN:
- Tạo csdl quan hệ với tên QLSV gồm các bảng sau:
  + SinhVien(#masv,hoten,NgaySinh)
  + Lop(#maLop,tenLop)
  + GVCN(#@maLop,#@magv,#HK)
  + LopSV(#@maLop,#@maSV,ChucVu)
  + GiaoVien(#magv,hoten,NgaySinh,@maBM)
  + BoMon(#MaBM,tenBM,@maKhoa)
  + Khoa(#maKhoa,tenKhoa)
  + MonHoc(#mamon,Tenmon,STC)
  + LopHP(#maLopHP,TenLopHP,HK,@maMon,@maGV)
  + DKMH(#@maLopHP,#@maSV,DiemTP,DiemThi,PhanTramThi)

# YÊU CẦU:
1. Thực hiện các hành động sau trên giao diện đồ hoạ để tạo cơ sở dữ liệu cho bài toán:
  + Tạo database mới, mô tả các tham số(nếu có) trong quá trình.
  + Tạo các bảng dữ liệu với các trường như mô tả, chọn kiểu dữ liệu phù hợp với thực tế (tự tìm hiểu)
  + Mỗi bảng cần thiết lập PK, FK(s) và CK(s) nếu cần thiết. (chú ý dấu # và @: # là chỉ PK, @ chỉ FK)
2. Chuyển các thao tác đồ hoạ trên thành lệnh SQL tương đương. lưu tất cả các lệnh SQL trong file: Script_DML.sql


# Đây là ảnh mô tả việc tạo databse:
![image](https://github.com/user-attachments/assets/f5dcdc3f-dabc-4209-8bfb-8cf45ab0ad11)
![image](https://github.com/user-attachments/assets/504409a0-af4a-4bf2-b0b7-52b008b5b3ba)

# I.Đây là ảnh mô tả việc tạo bảng:
![image](https://github.com/user-attachments/assets/89dcb971-230d-4faa-b857-d71765db3ad8)
### 1. Bảng Sinh Viên
![image](https://github.com/user-attachments/assets/9420e447-de60-479e-96d4-7a26cca06a10)
![image](https://github.com/user-attachments/assets/f457f033-ca6c-4eb2-9930-5a5d8149ce66)
![image](https://github.com/user-attachments/assets/403a1a39-94e8-4be8-bcf1-ba7d19be2130)
Các bảng sau làm tương tự:
### 2.Bảng Giáo viên chủ nhiệm
![image](https://github.com/user-attachments/assets/7f68c13b-3864-4678-890c-afefbe8a0c81)
Thiết lập FK cho bảng GVCN:

![image](https://github.com/user-attachments/assets/0844d374-281d-491d-b12d-f559f2b2f45e)
![image](https://github.com/user-attachments/assets/30e37a69-5aad-41aa-b460-7f752daa3307)
![image](https://github.com/user-attachments/assets/6b2f7f70-8945-43ac-b245-f0b9915bcc0c)
### 3.Bảng Lớp
![image](https://github.com/user-attachments/assets/00a4b1d8-dc94-41ac-8ba2-ce8e50e2d04c)
### 4.Bảng Môn Học
![image](https://github.com/user-attachments/assets/82517297-6502-4a53-b427-a3d547ed8360)
Thiết lập CK cho bảng MonHoc:

![image](https://github.com/user-attachments/assets/549f6c64-8a33-4b28-9f9b-7f0e0684c478)
### 5.Bảng Lớp Sinh Viên
![image](https://github.com/user-attachments/assets/eae9fc25-4b93-41be-ae0c-333cedc801e2)
Thiết lập FK cho bảng LopSV:

![image](https://github.com/user-attachments/assets/95585812-48eb-41c2-a85a-434293c010c4)
![image](https://github.com/user-attachments/assets/1743c602-7495-4c0d-8928-71bb7bd4e8a2)
### 6.Bảng Lớp Học Phần
![image](https://github.com/user-attachments/assets/585a4dc1-6305-4bb2-86d3-33cfd9d68e1e)
FK của bảng lopHP:

![image](https://github.com/user-attachments/assets/86255fa5-cd20-42fd-aeed-fe7becee9435)
![image](https://github.com/user-attachments/assets/90b85a39-1221-4571-8706-84ca85266ea7)

Thiết lập CK cho bảng HocPhan:

![image](https://github.com/user-attachments/assets/db4d06d6-52f4-4f3e-93f0-4668e4f98be9)
### 7.Bảng Khoa
![image](https://github.com/user-attachments/assets/95ebde8c-d169-416f-85d6-83cf2e329f12)
### 8.Bảng giáo viên
![image](https://github.com/user-attachments/assets/0d836427-b0aa-417b-ba07-bf99bcf7f65c)
Thiết lập FK cho bảng GiaoVien:

![image](https://github.com/user-attachments/assets/ba0595bd-a0be-4979-9bca-b568fca0ac86)
### 9.Bảng Bộ Môn
![image](https://github.com/user-attachments/assets/e4536766-0caf-490e-82bf-335513f13687)
Thiết lập FK cho bảng BoMon:

![image](https://github.com/user-attachments/assets/3b34dba8-f776-4ff9-a983-73c06e57dde3)

### 10.Bảng ĐKMH
![image](https://github.com/user-attachments/assets/71ddfb1f-0c48-4e74-968d-c3aeebbd654a)
Thiết lập FK cho bảng DKMH:

![image](https://github.com/user-attachments/assets/4c295efe-8cdb-4d0f-8d2d-0d7434c3f14e)
![image](https://github.com/user-attachments/assets/6cc77dcc-5cf5-402a-887a-fbcdcea9bb64)

Thiết lập CK cho bảng DKMH:

![image](https://github.com/user-attachments/assets/6ab56566-46fb-4a92-896c-b49be1e866fb)
![image](https://github.com/user-attachments/assets/8ff3020c-1670-4a5d-a21d-42584efe538c)
![image](https://github.com/user-attachments/assets/50ed7a4f-6396-4cec-a721-b7301437a52a)

# Liên kết khoá chínhh, khoá ngoại
![image](https://github.com/user-attachments/assets/d1a64d40-56a1-4708-9881-382103eb8c0e)
![image](https://github.com/user-attachments/assets/c990b57f-26c2-4b87-9d61-4075c9c67dd2)
![image](https://github.com/user-attachments/assets/af780422-1284-4cca-ae0e-9a2655ebc19e)

# II.Chuyển các thao tác đồ hoạ trên thành lệnh SQL tương đương
![image](https://github.com/user-attachments/assets/66de231b-53ae-4083-80af-0379b02c5279)
Lệnh Sql sau khi chuyển từ thao tác đồ hoạ của bảng SinhVien:
![image](https://github.com/user-attachments/assets/35d7ef2d-88c5-41a1-821e-67618adbb275)
Các bảng khác chyển tương tự








