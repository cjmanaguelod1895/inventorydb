CREATE TABLE [salespropos].[payment_with_gift_card] (
    [id]           BIGINT   IDENTITY (9, 1) NOT NULL,
    [payment_id]   INT      NOT NULL,
    [gift_card_id] INT      NOT NULL,
    [created_at]   DATETIME DEFAULT (NULL) NULL,
    [updated_at]   DATETIME DEFAULT (NULL) NULL,
    CONSTRAINT [PK_payment_with_gift_card_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'salespropos.payment_with_gift_card', @level0type = N'SCHEMA', @level0name = N'salespropos', @level1type = N'TABLE', @level1name = N'payment_with_gift_card';

