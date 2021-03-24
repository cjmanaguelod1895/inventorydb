CREATE TABLE [salespropos].[categories] (
    [id]         BIGINT         IDENTITY (20, 1) NOT NULL,
    [name]       NVARCHAR (191) NOT NULL,
    [image]      NVARCHAR (191) DEFAULT (NULL) NULL,
    [parent_id]  INT            DEFAULT (NULL) NULL,
    [is_active]  SMALLINT       DEFAULT (NULL) NULL,
    [created_at] DATETIME       DEFAULT (NULL) NULL,
    [updated_at] DATETIME       DEFAULT (NULL) NULL,
    CONSTRAINT [PK_categories_id] PRIMARY KEY CLUSTERED ([id] ASC)
);




GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'salespropos.categories', @level0type = N'SCHEMA', @level0name = N'salespropos', @level1type = N'TABLE', @level1name = N'categories';

