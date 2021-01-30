CREATE TABLE [salespropos].[billers] (
    [id]           BIGINT         IDENTITY (9, 1) NOT NULL,
    [name]         NVARCHAR (191) NOT NULL,
    [image]        NVARCHAR (191) DEFAULT (NULL) NULL,
    [company_name] NVARCHAR (191) NOT NULL,
    [vat_number]   NVARCHAR (191) DEFAULT (NULL) NULL,
    [email]        NVARCHAR (191) NOT NULL,
    [phone_number] NVARCHAR (191) NOT NULL,
    [address]      NVARCHAR (191) NOT NULL,
    [city]         NVARCHAR (191) NOT NULL,
    [state]        NVARCHAR (191) DEFAULT (NULL) NULL,
    [postal_code]  NVARCHAR (191) DEFAULT (NULL) NULL,
    [country]      NVARCHAR (191) DEFAULT (NULL) NULL,
    [is_active]    SMALLINT       DEFAULT (NULL) NULL,
    [created_at]   DATETIME       DEFAULT (NULL) NULL,
    [updated_at]   DATETIME       DEFAULT (NULL) NULL,
    CONSTRAINT [PK_billers_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'salespropos.billers', @level0type = N'SCHEMA', @level0name = N'salespropos', @level1type = N'TABLE', @level1name = N'billers';

