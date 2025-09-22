# Student Attendance DB

Simple schema for a Student Attendance system.

## Files
- `schema.sql` : creates database `student_attendance`, `Students` and `Attendance` tables with PK/FK.
- `sample_data.sql` : optional sample rows for testing.

## How to run (MySQL)
1. Open terminal / MySQL Workbench.
2. From terminal (in this folder):
   ```bash
   mysql -u <user> -p < schema.sql
   # or open "schema.sql" in MySQL Workbench and press Execute
