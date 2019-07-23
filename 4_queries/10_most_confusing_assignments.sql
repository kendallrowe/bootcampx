-- List each assignment with the total number of assistance requests with it.

-- Select the assignment's id, day, chapter, name and the total assistances.
-- Order by total assistances in order of most to least.

SELECT a.id, a.day, a.chapter, a.name, COUNT(ar.*) AS total_requests
FROM assignments a
JOIN assistance_requests ar ON a.id = ar.assignment_id
GROUP BY a.id
ORDER BY total_requests DESC;