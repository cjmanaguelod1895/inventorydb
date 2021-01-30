CREATE TABLE [salespropos].[employees] (
    [id]            BIGINT         IDENTITY (6, 1) NOT NULL,
    [name]          NVARCHAR (191) NOT NULL,
    [email]         NVARCHAR (191) NOT NULL,
    [phone_number]  NVARCHAR (191) NOT NULL,
    [department_id] INT            NOT NULL,
    [user_id]       INT            DEFAULT (NULL) NULL,
    [image]         NVARCHAR (191) DEFAULT (NULL) NULL,
    [address]       NVARCHAR (191) DEFAULT (NULL) NULL,
    [city]          NVARCHAR (191) DEFAULT (NULL) NULL,
    [country]       NVARCHAR (191) DEFAULT (NULL) NULL,
    [is_active]     SMALLINT       NOT NULL,
    [created_at]    DATETIME       DEFAULT (NULL) NULL,
    [updated_at]    DATETIME       DEFAULT (NULL) NULL,
    CONSTRAINT [PK_employees_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'salespropos.employees', @level0type = N'SCHEMA', @level0name = N'salespropos', @level1type = N'TABLE', @level1name = N'employees';

