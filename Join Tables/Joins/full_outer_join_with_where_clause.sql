SELECT
    teams.id AS team_id,
    team,
    city,
    players.id AS player_id,
    player,
    role
FROM
    teams
FULL JOIN players
   ON teams.id = players.team_id
WHERE teams.id IS NULL OR players.id IS NULL;