CREATE TABLE [salespropos].[product_variants] (
    [id]               BIGINT         IDENTITY (20, 1) NOT NULL,
    [product_id]       INT            NOT NULL,
    [variant_id]       INT            NOT NULL,
    [position]         INT            NOT NULL,
    [item_code]        NVARCHAR (191) NOT NULL,
    [additional_price] FLOAT (53)     DEFAULT (NULL) NULL,
    [qty]              FLOAT (53)     NOT NULL,
    [created_at]       DATETIME       DEFAULT (NULL) NULL,
    [updated_at]       DATETIME       DEFAULT (NULL) NULL,
    CONSTRAINT [PK_product_variants_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'salespropos.product_variants', @level0type = N'SCHEMA', @level0name = N'salespropos', @level1type = N'TABLE', @level1name = N'product_variants';

