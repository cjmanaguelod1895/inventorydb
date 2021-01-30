CREATE TABLE [salespropos].[payments] (
    [id]                BIGINT         IDENTITY (322, 1) NOT NULL,
    [payment_reference] NVARCHAR (191) NOT NULL,
    [user_id]           INT            NOT NULL,
    [purchase_id]       INT            DEFAULT (NULL) NULL,
    [sale_id]           INT            DEFAULT (NULL) NULL,
    [cash_register_id]  INT            DEFAULT (NULL) NULL,
    [account_id]        INT            NOT NULL,
    [amount]            FLOAT (53)     NOT NULL,
    [change]            FLOAT (53)     NOT NULL,
    [paying_method]     NVARCHAR (191) NOT NULL,
    [payment_note]      NVARCHAR (MAX) DEFAULT (NULL) NULL,
    [created_at]        DATETIME       DEFAULT (NULL) NULL,
    [updated_at]        DATETIME       DEFAULT (NULL) NULL,
    CONSTRAINT [PK_payments_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'salespropos.payments', @level0type = N'SCHEMA', @level0name = N'salespropos', @level1type = N'TABLE', @level1name = N'payments';

