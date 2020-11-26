USE Escuela
GO 

INSERT INTO DatosEstudiante
( 
 [nombre], [carrera]
)
VALUES
(
 'Marco', 'Mercadotecnia'
),
( 
 'Larissa', 'Psicologia'
)
GO


INSERT INTO Materias
( 
 [nombre_materia]
)
VALUES
(
 'Calculo'
),
( 
 'Administracion de Costos'
)

GO

INSERT INTO NotasEstudiante
( 
 [estudianteid], [materiaid], [nota]
)
VALUES
(
 1, 1, 10
),
( 
 2, 2, 5
)

GO