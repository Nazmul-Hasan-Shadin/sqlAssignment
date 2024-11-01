-- Active: 1729428040566@@127.0.0.1@5432@university_db
CREATE DATABASE university_db;


-- student table

create  Table students (
    student_id  SERIAL PRIMARY KEY,
    student_name VARCHAR(50),
    age INT,
    email VARCHAR(255),
    frontend_mark INT,
    backend_mark INTEGER,
    status text
)


SELECT * from students;

 
-- createing course table 

create  Table courses (
    course_id  SERIAL PRIMARY KEY,
    course_name VARCHAR(100),
    credits INT
)

--------creating enrollment table for enroll course


create  Table enrollment (
     enrollment_id  SERIAL PRIMARY KEY,
     student_id INT REFERENCES students(student_id),
    course_id INT REFERENCES courses(course_id)
)


-- inserting data into studenst table
INSERT INTO students (student_id, student_name, age, email, frontend_mark, backend_mark, status) VALUES
(1, 'Sameer', 21, 'sameer@example.com', 48, 60, NULL),
(2, 'Zoya', 23, 'zoya@example.com', 52, 58, NULL),
(3, 'Nabil', 22, 'nabil@example.com', 37, 46, NULL),
(4, 'Rafi', 24, 'rafi@example.com', 41, 40, NULL),
(5, 'Sophia', 22, 'sophia@example.com', 50, 52, NULL),
(6, 'Hasan', 23, 'hasan@gmail.com', 43, 39, NULL);


--------inserting data into coursese tabel
INSERT INTO courses (course_id, course_name, credits) VALUES
(1, 'Next.js', 3),
(2, 'React.js', 4),
(3, 'Databases', 3),
(4, 'Prisma', 3);


--------isertind data for enrolment

INSERT INTO enrollment (enrollment_id, student_id, course_id) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 1),
(4, 3, 2);



-- inseting my data to students table



INSERT into students (student_id,student_name,age,email,frontend_mark,backend_mark,status) VALUES
(7,'Nazmul Hasan Shadin',21,'nazmulhasanshadin000@gmail.com',85,90,NULL)

SELECT * from students

----------selecting all student name who enroll next js class

SELECT student_name from students as s join "enrollment" as e ON e.student_id=s.student_id join "courses" as c on c.course_id = e.course_id WHERE c.course_name='Next.js'



--Update the status of the student with the highest total (frontend_mark + backend_mark) to 'Awarded'.



UPDATE students
SET status = 'Awarded'
WHERE (frontend_mark + backend_mark) = (
    SELECT MAX(frontend_mark + backend_mark) FROM students
);



 -----Delete Courses with No Students Enrolled


DELETE FROM courses
WHERE course_id NOT IN (
    SELECT DISTINCT course_id FROM enrollment
);



--Retrieve Names of Students with Limit and Offset

SELECT student_name
FROM students
ORDER BY student_id
LIMIT 2 OFFSET 2;



-- counting students enrolled in each course,

SELECT course_name, COUNT(student_id) AS students_enrolled
FROM courses
LEFT JOIN enrollment ON courses.course_id = enrollment.course_id
GROUP BY course_name;




--calculate average age of all student

SELECT AVG(age) AS average_age
FROM students;




--Retrieve Names of Students with Email Containing 'example.com'


SELECT student_name
FROM students
WHERE email LIKE '%example.com%';



SELECT * from students