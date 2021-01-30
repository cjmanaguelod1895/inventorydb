CREATE TABLE [salespropos].[units] (
    [id]              BIGINT         IDENTITY (11, 1) NOT NULL,
    [unit_code]       NVARCHAR (191) NOT NULL,
    [unit_name]       NVARCHAR (191) NOT NULL,
    [base_unit]       INT            DEFAULT (NULL) NULL,
    [operator]        NVARCHAR (191) DEFAULT (NULL) NULL,
    [operation_value] FLOAT (53)     DEFAULT (NULL) NULL,
    [is_active]       SMALLINT       DEFAULT (NULL) NULL,
    [created_at]      DATETIME       DEFAULT (NULL) NULL,
    [updated_at]      DATETIME       DEFAULT (NULL) NULL,
    CONSTRAINT [PK_units_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'salespropos.units', @level0type = N'SCHEMA', @level0name = N'salespropos', @level1type = N'TABLE', @level1name = N'units';

