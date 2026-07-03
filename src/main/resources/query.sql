PRAGMA foreign_keys = ON;


    SELECT * FROM Courses;


    SELECT * FROM Students;


    SELECT name, age FROM Students
    WHERE age > 20;


    SELECT name, course_name FROM Students s
    LEFT JOIN Courses c
    ON s.course_id = c.course_id;




    SELECT COUNT(student_id), course_name FROM Students s
    LEFT JOIN Courses c
    ON s.course_id = c.course_id
    GROUP BY c.course_name;




    UPDATE Students SET age = 24 WHERE student_id = 1;



    SELECT student_id, name, age FROM Students
    WHERE student_id =1;


    UPDATE Students SET course_id = 3 WHERE student_id = 2;



    SELECT s.student_id, c.course_id FROM Students s
    LEFT JOIN Courses c
    ON s.course_id = c.course_id
    WHERE student_id = 2;


    DELETE FROM Students
    WHERE student_id = 5;


SELECT * FROM Students s
    LEFT JOIN Courses c
        ON s.course_id = c.course_id;