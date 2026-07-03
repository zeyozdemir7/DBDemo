PRAGMA foreign_keys = ON;

-- Delete students first because students depends on courses.
DELETE
FROM students;
DELETE
FROM courses;


INSERT INTO Courses(course_id, course_name, credits)
VALUES (1, 'Software Engineering', 4),
       (2, 'Object Oriented Programming', 3),
       (3, 'Database Management Systems', 5);



INSERT INTO Students(student_id, name, email, age, course_id)
VALUES (1, 'Zeynep', 'zeynep@example.com', 19, 1),
       (2, 'Yusuf', 'yusuf@example.com', 23, 2),
       (3, 'Jekabs', 'jekabs@example.com', 27, 3),
       (4, 'Ieva', 'ieva@example.com', 25, 2),
       (5, 'Ece', 'ece@example.com', 18, 3)
;