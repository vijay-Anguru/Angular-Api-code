CREATE PROCEDURE sp_ManageSpeakerDetail
    @SpeakerId INT,
    @SessionId INT,
    @SpeakerName NVARCHAR(100),
    @SpeakerEmail NVARCHAR(100),
    @SpeakerBio NVARCHAR(MAX),
    @Action VARCHAR(10) = 'INSERT'
AS
BEGIN
    IF @Action = 'INSERT'
    BEGIN
        INSERT INTO SpeakerDetail (SessionId, SpeakerName, SpeakerEmail, SpeakerBio)
        VALUES (@SessionId, @SpeakerName, @SpeakerEmail, @SpeakerBio)
    END
    ELSE IF @Action = 'UPDATE'
    BEGIN
        UPDATE SpeakerDetail
        SET SessionId = @SessionId,
            SpeakerName = @SpeakerName,
            SpeakerEmail = @SpeakerEmail,
            SpeakerBio = @SpeakerBio
        WHERE SpeakerId = @SpeakerId
    END
    ELSE IF @Action = 'DELETE'
    BEGIN
        DELETE FROM SpeakerDetail
        WHERE SpeakerId = @SpeakerId
    END
    ELSE
    BEGIN
        RAISERROR ('Invalid action specified', 16, 1)
    END
END
GO

select * from SpeakerDetail