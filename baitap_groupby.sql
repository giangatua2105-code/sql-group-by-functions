-- =====================================================
-- [Bài tập] Luyện tập các hàm thông dụng trong SQL
-- =====================================================
USE QuanLySinhVien;

-- -----------------------------------------------------
-- 1. Hiển thị tất cả thông tin môn học có credit lớn nhất
-- -----------------------------------------------------
SELECT *
FROM Subject
WHERE Credit = (SELECT MAX(Credit) FROM Subject);

-- -----------------------------------------------------
-- 2. Hiển thị các thông tin môn học có điểm thi lớn nhất
-- -----------------------------------------------------
SELECT S.SubId, S.SubName, S.Credit, M.Mark
FROM Subject S
JOIN Mark M ON S.SubId = M.SubId
WHERE M.Mark = (SELECT MAX(Mark) FROM Mark);

-- -----------------------------------------------------
-- 3. Hiển thị thông tin sinh viên và điểm trung bình,
--    xếp hạng theo thứ tự điểm giảm dần
-- -----------------------------------------------------
SELECT S.StudentId, S.StudentName, S.Address, AVG(M.Mark) AS 'Điểm trung bình'
FROM Student S
JOIN Mark M ON S.StudentId = M.StudentId
GROUP BY S.StudentId, S.StudentName, S.Address
ORDER BY AVG(M.Mark) DESC;
