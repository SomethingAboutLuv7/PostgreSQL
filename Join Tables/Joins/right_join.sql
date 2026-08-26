SELECT
    teams.id AS team_id,
    team,
    city,
    players.id AS player_id,
    player,
    role
FROM
    teams
RIGHT JOIN players ON teams.id = players.team_id;