SELECT s.Name, r.Marks 
FROM Result r JOIN Student s ON r.StudentID = s.StudentID
WHERE r.ExamID = 401
ORDER BY r.Marks DESC
FETCH FIRST 1 ROWS ONLY;

SELECT c.CourseName, AVG(r.Marks) AS AvgMarks
FROM Result r JOIN Exam e ON r.ExamID = e.ExamID
JOIN Course c ON e.CourseID = c.CourseID
GROUP BY c.CourseName;

SELECT s.Name, c.CourseName, r.Marks
FROM Result r
JOIN Student s ON r.StudentID = s.StudentID
JOIN Exam e ON r.ExamID = e.ExamID
JOIN Course c ON e.CourseID = c.CourseID
WHERE r.Marks > 80;