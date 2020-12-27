CREATE TABLE [dbo].[CityMunicipality] (
    [MunicipalityId]     INT           IDENTITY (1, 1) NOT NULL,
    [PSGCCode]           VARCHAR (255) NULL,
    [CityMunDescription] TEXT          NULL,
    [RegDescription]     VARCHAR (255) NULL,
    [ProvinceCode]       VARCHAR (255) NULL,
    [CityMunCode]        VARCHAR (255) NULL,
    CONSTRAINT [PK_CityMunicipality] PRIMARY KEY CLUSTERED ([MunicipalityId] ASC)
);

