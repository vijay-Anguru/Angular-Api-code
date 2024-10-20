CREATE PROCEDURE GetEventById
    @EventId INT
AS
BEGIN
    SELECT 
        EventId,
        EventName,
        EventDate,
        Location,
        Description,
        Organizer,
        TotalCount
    FROM 
        Events
    WHERE 
        EventId = @EventId
END
GO