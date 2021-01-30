CREATE TABLE [salespropos].[purchase_product_return] (
    [id]               BIGINT     IDENTITY (12, 1) NOT NULL,
    [return_id]        INT        NOT NULL,
    [product_id]       INT        NOT NULL,
    [variant_id]       INT        DEFAULT (NULL) NULL,
    [qty]              FLOAT (53) NOT NULL,
    [purchase_unit_id] INT        NOT NULL,
    [net_unit_cost]    FLOAT (53) NOT NULL,
    [discount]         FLOAT (53) NOT NULL,
    [tax_rate]         FLOAT (53) NOT NULL,
    [tax]              FLOAT (53) NOT NULL,
    [total]            FLOAT (53) NOT NULL,
    [created_at]       DATETIME   DEFAULT (NULL) NULL,
    [updated_at]       DATETIME   DEFAULT (NULL) NULL,
    CONSTRAINT [PK_purchase_product_return_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'salespropos.purchase_product_return', @level0type = N'SCHEMA', @level0name = N'salespropos', @level1type = N'TABLE', @level1name = N'purchase_product_return';

