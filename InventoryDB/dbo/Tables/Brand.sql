CREATE TABLE [dbo].[Brand] (
    [BrandId]          INT            IDENTITY (1, 1) NOT NULL,
    [BrandName]        NVARCHAR (50)  NULL,
    [BrandCode]        NVARCHAR (5)   NULL,
    [BrandDescription] NVARCHAR (100) NULL,
    CONSTRAINT [PK_Brand] PRIMARY KEY CLUSTERED ([BrandId] ASC)
);

