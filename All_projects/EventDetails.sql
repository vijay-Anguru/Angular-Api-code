CREATE PROCEDURE EventsDetails
    @EventId INT,
    @EventName NVARCHAR(50),
    @EventDate DATE,
    @Location NVARCHAR(100),
    @Description NVARCHAR(MAX),
    @Organizer NVARCHAR(50),
    @TotalCount INT,
    @Action NVARCHAR(10)
AS
BEGIN
    IF @Action = 'INSERT'
    BEGIN
        INSERT INTO Events (EventName, EventDate, Location, Description, Organizer, TotalCount)
        VALUES (@EventName, @EventDate, @Location, @Description, @Organizer, @TotalCount)
    END
    ELSE IF @Action = 'UPDATE'
    BEGIN
        UPDATE Events
        SET EventName = @EventName,
            EventDate = @EventDate,
            Location = @Location,
            Description = @Description,
            Organizer = @Organizer,
            TotalCount = @TotalCount
        WHERE EventId = @EventId
    END
    ELSE IF @Action = 'DELETE'
    BEGIN
        DELETE FROM Events
        WHERE EventId = @EventId
    END
    ELSE
    BEGIN
        RAISERROR ('Invalid action specified', 16, 1)
    END
END
GO