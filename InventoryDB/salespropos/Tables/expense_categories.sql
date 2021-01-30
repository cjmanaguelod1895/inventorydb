CREATE TABLE [salespropos].[expense_categories] (
    [id]         BIGINT         IDENTITY (5, 1) NOT NULL,
    [code]       NVARCHAR (191) NOT NULL,
    [name]       NVARCHAR (191) NOT NULL,
    [is_active]  SMALLINT       NOT NULL,
    [created_at] DATETIME       DEFAULT (NULL) NULL,
    [updated_at] DATETIME       DEFAULT (NULL) NULL,
    CONSTRAINT [PK_expense_categories_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'salespropos.expense_categories', @level0type = N'SCHEMA', @level0name = N'salespropos', @level1type = N'TABLE', @level1name = N'expense_categories';

