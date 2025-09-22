-- sample_data.sql
USE student_attendance;

INSERT INTO Students (name, roll_no) VALUES
 ('Rahul Sharma','CS101'),
 ('Priya Singh','CS102'),
 ('Aakash Verma','CS103');

INSERT INTO Attendance (student_id, date, status) VALUES
 (1, '2025-09-01', 'Present'),
 (1, '2025-09-02', 'Absent'),
 (2, '2025-09-01', 'Present'),
 (3, '2025-09-01', 'Leave');
