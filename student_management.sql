-- Create Database
CREATE DATABASE IF NOT EXISTS StudentDB;
USE StudentDB;

-- Drop Tables if they exist
DROP TABLE IF EXISTS Enrollments;
DROP TABLE IF EXISTS Students;
DROP TABLE IF EXISTS Courses;

-- Create Students Table
CREATE TABLE Students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    email VARCHAR(100),
    gender ENUM('Male', 'Female', 'Other'),
    dob DATE
);

-- Create Courses Table
CREATE TABLE Courses (
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(100),
    department VARCHAR(100)
);

-- Create Enrollments Table
CREATE TABLE Enrollments (
    enrollment_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

-- Insert sample Students
INSERT INTO Students (name, email, gender, dob)
VALUES 
('Amit Sharma', 'amit@gmail.com', 'Male', '2001-04-15'),
('Priya Singh', 'priya@yahoo.com', 'Female', '2000-09-23'),
('Rahul Verma', 'rahul@gmail.com', 'Male', '2002-01-10');

-- Insert sample Courses
INSERT INTO Courses (course_name, department)
VALUES 
('Database Systems', 'Computer Science'),
('Linear Algebra', 'Mathematics'),
('Operating Systems', 'Computer Science');

-- Insert sample Enrollments
INSERT INTO Enrollments (student_id, course_id, enrollment_date)
VALUES 
(1, 1, '2024-01-10'),
(2, 2, '2024-02-14'),
(1, 3, '2024-03-05'),
(3, 1, '2024-03-10');
