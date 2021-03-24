CREATE TABLE [salespropos].[users] (
    [id]              BIGINT         IDENTITY (27, 1) NOT NULL,
    [name]            NVARCHAR (191) NOT NULL,
    [username]        NVARCHAR (191) NULL,
    [email]           NVARCHAR (191) NOT NULL,
    [password]        NVARCHAR (191) NOT NULL,
    [remember_token]  NVARCHAR (100) CONSTRAINT [DF__users__remember___0A338187] DEFAULT (NULL) NULL,
    [phone]           NVARCHAR (191) NOT NULL,
    [company_name]    NVARCHAR (191) CONSTRAINT [DF__users__company_n__0B27A5C0] DEFAULT (NULL) NULL,
    [role_id]         INT            NOT NULL,
    [biller_id]       INT            CONSTRAINT [DF__users__biller_id__0C1BC9F9] DEFAULT (NULL) NULL,
    [warehouse_id]    INT            CONSTRAINT [DF__users__warehouse__0D0FEE32] DEFAULT (NULL) NULL,
    [is_active]       SMALLINT       NOT NULL,
    [is_deleted]      SMALLINT       NOT NULL,
    [created_at]      DATETIME       CONSTRAINT [DF__users__created_a__0E04126B] DEFAULT (NULL) NULL,
    [updated_at]      DATETIME       CONSTRAINT [DF__users__updated_a__0EF836A4] DEFAULT (NULL) NULL,
    [last_login_date] DATETIME       NULL,
    CONSTRAINT [PK_users_id] PRIMARY KEY CLUSTERED ([id] ASC)
);




GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'salespropos.users', @level0type = N'SCHEMA', @level0name = N'salespropos', @level1type = N'TABLE', @level1name = N'users';

