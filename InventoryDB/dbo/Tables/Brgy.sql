CREATE TABLE [dbo].[Brgy] (
    [BarangayId]           INT           IDENTITY (1, 1) NOT NULL,
    [BarangayCode]         VARCHAR (255) NULL,
    [BarangayDescription]  TEXT          NULL,
    [RegCode]              VARCHAR (255) NULL,
    [ProvinceCode]         VARCHAR (255) NULL,
    [CityMunicipalityCode] VARCHAR (255) NULL,
    CONSTRAINT [PK_Brgy] PRIMARY KEY CLUSTERED ([BarangayId] ASC)
);



