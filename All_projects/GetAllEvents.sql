CREATE PROCEDURE GetAllEvents
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
END
GO