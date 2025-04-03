USE [recetas_para_aprobar];

SELECT t.Descripcion AS Temporada FROM Temporadas AS t
INNER JOIN Ingredientes AS i ON i.Temporada = t.Temporada_PK
INNER JOIN Ingredientes_Recetas AS ir ON ir.Ingrediente = i.Ingrediente_PK
WHERE ir.Receta = 101;		--	Se busca para una receta en concreto (ID = 101)