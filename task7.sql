--task7 
-- Create a view named 'high_scorers' to store students who scored more than 80 marks
-- This simplifies access to top-performing students
CREATE VIEW high_scorers AS
SELECT s_name, department, marks
FROM student
WHERE marks > 80;



-- Create a view named 'department_avg_marks' that calculates average marks per department
-- Useful for quick analysis of departmental performance
CREATE VIEW department_avg_marks AS
SELECT department, AVG(marks) AS avg_marks
FROM student
GROUP BY department;


-- Retrieve all records from the 'high_scorers' view
-- This shows the list of students who scored above 80
SELECT * FROM high_scorers;


-- Retrieve departments from 'department_avg_marks' where the average marks are above 75
-- Helps identify strong-performing departments
SELECT * FROM department_avg_marks
WHERE avg_marks > 75;

