--Select * from SpeakerDetail

CREATE PROCEDURE sp_GetAllSpeakerDetails
AS
BEGIN
    SELECT SpeakerId, SessionId, SpeakerName, SpeakerEmail, SpeakerBio
    FROM SpeakerDetail
END
GO