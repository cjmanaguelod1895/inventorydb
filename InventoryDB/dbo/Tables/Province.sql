CREATE TABLE [dbo].[Province] (
    [ProvinceId]          INT           IDENTITY (1, 1) NOT NULL,
    [PSGCCode]            VARCHAR (255) NULL,
    [ProvinceDescription] TEXT          NULL,
    [RegCode]             VARCHAR (255) NULL,
    [ProvinceCode]        VARCHAR (255) NULL,
    CONSTRAINT [PK_Province] PRIMARY KEY CLUSTERED ([ProvinceId] ASC)
);

