CREATE TABLE [salespropos].[general_settings] (
    [id]                BIGINT         IDENTITY (2, 1) NOT NULL,
    [site_title]        NVARCHAR (191) NOT NULL,
    [site_logo]         NVARCHAR (191) DEFAULT (NULL) NULL,
    [currency]          NVARCHAR (191) NOT NULL,
    [staff_access]      NVARCHAR (191) NOT NULL,
    [date_format]       NVARCHAR (191) NOT NULL,
    [developed_by]      NVARCHAR (191) NOT NULL,
    [invoice_format]    NVARCHAR (191) DEFAULT (NULL) NULL,
    [state]             INT            DEFAULT (NULL) NULL,
    [theme]             NVARCHAR (191) NOT NULL,
    [created_at]        DATETIME       DEFAULT (NULL) NULL,
    [updated_at]        DATETIME       DEFAULT (NULL) NULL,
    [currency_position] NVARCHAR (191) NOT NULL,
    CONSTRAINT [PK_general_settings_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'salespropos.general_settings', @level0type = N'SCHEMA', @level0name = N'salespropos', @level1type = N'TABLE', @level1name = N'general_settings';

