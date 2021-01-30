CREATE TABLE [salespropos].[customers] (
    [id]                BIGINT         IDENTITY (24, 1) NOT NULL,
    [customer_group_id] INT            NOT NULL,
    [user_id]           INT            DEFAULT (NULL) NULL,
    [name]              NVARCHAR (191) NOT NULL,
    [company_name]      NVARCHAR (191) DEFAULT (NULL) NULL,
    [email]             NVARCHAR (191) DEFAULT (NULL) NULL,
    [phone_number]      NVARCHAR (191) NOT NULL,
    [tax_no]            NVARCHAR (191) DEFAULT (NULL) NULL,
    [address]           NVARCHAR (191) NOT NULL,
    [city]              NVARCHAR (191) NOT NULL,
    [state]             NVARCHAR (191) DEFAULT (NULL) NULL,
    [postal_code]       NVARCHAR (191) DEFAULT (NULL) NULL,
    [country]           NVARCHAR (191) DEFAULT (NULL) NULL,
    [deposit]           FLOAT (53)     DEFAULT (NULL) NULL,
    [expense]           FLOAT (53)     DEFAULT (NULL) NULL,
    [is_active]         SMALLINT       DEFAULT (NULL) NULL,
    [created_at]        DATETIME       DEFAULT (NULL) NULL,
    [updated_at]        DATETIME       DEFAULT (NULL) NULL,
    CONSTRAINT [PK_customers_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'salespropos.customers', @level0type = N'SCHEMA', @level0name = N'salespropos', @level1type = N'TABLE', @level1name = N'customers';

