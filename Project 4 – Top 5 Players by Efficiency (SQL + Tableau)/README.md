# ⭐ Top 5 Players by Efficiency
**Tools:** SQL • Tableau  
**Domain:** Sports Analytics

## 📌 Overview
This project calculates NBA player efficiency using SQL CTEs and visualizes the results in a Tableau dashboard with rankings, scatter plots, and interactive tooltips.

## 📂 Files Included
- data/ — SQL tables or CSV exports  
- code/ — SQL scripts  
- dashboard/ — PDF, PNG, TWBX  
- README.md  

## 🔍 Process
1. Cleaned and merged player stats  
2. Built SQL CTE pipeline to calculate efficiency  
3. Exported results to Tableau  
4. Created Top 5 leaderboard  
5. Built scatter plot with interactive tooltips  
6. Added highlight actions  

## 📊 Dashboard Preview
*(Insert PNG)*

## 🧠 Key Insights
- Efficiency reveals true player impact  
- Scatter plot shows scoring vs efficiency relationship  
- Interactive tooltips enhance analysis  

## 🛠 Skills Demonstrated
- SQL CTEs  
- Tableau dashboard design  
- Interactive actions  


## 📁 Data Dictionary (Column Names & Data Types)

| Column Name      | Description                               | Type     | Example Value     |
|------------------|-------------------------------------------|----------|--------------------|
| player_name      | Full name of the player                   | string   | LeBron James       |
| team             | Team abbreviation                         | string   | LAL                |
| pos              | Player position                           | string   | SF                 |
| games_played     | Number of games played                    | integer  | 72                 |
| minutes          | Total minutes played                      | integer  | 2450               |
| points           | Total points scored                       | integer  | 2100               |
| rebounds         | Total rebounds                            | integer  | 680                |
| assists          | Total assists                             | integer  | 540                |
| steals           | Total steals                              | integer  | 90                 |
| blocks           | Total blocks                              | integer  | 55                 |
| fga              | Field goal attempts                       | integer  | 1500               |
| fg               | Field goals made                          | integer  | 770                |
| fta              | Free throw attempts                       | integer  | 400                |
| ft               | Free throws made                          | integer  | 350                |
| turnovers        | Total turnovers                           | integer  | 210                |
| fg_pct           | Field goal percentage                     | float    | 0.512              |
| ft_pct           | Free throw percentage                     | float    | 0.875              |
| eff_total        | Total efficiency score                    | float    | 2050.3             |
| eff_per_game     | Efficiency rating per game                | float    | 28.4               |
