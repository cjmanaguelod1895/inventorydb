CREATE TABLE [salespropos].[taxes] (
    [id]         BIGINT         IDENTITY (5, 1) NOT NULL,
    [name]       NVARCHAR (191) NOT NULL,
    [rate]       FLOAT (53)     NOT NULL,
    [is_active]  SMALLINT       DEFAULT (NULL) NULL,
    [created_at] DATETIME       DEFAULT (NULL) NULL,
    [updated_at] DATETIME       DEFAULT (NULL) NULL,
    CONSTRAINT [PK_taxes_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'salespropos.taxes', @level0type = N'SCHEMA', @level0name = N'salespropos', @level1type = N'TABLE', @level1name = N'taxes';

