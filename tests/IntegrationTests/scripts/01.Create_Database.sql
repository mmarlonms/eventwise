USE master
GO

CREATE DATABASE EventWise
GO

USE EventWise
GO

CREATE TABLE Event (
    Id INT PRIMARY KEY IDENTITY,
    Name NVARCHAR(100) NOT NULL,
    Date DATETIME NOT NULL,
    Location NVARCHAR(100) NOT NULL,
    CONSTRAINT CK_Event_Date CHECK (Date >= GETDATE()),
    CONSTRAINT UQ_Event_Name UNIQUE (Name)
);

CREATE TABLE Ticket (
    Id INT PRIMARY KEY IDENTITY,
    EventId INT NOT NULL REFERENCES Event(Id),
    Type NVARCHAR(50) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL,
    Quantity INT NOT NULL,
    CONSTRAINT UQ_Ticket_Type_EventId UNIQUE (Type, EventId)
);

CREATE TABLE Participant (
    Id INT PRIMARY KEY IDENTITY,
    EventId INT NOT NULL REFERENCES Event(Id),
    Name NVARCHAR(100) NOT NULL,
    Email NVARCHAR(100) NOT NULL,
    TicketType NVARCHAR(50) NOT NULL,
    PaymentStatus NVARCHAR(50) NOT NULL,
    CONSTRAINT UQ_Participant_Email_EventId UNIQUE (Email, EventId)
);

CREATE TABLE Speaker (
    Id INT PRIMARY KEY IDENTITY,
    Name NVARCHAR(100) NOT NULL,
    Bio NVARCHAR(500) NOT NULL,
    PhotoUrl NVARCHAR(200) NULL,
    CONSTRAINT UQ_Speaker_Name UNIQUE (Name)
);

CREATE TABLE Sponsor (
    Id INT PRIMARY KEY IDENTITY,
    Name NVARCHAR(100) NOT NULL,
    LogoUrl NVARCHAR(200) NULL,
    SponsorLevel NVARCHAR(50) NOT NULL
);

CREATE TABLE [User] (
    Id INT PRIMARY KEY IDENTITY,
    Name NVARCHAR(100) NOT NULL,
    Email NVARCHAR(100) NOT NULL,
    PasswordHash VARBINARY(64) NOT NULL,
    IsAdmin BIT NOT NULL DEFAULT 0
);

CREATE TABLE EventTicket (
    EventId INT NOT NULL REFERENCES Event(Id),
    TicketId INT NOT NULL REFERENCES Ticket(Id),
    PRIMARY KEY (EventId, TicketId)
);

CREATE TABLE EventParticipant (
    EventId INT NOT NULL REFERENCES Event(Id),
    ParticipantId INT NOT NULL REFERENCES Participant(Id),
    PRIMARY KEY (EventId, ParticipantId)
);

CREATE TABLE EventSpeaker (
    EventId INT NOT NULL REFERENCES Event(Id),
    SpeakerId INT NOT NULL REFERENCES Speaker(Id),
    PRIMARY KEY (EventId, SpeakerId)
);

CREATE TABLE EventSponsor (
    EventId INT NOT NULL REFERENCES Event(Id),
    SponsorId INT NOT NULL REFERENCES Sponsor(Id),
    PRIMARY KEY (EventId, SponsorId)
);

CREATE TABLE UserEvent (
    UserId INT NOT NULL REFERENCES [User](Id),
    EventId INT NOT NULL REFERENCES Event(Id),
    PRIMARY KEY (UserId, EventId)
);
