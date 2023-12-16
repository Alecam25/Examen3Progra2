CREATE DATABASE BASEDATOSEX
GO

USE BASEDATOSEX
GO


Create TABLE PARTIDOS(

PartidoID Int PRIMARY KEY IDENTITY (1,1) NOT NULL,
NombreP varchar(30)NOT NULL

)
GO


CREATE TABLE ENCUESTA( 

NumeroEncuestas int PRIMARY KEY IDENTITY (1,1),
Nombre varchar(50) NOT NULL,
Edad int not null,
Correo NVARCHAR(50) not null,
PartidoPoliticoID int NOT NULL,
CONSTRAINT fk_PartidoPolitco FOREIGN KEY (PartidoPoliticoID) REFERENCES PARTIDOS(PartidoID)
)
GO

INSERT INTO PARTIDOS(NombreP)
Values 
('PLN'),('PUSC'),('PAC'),
('PUSC'),('PAC'),('PLN'),
('PAC'),('PLN'),('PUSC')
GO


CREATE PROCEDURE AGRREGAR_ENCUESTA

@Nombre varchar (50),
@Correo varchar (50),
@Edad int,
@PartidoPoliticoID INT

AS
  BEGIN
       INSERT INTO ENCUESTA(Nombre, Edad, Correo, PartidoPoliticoID)
	   VALUES (@Nombre,@Edad,@Correo,@PartidoPoliticoID)
   END
GO

   
CREATE PROCEDURE Consultar_Partidos
AS  
    BEGIN 
	     SELECT ENCUESTA.NumeroEncuestas, ENCUESTA.Nombre, ENCUESTA.Edad, ENCUESTA.Correo, ENCUESTA.PartidoPoliticoID
		 FROM ENCUESTA
		 INNER JOIN	PARTIDOS ON ENCUESTA.PartidoPoliticoID = PARTIDOS.PartidoID
		 END
GO

SELECT * FROM ENCUESTA

Select * FROM PARTIDOS