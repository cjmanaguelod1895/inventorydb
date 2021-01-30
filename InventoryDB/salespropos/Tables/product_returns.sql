CREATE TABLE [salespropos].[product_returns] (
    [id]             BIGINT     IDENTITY (32, 1) NOT NULL,
    [return_id]      INT        NOT NULL,
    [product_id]     INT        NOT NULL,
    [variant_id]     INT        DEFAULT (NULL) NULL,
    [qty]            FLOAT (53) NOT NULL,
    [sale_unit_id]   INT        NOT NULL,
    [net_unit_price] FLOAT (53) NOT NULL,
    [discount]       FLOAT (53) NOT NULL,
    [tax_rate]       FLOAT (53) NOT NULL,
    [tax]            FLOAT (53) NOT NULL,
    [total]          FLOAT (53) NOT NULL,
    [created_at]     DATETIME   DEFAULT (NULL) NULL,
    [updated_at]     DATETIME   DEFAULT (NULL) NULL,
    CONSTRAINT [PK_product_returns_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'salespropos.product_returns', @level0type = N'SCHEMA', @level0name = N'salespropos', @level1type = N'TABLE', @level1name = N'product_returns';

