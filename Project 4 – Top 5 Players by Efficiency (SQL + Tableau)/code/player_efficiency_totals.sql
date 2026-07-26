create or replace table `nba-data-500304.player_efficiency.player_efficiency_totals` as
select
  player,
  team,
  games,
  points,
  rebounds,
  assists,
  steals,
  blocks,
  turnovers,
  fga,
  fgm,
  fta,
  ftm,
  (points + rebounds + assists + steals + blocks)
  - ((fga - fgm) + (fta - ftm) + turnovers) as eff
from `nba-data-500304.player_efficiency.player_totals_26_clean`
order by eff desc;
