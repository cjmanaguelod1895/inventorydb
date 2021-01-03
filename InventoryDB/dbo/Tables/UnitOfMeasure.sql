CREATE TABLE [dbo].[UnitOfMeasure] (
    [UnitID]   INT           IDENTITY (1, 1) NOT NULL,
    [UnitName] NVARCHAR (20) NULL,
    [UnitCode] NVARCHAR (5)  NULL,
    [UnitType] INT           NULL,
    [UnitSub]  INT           NULL,
    CONSTRAINT [PK_UnitOfMeasure] PRIMARY KEY CLUSTERED ([UnitID] ASC)
);

