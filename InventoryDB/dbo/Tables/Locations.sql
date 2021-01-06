CREATE TABLE [dbo].[Locations] (
    [LocationId]   INT            IDENTITY (1, 1) NOT NULL,
    [Name]         NVARCHAR (100) NULL,
    [Address]      NVARCHAR (255) NULL,
    [City]         NVARCHAR (50)  NULL,
    [Region]       NVARCHAR (40)  NULL,
    [Country]      NVARCHAR (40)  NULL,
    [Phone]        NVARCHAR (20)  NULL,
    [EmailAddress] NVARCHAR (50)  NULL,
    [TaxId]        NVARCHAR (40)  NULL,
    [Logo]         NVARCHAR (50)  NULL,
    [Cur]          INT            NULL,
    [WareHouseId]  INT            NULL,
    [Ext]          NVARCHAR (255) NULL,
    CONSTRAINT [PK_geopos_locations_id] PRIMARY KEY CLUSTERED ([LocationId] ASC)
);

