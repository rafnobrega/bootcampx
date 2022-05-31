-- Calculate the average time it takes TO START an assistance request.
-- This is the duration between an assistance request being created, and it being started.



SELECT
  avg(started_at - created_at) AS average_wait_time
FROM
  assistance_requests;
