CREATE TABLE [dbo].[Currencies] (
    [CurrencyId] INT          IDENTITY (1, 1) NOT NULL,
    [Code]       VARCHAR (3)  NULL,
    [Symbol]     NVARCHAR (3) NULL,
    CONSTRAINT [PK_geopos_currencies_id] PRIMARY KEY CLUSTERED ([CurrencyId] ASC)
);

