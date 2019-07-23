
-- Perform the same query as before, but include the number of assistances as well.

SELECT t.name AS teacher, c.name AS cohort, COUNT(ar.*) AS total_assistances
FROM teachers t
JOIN assistance_requests ar ON t.id = ar.teacher_id
JOIN students s ON ar.student_id = t.id
JOIN cohorts c ON s.cohort_id = c.id
WHERE c.name = 'JUL02' 
GROUP BY t.name, c.name
ORDER BY total_assistances DESC;

-- HAVING SUM(ar.completed_at - ar.started_at) IS NOT NULL