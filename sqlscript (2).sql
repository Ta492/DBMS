REM   Script: Session 01 assignment
REM   assignment

CREATE TABLE Course ( 
    DeptNo     NUMBER(2) PRIMARY KEY, 
    Dname      VARCHAR2(50), 
    Location   VARCHAR2(20) 
);

CREATE TABLE Student ( 
    StudentId  NUMBER(4) PRIMARY KEY, 
    StudentName VARCHAR2(40) NOT NULL, 
    Address1    VARCHAR2(300), 
    Gender      VARCHAR2(15), 
    Course      VARCHAR2(8), 
    Deptno      NUMBER(2), 
    CONSTRAINT fk_deptno FOREIGN KEY (Deptno) REFERENCES Course(DeptNo) 
);

INSERT INTO Course (DeptNo, Dname, Location)  
VALUES (10, 'Computer Science', 'New York');

INSERT INTO Course (DeptNo, Dname, Location)  
VALUES (20, 'Electrical Engineering', 'Los Angeles');

INSERT INTO Course (DeptNo, Dname, Location)  
VALUES (30, 'Mechanical Engineering', 'Chicago');

INSERT INTO Course (DeptNo, Dname, Location)  
VALUES (40, 'Civil Engineering', 'San Francisco');

INSERT INTO Course (DeptNo, Dname, Location)  
VALUES (50, 'Biotechnology', 'Boston');

INSERT INTO Student (StudentId, StudentName, Address1, Gender, Course, Deptno) 
VALUES (1001, 'Alice Johnson', '123 Elm St, New York', 'Female', 'CS101', 10);

INSERT INTO Student (StudentId, StudentName, Address1, Gender, Course, Deptno) 
VALUES (1002, 'Bob Smith', '456 Oak St, Los Angeles', 'Male', 'EE201', 20);

INSERT INTO Student (StudentId, StudentName, Address1, Gender, Course, Deptno) 
VALUES (1003, 'Carol Davis', '789 Pine St, Chicago', 'Female', 'ME301', 30);

INSERT INTO Student (StudentId, StudentName, Address1, Gender, Course, Deptno) 
VALUES (1004, 'David Miller', '321 Maple St, San Francisco', 'Male', 'CE401', 40);

INSERT INTO Student (StudentId, StudentName, Address1, Gender, Course, Deptno) 
VALUES (1005, 'Eva Brown', '654 Cedar St, Boston', 'Female', 'BT501', 50);

SELECT * FROM Student;

SELECT StudentId, Course FROM Student;

SELECT Dname, Location FROM Course;

SELECT * FROM Student WHERE Course = 'MCA';

SELECT StudentName FROM Student WHERE StudentId IN (7369, 7777, 2233);

SELECT StudentName FROM Student WHERE Deptno NOT IN (10, 40);

SELECT StudentName FROM Student WHERE StudentName LIKE 'S%' AND StudentName NOT LIKE 's%';

SELECT StudentName FROM Student WHERE StudentName LIKE '_k%';

SELECT * FROM Student WHERE Deptno IS NULL;

SELECT * FROM Student ORDER BY Course ASC;

SELECT COUNT(*) FROM Student WHERE Course = 'BCA';

SELECT COUNT(*) FROM Student;

SELECT DISTINCT * FROM Student WHERE Deptno IN (1, 2);

SELECT * FROM Student ORDER BY Course;

SELECT * FROM Student ORDER BY StudentName;

