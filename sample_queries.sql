-- List all students
SELECT * FROM Students;

-- List all courses
SELECT * FROM Courses;

-- Get students enrolled in 'Database Systems'
SELECT s.name, c.course_name
FROM Students s
JOIN Enrollments e ON s.student_id = e.student_id
JOIN Courses c ON e.course_id = c.course_id
WHERE c.course_name = 'Database Systems';

-- Count students in each course
SELECT c.course_name, COUNT(e.student_id) AS total_students
FROM Courses c
LEFT JOIN Enrollments e ON c.course_id = e.course_id
GROUP BY c.course_name;

-- Show all enrollments with details
SELECT e.enrollment_id, s.name AS student, c.course_name, e.enrollment_date
FROM Enrollments e
JOIN Students s ON e.student_id = s.student_id
JOIN Courses c ON e.course_id = c.course_id;
