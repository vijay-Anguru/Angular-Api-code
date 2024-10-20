--select * from Events
--Select * from SessionDetail
--select * from SpeakerDetail

CREATE PROCEDURE sp_SessionManagement
    @SessionId INT,
    @SessionName NVARCHAR(100) = NULL,
    @SessionStartTime DATETIME = NULL,
    @SessionEndTime DATETIME = NULL,
    @SessionDescription NVARCHAR(MAX) = NULL,
    @EventId INT = NULL,
    @Action VARCHAR(10) = 'INSERT'
AS
BEGIN
    IF @Action = 'INSERT'
    BEGIN
        INSERT INTO SessionDetail (SessionId, SessionName, SessionStartTime, SessionEndTime, SessionDescription, EventId)
        VALUES (@SessionId, @SessionName, @SessionStartTime, @SessionEndTime, @SessionDescription, @EventId)
    END
    ELSE IF @Action = 'UPDATE'
    BEGIN
        UPDATE Sessions
        SET SessionName = @SessionName,
            SessionStartTime = @SessionStartTime,
            SessionEndTime = @SessionEndTime,
            SessionDescription = @SessionDescription,
            EventId = @EventId
        WHERE SessionId = @SessionId
    END
    ELSE IF @Action = 'DELETE'
    BEGIN
        DELETE FROM SessionDetail
        WHERE SessionId = @SessionId
    END
    ELSE
    BEGIN
        RAISERROR ('Invalid action specified', 16, 1)
    END
END
GO


