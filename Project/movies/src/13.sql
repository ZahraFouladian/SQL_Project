SELECT DISTINCT name
FROM people p
JOIN stars s
    ON p.id = s.person_id
JOIN movies m
    ON s.movie_id = m.id
WHERE m.title IN
    (
        SELECT DISTINCT m.title
        FROM people p
        JOIN stars s
             ON p.id = s.person_id
        JOIN movies m
             ON s.movie_id = m.id
        WHERE p.name = "Kevin Bacon" AND p.birth = 1958
    )
    AND p.name != "Kevin Bacon";