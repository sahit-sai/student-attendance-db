-- schema.sql
-- Drop & recreate DB so schema is repeatable
DROP DATABASE IF EXISTS student_attendance;
CREATE DATABASE student_attendance;
USE student_attendance;

-- Students table (primary key, unique roll_no)
CREATE TABLE Students (
    student_id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    roll_no VARCHAR(50) NOT NULL UNIQUE,
    PRIMARY KEY (student_id)
) ENGINE=InnoDB DEFAULT CHARSET = utf8mb4;

-- Attendance table (foreign key -> Students.student_id)
-- Add unique constraint on (student_id, date) to avoid duplicate attendance rows for same day
CREATE TABLE Attendance (
    attendance_id INT NOT NULL AUTO_INCREMENT,
    student_id INT NOT NULL,
    date DATE NOT NULL,
    status VARCHAR(20) NOT NULL, -- e.g. 'Present', 'Absent', 'Leave'
    PRIMARY KEY (attendance_id),
    UNIQUE KEY uq_student_date (student_id, date),
    CONSTRAINT fk_attendance_student
      FOREIGN KEY (student_id)
      REFERENCES Students (student_id)
      ON DELETE CASCADE
      ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET = utf8mb4;
