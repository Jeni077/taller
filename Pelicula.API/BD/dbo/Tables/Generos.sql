CREATE TABLE [dbo].[Generos] (
    [IdGenero]      UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [Nombre]        NVARCHAR (100)   NOT NULL,
    [TipoContenido] NVARCHAR (10)    NOT NULL,
    PRIMARY KEY CLUSTERED ([IdGenero] ASC),
    CHECK ([TipoContenido]='Serie' OR [TipoContenido]='Pelicula')
);

