CREATE TABLE [salespropos].[brands] (
    [id]         BIGINT         IDENTITY (8, 1) NOT NULL,
    [title]      NVARCHAR (191) NOT NULL,
    [image]      NVARCHAR (191) DEFAULT (NULL) NULL,
    [is_active]  SMALLINT       DEFAULT (NULL) NULL,
    [created_at] DATETIME       DEFAULT (NULL) NULL,
    [updated_at] DATETIME       DEFAULT (NULL) NULL,
    CONSTRAINT [PK_brands_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'salespropos.brands', @level0type = N'SCHEMA', @level0name = N'salespropos', @level1type = N'TABLE', @level1name = N'brands';

