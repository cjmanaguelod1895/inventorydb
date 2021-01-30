CREATE TABLE [salespropos].[roles] (
    [id]          BIGINT         IDENTITY (6, 1) NOT NULL,
    [name]        NVARCHAR (191) NOT NULL,
    [description] NVARCHAR (MAX) DEFAULT (NULL) NULL,
    [guard_name]  NVARCHAR (191) DEFAULT (NULL) NULL,
    [is_active]   SMALLINT       NOT NULL,
    [created_at]  DATETIME       DEFAULT (NULL) NULL,
    [updated_at]  DATETIME       DEFAULT (NULL) NULL,
    CONSTRAINT [PK_roles_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'salespropos.roles', @level0type = N'SCHEMA', @level0name = N'salespropos', @level1type = N'TABLE', @level1name = N'roles';

