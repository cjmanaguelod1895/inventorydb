CREATE TABLE [salespropos].[notifications] (
    [id]              NCHAR (36)     NOT NULL,
    [type]            NVARCHAR (191) NOT NULL,
    [notifiable_type] NVARCHAR (191) NOT NULL,
    [notifiable_id]   NUMERIC (20)   NOT NULL,
    [data]            NVARCHAR (MAX) NOT NULL,
    [read_at]         DATETIME       DEFAULT (NULL) NULL,
    [created_at]      DATETIME       DEFAULT (NULL) NULL,
    [updated_at]      DATETIME       DEFAULT (NULL) NULL,
    CONSTRAINT [PK_notifications_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [notifications_notifiable_type_notifiable_id_index]
    ON [salespropos].[notifications]([notifiable_type] ASC, [notifiable_id] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'salespropos.notifications', @level0type = N'SCHEMA', @level0name = N'salespropos', @level1type = N'TABLE', @level1name = N'notifications';

