INSERT INTO Student VALUES(101, 'Alice', TO_DATE('2004-05-12','YYYY-MM-DD'), '10th', 'alice@gmail.com');
INSERT INTO Student VALUES(102, 'Bob', TO_DATE('2003-08-20','YYYY-MM-DD'), '10th', 'bob@gmail.com');

INSERT INTO Faculty VALUES(201, 'Dr. Smith', 'Mathematics', 'smith@school.com');
INSERT INTO Faculty VALUES(202, 'Ms. Jones', 'Science', 'jones@school.com');

INSERT INTO Course VALUES(301, 'Mathematics', 4, 201);
INSERT INTO Course VALUES(302, 'Science', 3, 202);

INSERT INTO Exam VALUES(401, 301, TO_DATE('2025-10-15','YYYY-MM-DD'), 120);
INSERT INTO Exam VALUES(402, 302, TO_DATE('2025-10-18','YYYY-MM-DD'), 90);