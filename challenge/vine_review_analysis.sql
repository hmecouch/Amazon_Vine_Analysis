CREATE TABLE total_votes_over_20 AS
SELECT *
FROM vine_table
WHERE total_votes >= 20;

SELECT * FROM total_votes_over_20;

CREATE TABLE helpful_table AS
SELECT *
FROM total_votes_over_20
WHERE total_votes != 0 AND CAST(helpful_votes AS FLOAT) / CAST(total_votes AS FLOAT) >= 0.5;

SELECT * FROM helpful_table;

CREATE TABLE paid_vine_table AS
SELECT * 
FROM helpful_table
WHERE vine = 'Y';

SELECT * FROM paid_vine_table;

CREATE TABLE not_paid_table AS
SELECT *
FROM helpful_table
WHERE vine = 'N';

SELECT * FROM not_paid_table;

SELECT vine, 
       COUNT(review_id) AS total_reviews, 
       SUM(CASE WHEN star_rating = 5 THEN 1 ELSE 0 END) AS five_star_reviews, 
       (SUM(CASE WHEN star_rating = 5 THEN 1 ELSE 0 END)::FLOAT / COUNT(review_id)) * 100 AS five_star_review_percentage
FROM paid_vine_table
GROUP BY vine;

SELECT vine, 
       COUNT(review_id) AS total_reviews, 
       SUM(CASE WHEN star_rating = 5 THEN 1 ELSE 0 END) AS five_star_reviews, 
       (SUM(CASE WHEN star_rating = 5 THEN 1 ELSE 0 END)::FLOAT / COUNT(review_id)) * 100 AS five_star_review_percentage
FROM not_paid_table
GROUP BY vine;