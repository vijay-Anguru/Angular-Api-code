CREATE PROCEDURE Event_GetEvents
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