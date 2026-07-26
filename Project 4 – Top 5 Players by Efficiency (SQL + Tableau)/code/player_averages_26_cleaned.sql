create or replace table `nba-data-500304.player_efficiency.player_averages_26` as
select
  player,
  team,
  games,
  round(points / games, 2) as points_per_game,
  round(rebounds / games, 2) as rebounds_per_game,
  round(assists / games, 2) as assists_per_game,
  round(steals / games, 2) as steals_per_game,
  round(blocks / games, 2) as blocks_per_game,
  round(turnovers / games, 2) as turnovers_per_game,
  round(fga / games, 2) as fga_per_game,
  round(fgm / games, 2) as fgm_per_game,
  round(fta / games, 2) as fta_per_game,
  round(ftm / games, 2) as ftm_per_game
from `nba-data-500304.player_efficiency.player_totals_26_clean`
order by points_per_game desc;
