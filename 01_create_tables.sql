CREATE TABLE Student(
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    DOB DATE,
    Class VARCHAR(10),
    Email VARCHAR(50) UNIQUE
);

CREATE TABLE Faculty(
    FacultyID INT PRIMARY KEY,
    Name VARCHAR(50),
    Dept VARCHAR(50),
    Email VARCHAR(50) UNIQUE
);

CREATE TABLE Course(
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(50),
    Credits INT,
    FacultyID INT,
    FOREIGN KEY(FacultyID) REFERENCES Faculty(FacultyID)
);

CREATE TABLE Exam(
    ExamID INT PRIMARY KEY,
    CourseID INT,
    ExamDate DATE,
    Duration INT,
    FOREIGN KEY(CourseID) REFERENCES Course(CourseID)
);

CREATE TABLE Result(
    ResultID INT PRIMARY KEY,
    StudentID INT,
    ExamID INT,
    Marks INT CHECK(Marks BETWEEN 0 AND 100),
    Grade CHAR(2),
    FOREIGN KEY(StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY(ExamID) REFERENCES Exam(ExamID)
);