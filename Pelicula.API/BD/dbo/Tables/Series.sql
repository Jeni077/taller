CREATE TABLE [dbo].[Series] (
    [IdSerie]      UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [Titulo]       NVARCHAR (200)   NOT NULL,
    [ImagenUrl]    NVARCHAR (MAX)   NULL,
    [Descripcion]  NVARCHAR (MAX)   NULL,
    [FechaEstreno] DATE             NULL,
    [Calificacion] FLOAT (53)       NULL,
    [IdGenero]     UNIQUEIDENTIFIER NOT NULL,
    PRIMARY KEY CLUSTERED ([IdSerie] ASC),
    FOREIGN KEY ([IdGenero]) REFERENCES [dbo].[Generos] ([IdGenero])
);

