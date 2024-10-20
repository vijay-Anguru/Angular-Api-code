CREATE PROCEDURE sp_GetSessionById
    @SessionId INT
AS
BEGIN
    SELECT SessionId, SessionName, SessionStartTime, SessionEndTime, SessionDescription, EventId
    FROM SessionDetails
    WHERE SessionId = @SessionId
END
GO