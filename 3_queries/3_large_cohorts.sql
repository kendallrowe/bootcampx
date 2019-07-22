-- Get all cohorts with 18 or more students.

-- Select the cohort name and the total students.
-- Order by total students from smallest to greatest.

SELECT cohorts.name, COUNT(students.cohort_id) AS student_count
FROM cohorts
JOIN students ON students.cohort_id = cohorts.id
WHERE students.cohort_id = cohorts.id
GROUP BY cohorts.name HAVING COUNT(students.cohort_id) >= 18
ORDER BY COUNT(students.cohort_id);