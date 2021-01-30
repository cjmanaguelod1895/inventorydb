CREATE TABLE [salespropos].[attendances] (
    [id]          BIGINT         IDENTITY (7, 1) NOT NULL,
    [date]        DATE           NOT NULL,
    [employee_id] INT            NOT NULL,
    [user_id]     INT            NOT NULL,
    [checkin]     NVARCHAR (191) NOT NULL,
    [checkout]    NVARCHAR (191) NOT NULL,
    [status]      INT            NOT NULL,
    [note]        NVARCHAR (MAX) DEFAULT (NULL) NULL,
    [created_at]  DATETIME       DEFAULT (NULL) NULL,
    [updated_at]  DATETIME       DEFAULT (NULL) NULL,
    CONSTRAINT [PK_attendances_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'salespropos.attendances', @level0type = N'SCHEMA', @level0name = N'salespropos', @level1type = N'TABLE', @level1name = N'attendances';

