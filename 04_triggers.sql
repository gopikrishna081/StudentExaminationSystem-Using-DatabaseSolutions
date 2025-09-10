CREATE OR REPLACE TRIGGER PreventDuplicateResult
BEFORE INSERT ON Result
FOR EACH ROW
DECLARE
    v_count INT;
BEGIN
    SELECT COUNT(*) INTO v_count
    FROM Result
    WHERE StudentID = :NEW.StudentID AND ExamID = :NEW.ExamID;
    
    IF v_count > 0 THEN
        RAISE_APPLICATION_ERROR(-20001, 'Result for this student and exam already exists!');
    END IF;
END;
/