CREATE DATABASE Escuela
GO

USE Escuela
GO
IF OBJECT_ID('SchemaName.TableName', 'U') IS NOT NULL
DROP TABLE SchemaName.TableName
GO
-- Create the table in the specified schema
CREATE TABLE dbo.DatosEstudiante
(
    id INT NOT NULL IDENTITY(1,1) PRIMARY KEY, -- primary key column
    nombre [NVARCHAR](50) NOT NULL,
    carrera [NVARCHAR](50) NOT NULL
    -- specify more columns here
);
GO

IF OBJECT_ID('SchemaName.TableName', 'U') IS NOT NULL
DROP TABLE SchemaName.TableName
GO
-- Create the table in the specified schema
CREATE TABLE dbo.Materias
(
    id INT NOT NULL IDENTITY(1,1) PRIMARY KEY, -- primary key column
    nombre_materia [NVARCHAR](50) NOT NULL,
    
);
GO

IF OBJECT_ID('SchemaName.TableName', 'U') IS NOT NULL
DROP TABLE SchemaName.TableName
GO
-- Create the table in the specified schema
CREATE TABLE dbo.NotasEstudiante
(
    id INT NOT NULL IDENTITY(1,1) PRIMARY KEY, -- primary key column
    estudianteid [NVARCHAR](50) NOT NULL,
    materiaid [NVARCHAR](50) NOT NULL,
    nota INT NOT NULL
);
GO