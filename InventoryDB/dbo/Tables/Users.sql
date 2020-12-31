CREATE TABLE [dbo].[Users] (
    [UserId]        INT           IDENTITY (1, 1) NOT NULL,
    [Name]          VARCHAR (MAX) NULL,
    [Age]           VARCHAR (50)  NULL,
    [Address]       VARCHAR (100) NULL,
    [BirthDate]     DATE          NULL,
    [EmailAddress]  VARCHAR (50)  NULL,
    [Username]      VARCHAR (50)  NULL,
    [Password]      VARCHAR (50)  NULL,
    [Role]          VARCHAR (50)  NULL,
    [IsActive]      CHAR (1)      NULL,
    [DateCreated]   DATETIME      NULL,
    [LastLoginDate] DATETIME      NULL,
    CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED ([UserId] ASC)
);



