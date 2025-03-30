USE [K58kmtDB]
GO

WITH DiemThanhPhan AS (
    SELECT 
        dkmh.id_dk, 
        dkmh.MaSV, 
        ROUND(AVG(d.diem), 3) AS Diem_TP,  -- Tính điểm trung bình thành phần
        COUNT(*) AS SoLuongDiem  -- Đếm số lượng điểm thành phần của từng id_dk
    FROM Diem d 
    JOIN DKMH dkmh ON d.id_dk = dkmh.id_dk
    WHERE dkmh.MaSV = 'SV001'  -- Thay 'SV001' bằng mã sinh viên cụ thể
      AND dkmh.MaLopHP = 'LHP001' -- Thay 'LHP001' bằng mã lớp học phần cụ thể
    GROUP BY dkmh.id_dk, dkmh.MaSV  
)
SELECT 
    dkmh.id_dk AS [ID đăng ký], 
    dkmh.MaSV AS [Mã Sinh Viên], 
    sv.HoTen AS [Họ và tên], 
    sv.NgaySinh AS [Ngày sinh],
    dkmh.MaLopHP AS [Mã lớp HP], 
    dtp.Diem_TP AS [Điểm thành phần], 
    dtp.SoLuongDiem AS [Số lượng điểm]
FROM DKMH dkmh
JOIN SinhVien sv ON dkmh.MaSV = sv.MaSV
JOIN DiemThanhPhan dtp ON dkmh.id_dk = dtp.id_dk;
