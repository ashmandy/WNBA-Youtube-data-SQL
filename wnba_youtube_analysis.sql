-- Best day of the week to post 
-- engagement = like+comments/views 


SELECT day_of_week,
ROUND(AVG(engagement_rate),4) AS avg_engagement,
COUNT(*) AS count -- number of post made per days of the week.
FROM videos 
GROUP BY day_of_week
ORDER BY avg_engagement DESC;


-- Engagement leadership 
-- Top overall top 10 
SELECT video_id,
title,post_type,player_or_team_tag, engagement_rate
FROM videos 
ORDER BY engagement_rate DESC
LIMIT 10;


-- Type 5 per post_type 
WITH ranked AS (
SELECT *, ROW_NUMBER() OVER (PARTITION BY post_type 
ORDER BY engagement_rate DESC) AS ranking
FROM videos 
)
SELECT title,
post_type, engagement_rate
FROM ranked 
ORDER BY post_type, engagement_rate DESC
LIMIT 5;

-- Effects of run time
SELECT 
CASE WHEN video_length_seconds < 180 THEN '<3m' -- if run time is less than 180 seconds(3 minutes) then its labeled  <3m
 WHEN video_length_seconds < 600 THEN '3-10m'
 ELSE '10m+'
 END AS run_time,
 ROUND(AVG(engagement_rate),4) AS avg_engagement
 FROM videos 
 GROUP BY run_time
 ORDER BY FIELD(run_time, '<3m', '3-10m','10m+'); -- Custom sort my buckets using my preferred order 
 
 -- What post types drives likes vs comments 
 SELECT post_type,
 ROUND(AVG(likes/views),4) AS like_rate,
 ROUND(AVG(comments/views),4) AS comment_rate
 FROM videos
 GROUP BY post_type 
 ORDER BY comment_rate DESC;
 
 -- How does engagement fluctuate as the season progresses 
 SELECT DATE_FORMAT(publish_date, '%y-%m') AS ym,
 ROUND(AVG(engagement_rate),4) AS avg_engagement
 FROM videos 
 GROUP BY ym
 ORDER BY ym;
 
 
 
 


