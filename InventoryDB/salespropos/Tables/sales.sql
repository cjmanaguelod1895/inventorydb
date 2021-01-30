CREATE TABLE [salespropos].[sales] (
    [id]               BIGINT         IDENTITY (259, 1) NOT NULL,
    [reference_no]     NVARCHAR (191) NOT NULL,
    [user_id]          INT            NOT NULL,
    [cash_register_id] INT            DEFAULT (NULL) NULL,
    [customer_id]      INT            NOT NULL,
    [warehouse_id]     INT            NOT NULL,
    [biller_id]        INT            DEFAULT (NULL) NULL,
    [item]             INT            NOT NULL,
    [total_qty]        FLOAT (53)     NOT NULL,
    [total_discount]   FLOAT (53)     NOT NULL,
    [total_tax]        FLOAT (53)     NOT NULL,
    [total_price]      FLOAT (53)     NOT NULL,
    [grand_total]      FLOAT (53)     NOT NULL,
    [order_tax_rate]   FLOAT (53)     DEFAULT (NULL) NULL,
    [order_tax]        FLOAT (53)     DEFAULT (NULL) NULL,
    [order_discount]   FLOAT (53)     DEFAULT (NULL) NULL,
    [coupon_id]        INT            DEFAULT (NULL) NULL,
    [coupon_discount]  FLOAT (53)     DEFAULT (NULL) NULL,
    [shipping_cost]    FLOAT (53)     DEFAULT (NULL) NULL,
    [sale_status]      INT            NOT NULL,
    [payment_status]   INT            NOT NULL,
    [document]         NVARCHAR (191) DEFAULT (NULL) NULL,
    [paid_amount]      FLOAT (53)     DEFAULT (NULL) NULL,
    [sale_note]        NVARCHAR (MAX) DEFAULT (NULL) NULL,
    [staff_note]       NVARCHAR (MAX) DEFAULT (NULL) NULL,
    [created_at]       DATETIME       DEFAULT (NULL) NULL,
    [updated_at]       DATETIME       DEFAULT (NULL) NULL,
    CONSTRAINT [PK_sales_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'salespropos.sales', @level0type = N'SCHEMA', @level0name = N'salespropos', @level1type = N'TABLE', @level1name = N'sales';

