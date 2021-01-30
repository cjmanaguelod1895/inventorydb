CREATE TABLE [salespropos].[payment_with_cheque] (
    [id]         BIGINT         IDENTITY (16, 1) NOT NULL,
    [payment_id] INT            NOT NULL,
    [cheque_no]  NVARCHAR (191) NOT NULL,
    [created_at] DATETIME       DEFAULT (NULL) NULL,
    [updated_at] DATETIME       DEFAULT (NULL) NULL,
    CONSTRAINT [PK_payment_with_cheque_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'salespropos.payment_with_cheque', @level0type = N'SCHEMA', @level0name = N'salespropos', @level1type = N'TABLE', @level1name = N'payment_with_cheque';

