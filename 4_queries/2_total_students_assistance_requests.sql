-- Get the total number of assistance_requests for a student.

-- Select the student's name and the total assistance requests.
-- Since this query needs to work with any specific student name, use 'Elliot Dickinson' for the student's name here.

-- List columns in all tables whose name is like 'TableName'

SELECT COUNT(a.*) AS total_assistances, s.name
FROM assistance_requests a
JOIN students s ON s.id = a.student_id
WHERE s.name = 'Elliot Dickinson'
GROUP BY s.id;