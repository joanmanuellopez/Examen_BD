USE [recetas_para_aprobar];

SELECT r.Nombre AS RECETA, SUM(ir.Cantidad_gr) AS PESO
FROM Recetas AS r
INNER JOIN Ingredientes_Recetas AS ir ON ir.Receta = r.Receta_PK
GROUP BY r.Nombre;
