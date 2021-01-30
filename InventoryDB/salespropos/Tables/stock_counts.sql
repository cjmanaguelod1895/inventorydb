CREATE TABLE [salespropos].[stock_counts] (
    [id]           BIGINT         IDENTITY (2, 1) NOT NULL,
    [reference_no] NVARCHAR (191) NOT NULL,
    [warehouse_id] INT            NOT NULL,
    [category_id]  NVARCHAR (191) DEFAULT (NULL) NULL,
    [brand_id]     NVARCHAR (191) DEFAULT (NULL) NULL,
    [user_id]      INT            NOT NULL,
    [type]         NVARCHAR (191) NOT NULL,
    [initial_file] NVARCHAR (191) DEFAULT (NULL) NULL,
    [final_file]   NVARCHAR (191) DEFAULT (NULL) NULL,
    [note]         NVARCHAR (MAX) DEFAULT (NULL) NULL,
    [is_adjusted]  SMALLINT       NOT NULL,
    [created_at]   DATETIME       DEFAULT (NULL) NULL,
    [updated_at]   DATETIME       DEFAULT (NULL) NULL,
    CONSTRAINT [PK_stock_counts_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'salespropos.stock_counts', @level0type = N'SCHEMA', @level0name = N'salespropos', @level1type = N'TABLE', @level1name = N'stock_counts';

