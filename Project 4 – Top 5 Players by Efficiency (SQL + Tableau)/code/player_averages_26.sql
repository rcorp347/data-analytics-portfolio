SELECT
  Player AS player,
  Team AS team,
  Games AS games,
  Points / Games AS points_per_game,
  Rebounds / Games AS rebounds_per_game,
  Assists / Games AS assists_per_game,
  Steals / Games AS steals_per_game,
  Blocks / Games AS blocks_per_game,
  Turnovers / Games AS turnovers_per_game,
  FGM / Games AS fgm_per_game,
  FGA / Games AS fga_per_game,
  FTM / Games AS ftm_per_game,
  FTA / Games AS fta_per_game,
  EFF / Games AS eff_per_game,
FROM
  `nba-data-500304.player_efficiency.player_efficiency_totals`
ORDER BY points_per_game DESC;