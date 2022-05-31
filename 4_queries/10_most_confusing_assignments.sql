-- List each assignment with the total number of assistance requests with it.

-- Select the assignment's id, day, chapter, name and the total assistances.
-- Order by total assistances in order of most to least.


SELECT 
assignments.id,
assignments.day,
assignments.chapter,
assignments.name,
COUNT(assistance_requests.*) as total_requests

FROM assignments

JOIN assistance_requests ON assignment_id = assignments.id

GROUP BY assignments.id
ORDER BY total_requests DESC;