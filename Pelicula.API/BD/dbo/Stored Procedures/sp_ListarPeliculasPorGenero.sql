
-- Procedimientos Almacenados
CREATE PROCEDURE sp_ListarPeliculasPorGenero
	@IdGenero UNIQUEIDENTIFIER
AS
BEGIN 
	SELECT
		Titulo,
		ImagenUrl,
		Descripcion,
		FechaEstreno,
		Calificacion
	FROM Peliculas
	WHERE IdGenero = @IdGenero;
END;