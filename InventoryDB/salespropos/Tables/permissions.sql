CREATE TABLE [salespropos].[permissions] (
    [id]         BIGINT         IDENTITY (105, 1) NOT NULL,
    [name]       NVARCHAR (191) NOT NULL,
    [guard_name] NVARCHAR (191) NOT NULL,
    [created_at] DATETIME       DEFAULT (NULL) NULL,
    [updated_at] DATETIME       DEFAULT (NULL) NULL,
    CONSTRAINT [PK_permissions_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'salespropos.permissions', @level0type = N'SCHEMA', @level0name = N'salespropos', @level1type = N'TABLE', @level1name = N'permissions';

