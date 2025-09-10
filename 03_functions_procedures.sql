CREATE OR REPLACE FUNCTION AssignGrade(marks INT) RETURN CHAR IS
    grade CHAR(2);
BEGIN
    IF marks >= 90 THEN
        grade := 'A+';
    ELSIF marks >= 80 THEN
        grade := 'A';
    ELSIF marks >= 70 THEN
        grade := 'B+';
    ELSIF marks >= 60 THEN
        grade := 'B';
    ELSE
        grade := 'C';
    END IF;
    RETURN grade;
END;
/

CREATE OR REPLACE PROCEDURE InsertResult(
    p_StudentID INT,
    p_ExamID INT,
    p_Marks INT
) IS
BEGIN
    INSERT INTO Result(StudentID, ExamID, Marks, Grade)
    VALUES(p_StudentID, p_ExamID, p_Marks, AssignGrade(p_Marks));
    COMMIT;
END;
/