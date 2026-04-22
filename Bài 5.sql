-- Tác dụng của Scalar Subquery tại SELECT
-- 1.Giữ nguyên chi tiết: vì truy vấn chính ko có Group by -> duyệt qua từng khóa 1 -> in ra tiêu đề và giá cả của nó
-- 2.Tính toán chạy độc lập tính ra 1 số duy nhất 
SELECT title, price,price - (SELECT AVG(price) FROM Courses) AS Price_Difference
FROM Courses;