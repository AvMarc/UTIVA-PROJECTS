--IFELOLUWA ADEFOLAJU DATA ANALYTICS POSGRES ASS TWO


--Q1 How many countries have played in the world cup (5 years)?

WITH
	all_world_cup AS(
SELECT
	'wc 2002' AS worldcupyear,
	team,
	points
FROM 
	fifa_2002
UNION ALL
SELECT
	'wc 2006' AS worldcupyear,
	team,
	points
FROM 
	fifa_2006
UNION ALL
SELECT
	'wc 2010' AS worldcupyear,
	team,
	points
FROM 
	fifa_2010
UNION ALL
SELECT
	'wc 2014' AS worldcupyear,
	team,
	points
FROM 
	fifa_2014
UNION ALL
SELECT
	'wc 2018' AS worldcupyear,
	team,
	points
FROM 
	fifa_2018
)
SELECT 
COUNT(DISTINCT team)
FROM all_world_cup
;

	
	


--Q2 Get the total games played, wins loss, goals for, and goals against


WITH
	all_world_cup AS(
SELECT
	'wc 2002' AS worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goals_for,
	goals_against
FROM 
	fifa_2002
UNION ALL
SELECT
	'wc 2006' AS worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goals_for,
	goals_against
FROM 
	fifa_2006
UNION ALL
SELECT
	'wc 2010' AS worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goals_for,
	goals_against
FROM 
	fifa_2010
UNION ALL
SELECT
	'wc 2014' AS worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goals_for,
	goals_against
FROM 
	fifa_2014
UNION ALL
SELECT
	'wc 2018' AS worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goals_for,
	goals_against
FROM 
	fifa_2018
)
SELECT 
SUM(games_played) AS total_games_played,
SUM(win) AS total_wins,
SUM(loss) AS total_loss,
SUM(goals_for) AS total_goals_fr,
SUM(goals_against) AS total_goals_ag
FROM all_world_cup
;

	
	


--Q3 The country with the highest and lowest appearance in the last 5years

WITH
	all_world_cup AS(
SELECT
	'wc 2002' AS worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goals_for,
	goals_against
FROM 
	fifa_2002
UNION ALL
SELECT
	'wc 2006' AS worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goals_for,
	goals_against
FROM 
	fifa_2006
UNION ALL
SELECT
	'wc 2010' AS worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goals_for,
	goals_against
FROM 
	fifa_2010
UNION ALL
SELECT
	'wc 2014' AS worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goals_for,
	goals_against
FROM 
	fifa_2014
UNION ALL
SELECT
	'wc 2018' AS worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goals_for,
	goals_against
FROM 
	fifa_2018
)

SELECT team, COUNT(*) as appearances
FROM all_world_cup
GROUP BY team
ORDER BY appearances DESC
;

 

	
	--Q4 THE COUNTRY WITH THE HIGHEST AND LOWEST GAMES PLAYED?

    WITH
	all_world_cup AS(
SELECT
	'wc 2002' AS worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goals_for,
	goals_against
FROM 
	fifa_2002
UNION ALL
SELECT
	'wc 2006' AS worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goals_for,
	goals_against
FROM 
	fifa_2006
UNION ALL
SELECT
	'wc 2010' AS worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goals_for,
	goals_against
FROM 
	fifa_2010
UNION ALL
SELECT
	'wc 2014' AS worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goals_for,
	goals_against
FROM 
	fifa_2014
UNION ALL
SELECT
	'wc 2018' AS worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goals_for,
	goals_against
FROM 
	fifa_2018
)

SELECT
team,
SUM(games_played) AS total_games_played
FROM all_world_cup
GROUP BY team
ORDER BY total_games_played DESC
;

 

	
	--Q5  THE COUNTRY WITH THE HIGHEST AND LOWEST GAMES WON?

    WITH
	all_world_cup AS(
SELECT
	'wc 2002' AS worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goals_for,
	goals_against
FROM 
	fifa_2002
UNION ALL
SELECT
	'wc 2006' AS worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goals_for,
	goals_against
FROM 
	fifa_2006
UNION ALL
SELECT
	'wc 2010' AS worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goals_for,
	goals_against
FROM 
	fifa_2010
UNION ALL
SELECT
	'wc 2014' AS worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goals_for,
	goals_against
FROM 
	fifa_2014
UNION ALL
SELECT
	'wc 2018' AS worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goals_for,
	goals_against
FROM 
	fifa_2018
)

