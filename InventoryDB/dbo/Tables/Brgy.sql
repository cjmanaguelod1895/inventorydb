CREATE TABLE [dbo].[Brgy] (
    [BaranggayId]          INT           IDENTITY (1, 1) NOT NULL,
    [BaranggayCode]        VARCHAR (255) NULL,
    [BaranggayDescription] TEXT          NULL,
    [RegCode]              VARCHAR (255) NULL,
    [ProvinceCode]         VARCHAR (255) NULL,
    [CityMunicipalityCode] VARCHAR (255) NULL,
    CONSTRAINT [PK_Brgy] PRIMARY KEY CLUSTERED ([BaranggayId] ASC)
);

