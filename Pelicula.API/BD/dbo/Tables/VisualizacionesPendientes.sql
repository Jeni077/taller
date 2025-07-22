CREATE TABLE [dbo].[VisualizacionesPendientes] (
    [IdPendiente]   UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [IdUsuario]     UNIQUEIDENTIFIER NOT NULL,
    [IdPelicula]    INT              NULL,
    [IdSerie]       INT              NULL,
    [Prioridad]     INT              NOT NULL,
    [FechaRegistro] DATETIME         DEFAULT (getdate()) NULL,
    PRIMARY KEY CLUSTERED ([IdPendiente] ASC),
    CHECK ([Prioridad]>=(1) AND [Prioridad]<=(3)),
    CONSTRAINT [FK_Visualiza_IdUsuario] FOREIGN KEY ([IdUsuario]) REFERENCES [dbo].[Usuario] ([IdUsuario])
);

