-- Average critic score for Sports games
SELECT AVG(critic_score) AS sports_critic_score
FROM video_game_sales
WHERE genre = 'Sports';

-- Average critic score for Shooter games
SELECT AVG(critic_score) AS shooter_critic_score
FROM video_game_sales
WHERE genre = 'Shooter';

-- Global sales statistics
SELECT
AVG(global_sales) AS average_global_sales,
MIN(global_sales) AS min_global_sales,
MAX(global_sales) AS max_global_sales
FROM video_game_sales;

-- Sports games statistics
SELECT
AVG(global_sales) AS average_global_sales,
MIN(global_sales) AS min_global_sales,
MAX(global_sales) AS max_global_sales
FROM video_game_sales
WHERE genre = 'Sports';

-- Shooter games statistics
SELECT
AVG(global_sales) AS average_global_sales,
MIN(global_sales) AS min_global_sales,
MAX(global_sales) AS max_global_sales
FROM video_game_sales
WHERE genre = 'Shooter';

-- Count of global sales for Sports games
SELECT global_sales, COUNT(*) AS count
FROM video_game_sales
WHERE genre = 'Sports'
GROUP BY global_sales
ORDER BY global_sales;

-- Count of global sales for Shooter games
SELECT global_sales, COUNT(*) AS count
FROM video_game_sales
WHERE genre = 'Shooter'
GROUP BY global_sales
ORDER BY global_sales;
