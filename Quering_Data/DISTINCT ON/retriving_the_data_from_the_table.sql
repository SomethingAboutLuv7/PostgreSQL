SELECT
  DISTINCT ON (name) name,
  subject,
  score
FROM
  student_scores
ORDER BY
  name,
  score DESC;