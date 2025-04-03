USE [recetas_para_aprobar];

CREATE TABLE Categorias
(
	PRIMARY KEY (Categoria_PK),
	Categoria_PK tinyint NOT NULL,
	Descripcion varchar(15)
);