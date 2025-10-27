

-- Table creation 
CREATE TABLE videos (
  video_id VARCHAR(50) PRIMARY KEY,
  video_url VARCHAR(255),
  title VARCHAR(255),
  publish_date DATE,
  video_length_seconds INT,
  views INT,
  likes INT,
  comments INT,
  post_type VARCHAR(50),
  player_or_team_tag VARCHAR(50),
  engagement_rate DECIMAL(6,4),
   day_of_week VARCHAR(20)
);

-- Data Validation: 

-- Row count
SELECT COUNT(*) AS rows_imported 
FROM videos;

-- Duplicates 
SELECT COUNT(*) AS dups
FROM videos
GROUP BY video_id 
HAVING dups>1;

-- Bad date and/or unexpected nulls
SELECT *
FROM videos 
WHERE publish_date IS NULL 
AND publish_date NOT BETWEEN '2024-01-01' AND 2026-12-31;


