SELECT AVG(S.energy) AS average_energy
FROM songs S
JOIN artists A
    ON S.artist_id = A.id
WHERE A.name = 'Drake';
