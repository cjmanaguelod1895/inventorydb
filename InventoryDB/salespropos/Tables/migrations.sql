CREATE TABLE [salespropos].[migrations] (
    [id]        BIGINT         IDENTITY (120, 1) NOT NULL,
    [migration] NVARCHAR (191) NOT NULL,
    [batch]     INT            NOT NULL,
    CONSTRAINT [PK_migrations_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'salespropos.migrations', @level0type = N'SCHEMA', @level0name = N'salespropos', @level1type = N'TABLE', @level1name = N'migrations';

