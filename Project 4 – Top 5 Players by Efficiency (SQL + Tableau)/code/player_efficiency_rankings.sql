create or replace table `nba-data-500304.player_efficiency.player_efficiency_rankings` as
select
  player,
  team,
  games,
  points_per_game,
  rebounds_per_game,
  assists_per_game,
  steals_per_game,
  blocks_per_game,
  turnovers_per_game,
  fga_per_game,
  fgm_per_game,
  fta_per_game,
  ftm_per_game,
  eff_per_game,
  rank() over (order by eff_per_game desc) as eff_rank
from `nba-data-500304.player_efficiency.player_efficiency_averages`
order by eff_rank;
