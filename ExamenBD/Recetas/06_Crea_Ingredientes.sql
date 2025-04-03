USE [recetas_para_aprobar];

CREATE TABLE Ingredientes
(
	PRIMARY KEY (Ingrediente_PK),
	Ingrediente_PK smallint NOT NULL IDENTITY(1,1),  -- Primer ID de ingr. 1, incremento de 1 en 1, hasta 32767 registros
	Nombre varchar(50),
	Temporada tinyint CONSTRAINT FK_ing_tmp FOREIGN KEY (Temporada) REFERENCES Temporadas(Temporada_PK)
);
