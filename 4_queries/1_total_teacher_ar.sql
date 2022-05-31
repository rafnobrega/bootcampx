-- Get the total number of assistance_requests FOR a teacher.
-- SELECT
--   the teacher 's name and the total assistance requests.
-- Since this query needs to work with any specific teacher name, use ' Waylon Boehm ' for the teacher' s name here.

SELECT count(assistance_requests.*) as total_assistances, teachers.name
FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
WHERE name = 'Waylon Boehm'
GROUP BY teachers.name;
