USE [recetas_para_aprobar];

SELECT t.Descripcion AS Temporada, COUNT(*) AS Ingredientes
FROM Temporadas AS t
INNER JOIN Ingredientes AS i ON i.Temporada = t.Temporada_PK
GROUP BY t.Descripcion;