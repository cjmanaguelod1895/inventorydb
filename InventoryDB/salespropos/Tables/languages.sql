CREATE TABLE [salespropos].[languages] (
    [id]         BIGINT         IDENTITY (2, 1) NOT NULL,
    [code]       NVARCHAR (191) NOT NULL,
    [created_at] DATETIME       DEFAULT (NULL) NULL,
    [updated_at] DATETIME       DEFAULT (NULL) NULL,
    CONSTRAINT [PK_languages_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'salespropos.languages', @level0type = N'SCHEMA', @level0name = N'salespropos', @level1type = N'TABLE', @level1name = N'languages';

