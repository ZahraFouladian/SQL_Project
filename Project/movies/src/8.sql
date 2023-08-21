SELECT p.name
FROM movies m
JOIN stars s
    ON m.id = s.movie_id
JOIN people p
    ON s.person_id = p.id
WHERE m.title = 'Toy Story';
