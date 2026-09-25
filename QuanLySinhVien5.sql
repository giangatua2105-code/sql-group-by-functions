-- =====================================================
-- CSDL QuanLySinhVien
-- =====================================================
DROP DATABASE IF EXISTS QuanLySinhVien;
CREATE DATABASE QuanLySinhVien;
USE QuanLySinhVien;

CREATE TABLE Student (
    StudentId   INT AUTO_INCREMENT PRIMARY KEY,
    StudentName VARCHAR(50),
    Address     VARCHAR(100),
    Age         INT
);

CREATE TABLE Subject (
    SubId   INT AUTO_INCREMENT PRIMARY KEY,
    SubName VARCHAR(50),
    Credit  INT
);

CREATE TABLE Mark (
    MarkId    INT AUTO_INCREMENT PRIMARY KEY,
    StudentId INT,
    SubId     INT,
    Mark      INT,
    FOREIGN KEY (StudentId) REFERENCES Student(StudentId),
    FOREIGN KEY (SubId)     REFERENCES Subject(SubId)
);

-- Dữ liệu mẫu
INSERT INTO Student (StudentName, Address, Age) VALUES
('Nguyễn Văn A', 'Hà Nội', 20),
('Trần Thị B',   'Hà Nội', 21),
('Lê Văn C',     'Đà Nẵng', 22),
('Phạm Thị D',   'Đà Nẵng', 20),
('Hoàng Văn E',  'Hồ Chí Minh', 23),
('Vũ Thị F',     'Hồ Chí Minh', 21);

INSERT INTO Subject (SubName, Credit) VALUES
('Toán',     3),
('Lý',       3),
('Hóa',      2),
('Tin học',  3),
('Văn',      4);

INSERT INTO Mark (StudentId, SubId, Mark) VALUES
(1, 1, 8), (1, 2, 7), (1, 3, 9), (1, 4, 6),
(2, 1, 6), (2, 2, 5), (2, 3, 7), (2, 4, 8),
(3, 1, 9), (3, 2, 8), (3, 3, 10), (3, 4, 7),
(4, 1, 5), (4, 2, 6), (4, 3, 4), (4, 4, 6),
(5, 1, 10), (5, 2, 9), (5, 3, 9), (5, 4, 8),
(6, 1, 7), (6, 2, 6), (6, 3, 8), (6, 4, 9);
