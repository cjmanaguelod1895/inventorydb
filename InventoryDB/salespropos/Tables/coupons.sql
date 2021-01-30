CREATE TABLE [salespropos].[coupons] (
    [id]             BIGINT         IDENTITY (3, 1) NOT NULL,
    [code]           NVARCHAR (191) NOT NULL,
    [type]           NVARCHAR (191) NOT NULL,
    [amount]         FLOAT (53)     NOT NULL,
    [minimum_amount] FLOAT (53)     DEFAULT (NULL) NULL,
    [quantity]       INT            NOT NULL,
    [used]           INT            NOT NULL,
    [expired_date]   DATE           NOT NULL,
    [user_id]        INT            NOT NULL,
    [is_active]      SMALLINT       NOT NULL,
    [created_at]     DATETIME       DEFAULT (NULL) NULL,
    [updated_at]     DATETIME       DEFAULT (NULL) NULL,
    CONSTRAINT [PK_coupons_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'salespropos.coupons', @level0type = N'SCHEMA', @level0name = N'salespropos', @level1type = N'TABLE', @level1name = N'coupons';

