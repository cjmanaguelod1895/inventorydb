CREATE TABLE [salespropos].[accounts] (
    [id]              BIGINT         IDENTITY (4, 1) NOT NULL,
    [account_no]      NVARCHAR (191) NOT NULL,
    [name]            NVARCHAR (191) NOT NULL,
    [initial_balance] FLOAT (53)     DEFAULT (NULL) NULL,
    [total_balance]   FLOAT (53)     NOT NULL,
    [note]            NVARCHAR (MAX) DEFAULT (NULL) NULL,
    [is_default]      SMALLINT       DEFAULT (NULL) NULL,
    [is_active]       SMALLINT       NOT NULL,
    [created_at]      DATETIME       DEFAULT (NULL) NULL,
    [updated_at]      DATETIME       DEFAULT (NULL) NULL,
    CONSTRAINT [PK_accounts_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'salespropos.accounts', @level0type = N'SCHEMA', @level0name = N'salespropos', @level1type = N'TABLE', @level1name = N'accounts';

