
CREATE PROCEDURE sp_ListarSeriesPorGenero
	@IdGenero UNIQUEIDENTIFIER
AS
BEGIN
	SELECT
		Titulo,
		ImagenUrl,
		Descripcion,
		FechaEstreno,
		Calificacion
	FROM Series
	WHERE IdGenero = @IdGenero;
END;