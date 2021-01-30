CREATE TABLE [salespropos].[warehouses] (
    [id]         BIGINT         IDENTITY (7, 1) NOT NULL,
    [name]       NVARCHAR (191) NOT NULL,
    [phone]      NVARCHAR (191) DEFAULT (NULL) NULL,
    [email]      NVARCHAR (191) DEFAULT (NULL) NULL,
    [address]    NVARCHAR (MAX) NOT NULL,
    [is_active]  SMALLINT       DEFAULT (NULL) NULL,
    [created_at] DATETIME       DEFAULT (NULL) NULL,
    [updated_at] DATETIME       DEFAULT (NULL) NULL,
    CONSTRAINT [PK_warehouses_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'salespropos.warehouses', @level0type = N'SCHEMA', @level0name = N'salespropos', @level1type = N'TABLE', @level1name = N'warehouses';

