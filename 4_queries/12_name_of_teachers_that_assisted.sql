-- Get the name of all teachers that performed an assistance request duration a cohort.

-- Select the instructor's name and the cohort's name.
-- Don't repeat the instructor's name in the results list.
-- Order by the instructor's name.
-- This query needs to select data for a cohort with a specific name, use 'JUL02' for the cohort's name here.

SELECT t.name AS teacher, c.name AS cohort
FROM teachers t
JOIN assistance_requests ar ON t.id = ar.teacher_id
JOIN students s ON ar.student_id = t.id
JOIN cohorts c ON s.cohort_id = c.id
WHERE c.name = 'JUL02' 
GROUP BY t.name, c.name
HAVING SUM(ar.completed_at - ar.started_at) IS NOT NULL
ORDER BY teacher;