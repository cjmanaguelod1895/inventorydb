CREATE TABLE [salespropos].[customer_groups] (
    [id]         BIGINT         IDENTITY (6, 1) NOT NULL,
    [name]       NVARCHAR (191) NOT NULL,
    [percentage] NVARCHAR (191) NOT NULL,
    [is_active]  SMALLINT       DEFAULT (NULL) NULL,
    [created_at] DATETIME       DEFAULT (NULL) NULL,
    [updated_at] DATETIME       DEFAULT (NULL) NULL,
    CONSTRAINT [PK_customer_groups_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'salespropos.customer_groups', @level0type = N'SCHEMA', @level0name = N'salespropos', @level1type = N'TABLE', @level1name = N'customer_groups';

