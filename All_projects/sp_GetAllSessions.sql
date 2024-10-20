Alter PROCEDURE sp_GetAllSessions
AS
BEGIN
    SELECT SessionId, SessionName, SessionStartTime, SessionEndTime, SessionDescription, EventId
    FROM SessionDetails
END
GO


