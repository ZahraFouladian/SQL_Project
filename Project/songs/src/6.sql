SELECT S.name
FROM songs S
JOIN artists A
    ON S.artist_id = A.id
WHERE A.name = 'Post Malone';
