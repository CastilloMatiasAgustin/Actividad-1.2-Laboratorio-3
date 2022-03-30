/*
>>Relacion (N:N)

Un articulo puede tener varias combinaciones de color y talle y puede haber varios articulos del mismo color y/o talle

*/

CREATE DATABASE RELACION_NAN
GO
USE RELACION_NAN
GO
CREATE TABLE TALLES(
    COD_TALLE SMALLINT NOT NULL PRIMARY KEY,
    DESCRIPCION VARCHAR (50) NULL
)
GO

CREATE TABLE COLORES(
    COD_COLOR SMALLINT NOT NULL PRIMARY KEY,
    DESCRIPCION VARCHAR (50) NULL
)
GO

CREATE TABLE ARTICULOS(
    COD_ART SMALLINT NOT NULL PRIMARY KEY,
    DESCRIPCION VARCHAR (50) NULL,
)
GO

CREATE TABLE STOCK(
    COD_ART SMALLINT NOT NULL FOREIGN KEY REFERENCES ARTICULOS(COD_ART),
    COD_COLOR SMALLINT NOT NULL FOREIGN KEY REFERENCES COLORES(COD_COLOR),
    COD_TALLE SMALLINT NOT NULL FOREIGN KEY REFERENCES TALLES(COD_TALLE),
    STOCK INT NOT NULL,
    PRIMARY KEY (COD_ART,COD_COLOR,COD_TALLE) 

)