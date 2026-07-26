WITH recent_team AS (
  SELECT 
    Player, 
    Team, 
    G,
    ROW_NUMBER() OVER (
      PARTITION BY Player 
      ORDER BY G DESC
    ) AS rn
  FROM `nba-data-500304.player_efficiency.player_totals_26`
  WHERE Team NOT IN ('TOT', '2TM', '3TM')
),

merged_stats AS (
  SELECT
    p.Player,
    r.Team AS Team,
    SUM(p.G) AS Games,
    SUM(p.PTS) AS Points,
    SUM(p.TRB) AS Rebounds,
    SUM(p.AST) AS Assists,
    SUM(p.STL) AS Steals,
    SUM(p.BLK) AS Blocks,
    SUM(p.TOV) AS Turnovers,
    SUM(p.FGA) AS FGA,
    SUM(p.FG) AS FGM,
    SUM(p.FTA) AS FTA,
    SUM(p.FT) AS FTM
  FROM `nba-data-500304.player_efficiency.player_totals_26` p
  JOIN recent_team r
    ON p.Player = r.Player 
   AND r.rn = 1
  WHERE p.Team NOT IN ('TOT', '2TM', '3TM')
  GROUP BY p.Player, r.Team
)

SELECT *
FROM merged_stats
ORDER BY Games DESC;
