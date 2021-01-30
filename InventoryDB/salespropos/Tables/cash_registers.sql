CREATE TABLE [salespropos].[cash_registers] (
    [id]           BIGINT     IDENTITY (5, 1) NOT NULL,
    [cash_in_hand] FLOAT (53) NOT NULL,
    [user_id]      INT        NOT NULL,
    [warehouse_id] INT        NOT NULL,
    [status]       SMALLINT   NOT NULL,
    [created_at]   DATETIME   DEFAULT (NULL) NULL,
    [updated_at]   DATETIME   DEFAULT (NULL) NULL,
    CONSTRAINT [PK_cash_registers_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'salespropos.cash_registers', @level0type = N'SCHEMA', @level0name = N'salespropos', @level1type = N'TABLE', @level1name = N'cash_registers';

