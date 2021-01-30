CREATE TABLE [salespropos].[expenses] (
    [id]                  BIGINT         IDENTITY (35, 1) NOT NULL,
    [reference_no]        NVARCHAR (191) NOT NULL,
    [expense_category_id] INT            NOT NULL,
    [warehouse_id]        INT            NOT NULL,
    [account_id]          INT            NOT NULL,
    [user_id]             INT            NOT NULL,
    [cash_register_id]    INT            DEFAULT (NULL) NULL,
    [amount]              INT            NOT NULL,
    [note]                NVARCHAR (MAX) DEFAULT (NULL) NULL,
    [created_at]          DATETIME       DEFAULT (NULL) NULL,
    [updated_at]          DATETIME       DEFAULT (NULL) NULL,
    CONSTRAINT [PK_expenses_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'salespropos.expenses', @level0type = N'SCHEMA', @level0name = N'salespropos', @level1type = N'TABLE', @level1name = N'expenses';

