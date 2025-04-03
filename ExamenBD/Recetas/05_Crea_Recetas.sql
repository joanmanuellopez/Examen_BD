USE [recetas_para_aprobar];

CREATE TABLE Recetas
(
	PRIMARY KEY (Receta_PK),
	Receta_PK smallint NOT NULL IDENTITY(101,1),  -- Primer ID de receta 101, incremento de 1 en 1, hasta 32767 registros
	Nombre varchar(100),
	Elaboracion varchar(1000),
	Tiempo_minutos tinyint CHECK (Tiempo_minutos < 240),  -- Tiempo inferior a 4 horas (240 minutos)
	Dificultad tinyint CONSTRAINT FK_rec_dif FOREIGN KEY (Dificultad) REFERENCES Dificultades(Dificultad_PK),
	Categoria tinyint CONSTRAINT FK_rec_cat FOREIGN KEY (Categoria) REFERENCES Categorias(Categoria_PK)
);
