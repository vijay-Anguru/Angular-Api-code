CREATE TABLE Events (
    EventId INT PRIMARY KEY IDENTITY(1,1),
    EventName NVARCHAR(50) NOT NULL,
    EventDate DATE,
    Location NVARCHAR(100) NOT NULL,
    Description NVARCHAR(MAX),
    Organizer NVARCHAR(50) NOT NULL,
    TotalCount INT
);


INSERT INTO Events (EventName, EventDate, Location, Description, Organizer, TotalCount)
VALUES
    ('Garba', '2022-10-01', 'Ahmedabad', 'Traditional Gujarati dance event', 'Gujarati Cultural Association', 500),
    ('Sports', '2022-11-15', 'Mumbai', 'Inter-college sports tournament', 'Mumbai University', 1000),
    ('Movies', '2022-12-25', 'Bangalore', 'Film festival showcasing latest releases', 'Karnataka Film Chamber', 2000),
    ('Music', '2023-01-26', 'Chennai', 'Concert featuring popular music artists', 'Tamil Nadu Music Academy', 1500),
    ('Food Festival', '2023-02-14', 'Delhi', 'Culinary event showcasing diverse Indian cuisine', 'Delhi Food Association', 3000),
    ('Theater', '2023-03-21', 'Kolkata', 'Play performances by renowned theater groups', 'Kolkata Theater Association', 1200),
    ('Comedy Night', '2023-04-01', 'Pune', 'Stand-up comedy show featuring popular comedians', 'Pune Comedy Club', 800),
    ('Art Exhibition', '2023-05-10', 'Hyderabad', 'Display of artwork by local and national artists', 'Hyderabad Art Association', 2500);


	CREATE TABLE SessionDetail (
    SessionId INT PRIMARY KEY IDENTITY(1,1),
    SessionName NVARCHAR(50) NOT NULL,
    SessionStartTime TIME NOT NULL,
    SessionEndTime TIME NOT NULL,
    SessionDescription NVARCHAR(MAX),
    EventId INT,
    FOREIGN KEY (EventId) REFERENCES Events(EventId)
);

INSERT INTO SessionDetail (SessionName, SessionStartTime, SessionEndTime, SessionDescription, EventId)
VALUES
    ('Garba Session 1', '10:00 AM', '11:30 AM', 'Traditional Gujarati dance performance', 1),
    ('Sports Session 1', '9:00 AM', '12:00 PM', 'Cricket match between college teams', 2),
    ('Movie Screening 1', '3:00 PM', '5:30 PM', 'Latest Bollywood release', 3),
    ('Music Concert 1', '7:00 PM', '9:30 PM', 'Performance by popular music artists', 4),
    ('Food Festival Session 1', '11:00 AM', '1:00 PM', 'Cooking demonstration by celebrity chefs', 5),
    ('Theater Performance 1', '2:00 PM', '4:30 PM', 'Play by renowned theater group', 6),
    ('Comedy Night Session 1', '8:00 PM', '10:30 PM', 'Stand-up comedy show by popular comedians', 7),
    ('Art Exhibition Session 1', '10:00 AM', '6:00 PM', 'Display of artwork by local artists', 8),
    ('Garba Session 2', '2:00 PM', '3:30 PM', 'Traditional Gujarati dance performance', 1),
    ('Sports Session 2', '1:00 PM', '4:00 PM', 'Football match between college teams', 2);


	CREATE TABLE SpeakerDetail (
    SpeakerId INT PRIMARY KEY IDENTITY(1,1),
    SessionId INT,
    SpeakerName NVARCHAR(50) NOT NULL,
    SpeakerEmail NVARCHAR(100) NOT NULL,
    SpeakerBio NVARCHAR(MAX),
    FOREIGN KEY (SessionId) REFERENCES SessionDetail(SessionId)
);

INSERT INTO SpeakerDetail (SessionId, SpeakerName, SpeakerEmail, SpeakerBio)
VALUES
    (1, 'Rahul', 'rahul.sharma@example.com', 'Expert in Indian culture'),
    (1, 'Priya', 'priya.patel@example.com', 'Author and historian'),
    (2, 'Karan', 'karan.jain@example.com', 'Motivational coach'),
    (3, 'Aisha', 'aisha.khan@example.com', 'Industry expert'),
    (4, 'Rohan', 'rohan.singh@example.com', 'Consultant and speaker'),
    (5, 'Nalini', 'nalini.iyer@example.com', 'Thought leader');



create  table Users (
    UserId  Int Primary key,
    Username nvarchar(50) NOT NULL,
    Email nvarchar(100) NOT NULL UNIQUE,
    PasswordHash nvarchar(100) NOT NULL,
    Name nvarchar(100) NOT NULL,
    Bio nvarchar(MAX) NULL,
    RoleId Int NOT NULL,
    FOREIGN KEY (RoleId) REFERENCES Roles(Id)
);

INSERT INTO Users (UserId, Username, Email, PasswordHash, Name, Bio, RoleId)
VALUES
    (1, 'rahul123', 'rahul.sharma@example.com', 'pd123', 'Rahul Sharma', 'This is a bio.', 1),
    (2, 'priya123', 'priya.patel@example.com', 'pd456', 'Priya Patel', 'This is another bio.', 2),
    (3, 'karan123', 'karan.jain@example.com', 'pd789', 'Karan Jain', NULL, 3),
    (4, 'aisha123', 'aisha.khan@example.com', 'pd101', 'Aisha Khan', 'This is a bio.', 4),
    (5, 'rohan123', 'rohan.singh@example.com', 'pd112', 'Rohan Singh', 'This is another bio.', 5);




Create table Roles (
    Id Int Primary key,
    Name nvarchar(50) NOT NULL
);

INSERT INTO Roles (Id, Name)
VALUES
    (1, 'Admin'),
    (2, 'Speaker'),
    (3, 'Organizer'),
    (4, 'Attendee'),
    (5, 'Moderator');


    
