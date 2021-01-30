CREATE TABLE [salespropos].[product_warehouse] (
    [id]           BIGINT         IDENTITY (51, 1) NOT NULL,
    [product_id]   NVARCHAR (191) NOT NULL,
    [variant_id]   INT            DEFAULT (NULL) NULL,
    [warehouse_id] INT            NOT NULL,
    [qty]          FLOAT (53)     NOT NULL,
    [price]        FLOAT (53)     DEFAULT (NULL) NULL,
    [created_at]   DATETIME       DEFAULT (NULL) NULL,
    [updated_at]   DATETIME       DEFAULT (NULL) NULL,
    CONSTRAINT [PK_product_warehouse_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'salespropos.product_warehouse', @level0type = N'SCHEMA', @level0name = N'salespropos', @level1type = N'TABLE', @level1name = N'product_warehouse';

