CREATE TABLE [salespropos].[gift_cards] (
    [id]           BIGINT         IDENTITY (8, 1) NOT NULL,
    [card_no]      NVARCHAR (191) NOT NULL,
    [amount]       FLOAT (53)     NOT NULL,
    [expense]      FLOAT (53)     NOT NULL,
    [customer_id]  INT            DEFAULT (NULL) NULL,
    [user_id]      INT            DEFAULT (NULL) NULL,
    [expired_date] DATE           DEFAULT (NULL) NULL,
    [created_by]   INT            NOT NULL,
    [is_active]    SMALLINT       NOT NULL,
    [created_at]   DATETIME       DEFAULT (NULL) NULL,
    [updated_at]   DATETIME       DEFAULT (NULL) NULL,
    CONSTRAINT [PK_gift_cards_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'salespropos.gift_cards', @level0type = N'SCHEMA', @level0name = N'salespropos', @level1type = N'TABLE', @level1name = N'gift_cards';

