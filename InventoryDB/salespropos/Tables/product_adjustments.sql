CREATE TABLE [salespropos].[product_adjustments] (
    [id]            BIGINT         IDENTITY (1, 1) NOT NULL,
    [adjustment_id] INT            NOT NULL,
    [product_id]    INT            NOT NULL,
    [qty]           FLOAT (53)     NOT NULL,
    [action]        NVARCHAR (191) NOT NULL,
    [created_at]    DATETIME       DEFAULT (NULL) NULL,
    [updated_at]    DATETIME       DEFAULT (NULL) NULL,
    CONSTRAINT [PK_product_adjustments_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'salespropos.product_adjustments', @level0type = N'SCHEMA', @level0name = N'salespropos', @level1type = N'TABLE', @level1name = N'product_adjustments';

