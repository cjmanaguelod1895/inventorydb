CREATE TABLE [salespropos].[role_has_permissions] (
    [permission_id] BIGINT NOT NULL,
    [role_id]       BIGINT NOT NULL,
    CONSTRAINT [PK_role_has_permissions_permission_id] PRIMARY KEY CLUSTERED ([permission_id] ASC, [role_id] ASC),
    CONSTRAINT [role_has_permissions$role_has_permissions_permission_id_foreign] FOREIGN KEY ([permission_id]) REFERENCES [salespropos].[permissions] ([id]) ON DELETE CASCADE,
    CONSTRAINT [role_has_permissions$role_has_permissions_role_id_foreign] FOREIGN KEY ([role_id]) REFERENCES [salespropos].[roles] ([id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [role_has_permissions_role_id_foreign]
    ON [salespropos].[role_has_permissions]([role_id] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'salespropos.role_has_permissions', @level0type = N'SCHEMA', @level0name = N'salespropos', @level1type = N'TABLE', @level1name = N'role_has_permissions';

