-- -- Get the total duration of all assistance requests for each cohort.

-- Select the cohort's name and the total duration the assistance requests.
-- Order by cohort's name.
-- Look at the ERD to see how to join the tables.

SELECT c.name AS cohort, SUM(ar.completed_at - ar.started_at) AS total_duration
FROM assistance_requests ar 
JOIN students s ON ar.student_id = s.id
JOIN cohorts c ON s.cohort_id = c.id
GROUP BY c.name
ORDER BY c.name;