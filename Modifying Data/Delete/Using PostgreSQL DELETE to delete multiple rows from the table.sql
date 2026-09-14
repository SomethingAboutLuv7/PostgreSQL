DELETE FROM todos
WHERE completed = true
RETURNING *;