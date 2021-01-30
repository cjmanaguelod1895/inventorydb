CREATE TABLE [salespropos].[products] (
    [id]                BIGINT         IDENTITY (68, 1) NOT NULL,
    [name]              NVARCHAR (191) NOT NULL,
    [code]              NVARCHAR (191) NOT NULL,
    [type]              NVARCHAR (191) NOT NULL,
    [barcode_symbology] NVARCHAR (191) NOT NULL,
    [brand_id]          INT            DEFAULT (NULL) NULL,
    [category_id]       INT            NOT NULL,
    [unit_id]           INT            NOT NULL,
    [purchase_unit_id]  INT            NOT NULL,
    [sale_unit_id]      INT            NOT NULL,
    [cost]              NVARCHAR (191) NOT NULL,
    [price]             NVARCHAR (191) NOT NULL,
    [qty]               FLOAT (53)     DEFAULT (NULL) NULL,
    [alert_quantity]    FLOAT (53)     DEFAULT (NULL) NULL,
    [promotion]         SMALLINT       DEFAULT (NULL) NULL,
    [promotion_price]   NVARCHAR (191) DEFAULT (NULL) NULL,
    [starting_date]     NVARCHAR (200) DEFAULT (NULL) NULL,
    [last_date]         DATE           DEFAULT (NULL) NULL,
    [tax_id]            INT            DEFAULT (NULL) NULL,
    [tax_method]        INT            DEFAULT (NULL) NULL,
    [image]             NVARCHAR (MAX) DEFAULT (NULL) NULL,
    [file]              NVARCHAR (191) DEFAULT (NULL) NULL,
    [is_variant]        SMALLINT       DEFAULT (NULL) NULL,
    [is_diffPrice]      SMALLINT       DEFAULT (NULL) NULL,
    [featured]          SMALLINT       DEFAULT (NULL) NULL,
    [product_list]      NVARCHAR (191) DEFAULT (NULL) NULL,
    [qty_list]          NVARCHAR (191) DEFAULT (NULL) NULL,
    [price_list]        NVARCHAR (191) DEFAULT (NULL) NULL,
    [product_details]   NVARCHAR (MAX) DEFAULT (NULL) NULL,
    [is_active]         SMALLINT       DEFAULT (NULL) NULL,
    [created_at]        DATETIME       DEFAULT (NULL) NULL,
    [updated_at]        DATETIME       DEFAULT (NULL) NULL,
    CONSTRAINT [PK_products_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'salespropos.products', @level0type = N'SCHEMA', @level0name = N'salespropos', @level1type = N'TABLE', @level1name = N'products';

