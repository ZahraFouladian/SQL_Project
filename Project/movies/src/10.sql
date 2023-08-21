SELECT DISTINCT p.name
FROM movies m
JOIN directors d
    ON m.id = d.movie_id
JOIN people p
    ON d.person_id = p.id
JOIN ratings r
    ON m.id = r.movie_id
WHERE r.rating >= 9.0;
