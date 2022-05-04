CREATE VIEW retiring_titles AS
SELECT COUNT(title), title
FROM unique_titles
GROUP BY title
ORDER BY count DESC;

SELECT * FROM retiring_titles;