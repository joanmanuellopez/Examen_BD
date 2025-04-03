USE [recetas_para_aprobar];

CREATE TABLE Ingredientes_Recetas
(
	PRIMARY KEY (Receta, Ingrediente),
	Receta smallint NOT NULL CONSTRAINT FK_ri_rec FOREIGN KEY (Receta) REFERENCES Recetas(Receta_PK),
	Ingrediente smallint NOT NULL CONSTRAINT FK_ri_ing FOREIGN KEY (Ingrediente) REFERENCES Ingredientes(ingrediente_PK),
	Cantidad_gr smallint   -- Se preven cantidades mayores a 250g, por tanto el tinyint es insuficiente
);
