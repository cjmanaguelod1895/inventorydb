CREATE TABLE [salespropos].[gift_card_recharges] (
    [id]           BIGINT     IDENTITY (12, 1) NOT NULL,
    [gift_card_id] INT        NOT NULL,
    [amount]       FLOAT (53) NOT NULL,
    [user_id]      INT        NOT NULL,
    [created_at]   DATETIME   DEFAULT (NULL) NULL,
    [updated_at]   DATETIME   DEFAULT (NULL) NULL,
    CONSTRAINT [PK_gift_card_recharges_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'salespropos.gift_card_recharges', @level0type = N'SCHEMA', @level0name = N'salespropos', @level1type = N'TABLE', @level1name = N'gift_card_recharges';

