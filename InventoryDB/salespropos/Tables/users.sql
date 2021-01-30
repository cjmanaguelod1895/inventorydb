CREATE TABLE [salespropos].[users] (
    [id]             BIGINT         IDENTITY (27, 1) NOT NULL,
    [name]           NVARCHAR (191) NOT NULL,
    [email]          NVARCHAR (191) NOT NULL,
    [password]       NVARCHAR (191) NOT NULL,
    [remember_token] NVARCHAR (100) DEFAULT (NULL) NULL,
    [phone]          NVARCHAR (191) NOT NULL,
    [company_name]   NVARCHAR (191) DEFAULT (NULL) NULL,
    [role_id]        INT            NOT NULL,
    [biller_id]      INT            DEFAULT (NULL) NULL,
    [warehouse_id]   INT            DEFAULT (NULL) NULL,
    [is_active]      SMALLINT       NOT NULL,
    [is_deleted]     SMALLINT       NOT NULL,
    [created_at]     DATETIME       DEFAULT (NULL) NULL,
    [updated_at]     DATETIME       DEFAULT (NULL) NULL,
    CONSTRAINT [PK_users_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'salespropos.users', @level0type = N'SCHEMA', @level0name = N'salespropos', @level1type = N'TABLE', @level1name = N'users';

