CREATE TABLE [dbo].[Region] (
    [RegionId] INT           IDENTITY (1, 1) NOT NULL,
    [PSGCCode] VARCHAR (255) NULL,
    [RegDesc]  TEXT          NULL,
    [RegCode]  VARCHAR (255) NULL,
    CONSTRAINT [PK_Region] PRIMARY KEY CLUSTERED ([RegionId] ASC)
);

