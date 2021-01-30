CREATE TABLE [salespropos].[payrolls] (
    [id]            BIGINT         IDENTITY (10, 1) NOT NULL,
    [reference_no]  NVARCHAR (191) NOT NULL,
    [employee_id]   INT            NOT NULL,
    [account_id]    INT            NOT NULL,
    [user_id]       INT            NOT NULL,
    [amount]        FLOAT (53)     NOT NULL,
    [paying_method] NVARCHAR (191) NOT NULL,
    [note]          NVARCHAR (MAX) DEFAULT (NULL) NULL,
    [created_at]    DATETIME       DEFAULT (NULL) NULL,
    [updated_at]    DATETIME       DEFAULT (NULL) NULL,
    CONSTRAINT [PK_payrolls_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'salespropos.payrolls', @level0type = N'SCHEMA', @level0name = N'salespropos', @level1type = N'TABLE', @level1name = N'payrolls';

