-- Get important data about each assistance request.

-- Select the teacher's name, student's name, assignment's name, and the duration of each assistance request.
-- Subtract completed_at by started_at to find the duration.
-- Order by the duration of the request.

SELECT t.name AS teacher, s.name AS student, a.name AS assignment, (ar.completed_at - ar.started_at) AS duration
FROM assistance_requests ar
JOIN teachers t ON ar.teacher_id = t.id
JOIN students s ON ar.student_id = s.id
JOIN assignments a ON ar.assignment_id = a.id
ORDER BY duration;