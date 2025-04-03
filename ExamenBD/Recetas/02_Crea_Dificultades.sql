USE [recetas_para_aprobar];

CREATE TABLE Dificultades
(
	PRIMARY KEY (Dificultad_PK),
	Dificultad_PK tinyint NOT NULL,
	Descripcion varchar(15)
);