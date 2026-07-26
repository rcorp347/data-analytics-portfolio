create or replace table `nba-data-500304.player_efficiency.player_efficiency_top5` as
select
  player,
  team,
  games,
  eff_per_game,
  eff_rank
from `nba-data-500304.player_efficiency.player_efficiency_rankings`
where eff_rank <= 5
order by eff_rank;
