SELECT * FROM Courses
WHERE id NOT IN (SELECT course_id FROM Enrollments);

-- Lỗi : Khi viết 
-- vd:id not null (1,2,null);
-- mySQL sẽ tách ra và so sánh với toán tử and
-- Khi so sánh với null -> ra giá trị unknown -> biểu thức where trả về tập hợp rỗng

-- Cách sửa:
SELECT * FROM Courses
WHERE id NOT IN (
    SELECT course_id 
    FROM Enrollments 
    WHERE course_id IS NOT NULL
);
