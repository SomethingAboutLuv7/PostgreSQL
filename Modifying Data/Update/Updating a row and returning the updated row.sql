UPDATE courses
SET published_date = '2020-07-01'
WHERE course_id = 2
RETURNING *;