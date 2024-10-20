CREATE PROCEDURE sp_GetSpeakerDetailsById
    @SpeakerId INT
AS
BEGIN
    SELECT SpeakerId, SessionId, SpeakerName, SpeakerEmail, SpeakerBio
    FROM SpeakerDetail
    WHERE SpeakerId = @SpeakerId
END
GO