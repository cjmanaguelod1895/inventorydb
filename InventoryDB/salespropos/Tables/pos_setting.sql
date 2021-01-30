CREATE TABLE [salespropos].[pos_setting] (
    [id]                INT            NOT NULL,
    [customer_id]       INT            NOT NULL,
    [warehouse_id]      INT            NOT NULL,
    [biller_id]         INT            NOT NULL,
    [product_number]    INT            NOT NULL,
    [keybord_active]    SMALLINT       NOT NULL,
    [stripe_public_key] NVARCHAR (191) DEFAULT (NULL) NULL,
    [stripe_secret_key] NVARCHAR (191) NOT NULL,
    [created_at]        DATETIME       DEFAULT (NULL) NULL,
    [updated_at]        DATETIME       DEFAULT (NULL) NULL,
    CONSTRAINT [pos_setting$pos_setting_id_unique] UNIQUE CLUSTERED ([id] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'salespropos.pos_setting', @level0type = N'SCHEMA', @level0name = N'salespropos', @level1type = N'TABLE', @level1name = N'pos_setting';

