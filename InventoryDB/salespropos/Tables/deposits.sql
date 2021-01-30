CREATE TABLE [salespropos].[deposits] (
    [id]          BIGINT         IDENTITY (6, 1) NOT NULL,
    [amount]      FLOAT (53)     NOT NULL,
    [customer_id] INT            NOT NULL,
    [user_id]     INT            NOT NULL,
    [note]        NVARCHAR (MAX) DEFAULT (NULL) NULL,
    [created_at]  DATETIME       DEFAULT (NULL) NULL,
    [updated_at]  DATETIME       DEFAULT (NULL) NULL,
    CONSTRAINT [PK_deposits_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'salespropos.deposits', @level0type = N'SCHEMA', @level0name = N'salespropos', @level1type = N'TABLE', @level1name = N'deposits';

