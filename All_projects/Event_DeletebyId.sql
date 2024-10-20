CREATE PROCEDURE Event_DeleteEventById
    @EventId INT
AS
BEGIN
    DELETE FROM Events
    WHERE EventId = @EventId
END
GO