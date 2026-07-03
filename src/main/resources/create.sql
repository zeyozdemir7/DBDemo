PRAGMA foreign_keys = ON;

-- Drop students first because students depends on courses.
DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS courses;



CREATE TABLE Courses
(
    course_id   INT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    credits     INT CHECK ( credits > 0 )

);


CREATE TABLE Students
(
    student_id INT PRIMARY KEY,
    course_id  INT NOT NULL,
    name       VARCHAR(150),
    email      VARCHAR(100),
    age        INT CHECK ( age >= 18 ),
    FOREIGN KEY (course_id)
        REFERENCES Courses (course_id)
);