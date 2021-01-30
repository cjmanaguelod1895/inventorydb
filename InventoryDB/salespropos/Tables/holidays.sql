CREATE TABLE [salespropos].[holidays] (
    [id]          BIGINT         IDENTITY (12, 1) NOT NULL,
    [user_id]     INT            NOT NULL,
    [from_date]   DATE           NOT NULL,
    [to_date]     DATE           NOT NULL,
    [note]        NVARCHAR (MAX) DEFAULT (NULL) NULL,
    [is_approved] SMALLINT       NOT NULL,
    [created_at]  DATETIME       DEFAULT (NULL) NULL,
    [updated_at]  DATETIME       DEFAULT (NULL) NULL,
    CONSTRAINT [PK_holidays_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'salespropos.holidays', @level0type = N'SCHEMA', @level0name = N'salespropos', @level1type = N'TABLE', @level1name = N'holidays';

