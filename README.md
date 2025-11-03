# 🏀 WNBA-Youtube-data-SQL

 
**Dashboard Link**: https://public.tableau.com/views/Book1_17615438690230/Dashboard1?:language=en-US&publish=yes&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link

**Purpose**
This project analyzes 30 manually collected WNBA YouTube videos to identify patterns in fan engagement,specifically how upload day, content type, and video length influence interaction rates (likes + comments ÷ views).
The goal was to demonstrate SQL querying, data cleaning, and Tableau visualization skills while extracting real insights from a limited,individually compiled dataset.

**Analyses Performed**
Best Day to Post
Identified which days of the week produced the highest average engagement.
Finding: Certain weekdays consistently outperformed weekends.

**Top-Performing Videos**
Ranked the top 10 videos by engagement rate and top 5 by post type.
Finding: Highlights and short recaps consistently outperformed interviews and press events.

**Effect of Video Length**
Grouped videos by runtime:
<3m — short clips
3–10m — medium length
10m+ — long form
Finding: Videos under 3 minutes had the strongest engagement rates.

**Engagement Over Time**
Tracked engagement month by month to see how fan interest shifted across the season.
Finding: Engagement peaked mid-season, possibly reflecting playoff momentum and key player narratives.

**Deployment**
All queries are included in wnba_youtube_analysis.sql.
The Tableau dashboard visualizes engagement trends for easier storytelling and presentation.

**Built With**
MySQL — Data aggregation and analysis
Tableau — Visualization and dashboard creation
Excel — Manual data collection and cleanup

**Contributing**
Feedback and ideas for scaling this project with automated data collection are welcome.