SELECT
team,
SUM(win) AS total_wins
FROM all_world_cup
GROUP BY team
ORDER BY total_wins DESC
;

 



    --Q6  THE COUNTRY WITH THE HIGHEST AND LOWEST GAMES LOST?

    WITH
	all_world_cup AS(
SELECT
	'wc 2002' AS worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goals_for,
	goals_against
FROM 
	fifa_2002
UNION ALL
SELECT
	'wc 2006' AS worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goals_for,
	goals_against
FROM 
	fifa_2006
UNION ALL
SELECT
	'wc 2010' AS worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goals_for,
	goals_against
FROM 
	fifa_2010
UNION ALL
SELECT
	'wc 2014' AS worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goals_for,
	goals_against
FROM 
	fifa_2014
UNION ALL
SELECT
	'wc 2018' AS worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goals_for,
	goals_against
FROM 
	fifa_2018
)

SELECT
team,
SUM(loss) AS total_loss
FROM all_world_cup
GROUP BY team
ORDER BY total_loss DESC
;




    --Q7  THE COUNTRY WITH THE HIGHEST AND LOWEST GOALS FOR?

    WITH
	all_world_cup AS(
SELECT
	'wc 2002' AS worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goals_for,
	goals_against
FROM 
	fifa_2002
UNION ALL
SELECT
	'wc 2006' AS worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goals_for,
	goals_against
FROM 
	fifa_2006
UNION ALL
SELECT
	'wc 2010' AS worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goals_for,
	goals_against
FROM 
	fifa_2010
UNION ALL
SELECT
	'wc 2014' AS worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goals_for,
	goals_against
FROM 
	fifa_2014
UNION ALL
SELECT
	'wc 2018' AS worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goals_for,
	goals_against
FROM 
	fifa_2018
)

SELECT
team,
SUM(goals_for) AS total_goals_fr
FROM all_world_cup
GROUP BY team
ORDER BY total_goals_fr DESC
;



    --Q8  THE COUNTRY WITH THE HIGHEST AND LOWEST GAMES AGAINST?

    WITH
	all_world_cup AS(
SELECT
	'wc 2002' AS worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goals_for,
	goals_against
FROM 
	fifa_2002
UNION ALL
SELECT
	'wc 2006' AS worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goals_for,
	goals_against
FROM 
	fifa_2006
UNION ALL
SELECT
	'wc 2010' AS worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goals_for,
	goals_against
FROM 
	fifa_2010
UNION ALL
SELECT
	'wc 2014' AS worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goals_for,
	goals_against
FROM 
	fifa_2014
UNION ALL
SELECT
	'wc 2018' AS worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goals_for,
	goals_against
FROM 
	fifa_2018
)

SELECT
team,
SUM(goals_against) AS total_goals_ag
FROM all_world_cup
GROUP BY team
ORDER BY total_goals_ag DESC
;



    --Q9  THE COUNTRY WITH THE HIGHEST AND LOWEST GOAL DIFFERENCE?


    WITH
	all_world_cup AS(
SELECT
	'wc 2002' AS worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goals_for,
	goals_against,
	goal_difference
FROM 
	fifa_2002
UNION ALL
SELECT
	'wc 2006' AS worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goals_for,
	goals_against,
	goal_difference
FROM 
	fifa_2006
UNION ALL
SELECT
	'wc 2010' AS worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goals_for,
	goals_against,
	goal_difference
FROM 
	fifa_2010
UNION ALL
SELECT
	'wc 2014' AS worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goals_for,
	goals_against,
	goal_difference
FROM 
	fifa_2014
UNION ALL
SELECT
	'wc 2018' AS worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goals_for,
	goals_against,
	goal_difference
FROM 
	fifa_2018
)

SELECT
team,
SUM(goal_difference) AS total_goal_df
FROM all_world_cup
GROUP BY team
ORDER BY total_goal_df DESC;

 

    

    --Q10 THE COUNTRY WITH THE HIGHEST AND LOWEST POINTS?
    WITH
	all_world_cup AS(
SELECT
	'wc 2002' AS worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goals_for,
	goals_against
FROM 
	fifa_2002
UNION ALL
SELECT
	'wc 2006' AS worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goals_for,
	goals_against
FROM 
	fifa_2006
UNION ALL
SELECT
	'wc 2010' AS worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goals_for,
	goals_against
FROM 
	fifa_2010
UNION ALL
SELECT
	'wc 2014' AS worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goals_for,
	goals_against
FROM 
	fifa_2014
UNION ALL
SELECT
	'wc 2018' AS worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goals_for,
	goals_against
FROM 
	fifa_2018
)

SELECT
team,
SUM(points) AS total_points
FROM all_world_cup
GROUP BY team
ORDER BY total_points DESC
;

 



