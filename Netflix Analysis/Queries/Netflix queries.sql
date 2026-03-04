select * from netflix limit 10;
Select count(*)
from nerflix;
 
 Describe netflix;
 
 Select * from netflix
 where country is null;
 
update netflix 
set country = 'unknown'
where country is null;

select count(*)
from netflix
where director is null;

Select Type, count(*) as total_content
from netflix 
group by type;

SELECT country, COUNT(*) AS total_content
FROM netflix
GROUP BY country
ORDER BY total_content DESC
LIMIT 10;

SELECT listed_in, COUNT(*) AS genre_count
FROM netflix
GROUP BY listed_in
ORDER BY genre_count DESC
LIMIT 10;

SELECT rating, COUNT(*) AS total
FROM netflix
GROUP BY rating
ORDER BY total DESC;

SELECT release_year, type, COUNT(*) AS total
FROM netflix
GROUP BY release_year, type
ORDER BY release_year;

Create Database netflix_analysis;
rename table xyz.netflix to netflix_analysis.netflix;
drop database xyz;