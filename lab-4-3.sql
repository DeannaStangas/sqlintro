-- Who hit the most home runs in 2019, and what team did they play for?
SELECT max(home_runs), players.first_name, players.last_name, teams.name FROM stats
INNER JOIN players ON players.id=stats.player_id
INNER JOIN teams ON stats.team_id=teams.id
WHERE teams.year = 2019
-- Expected result:
--
-- +---------------+------------+-----------+-----------+
-- | New York Mets | Pete       | Alonso    | 53        |
-- +---------------+------------+-----------+-----------+


