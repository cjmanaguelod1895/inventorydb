CREATE TABLE [salespropos].[hrm_settings] (
    [id]         BIGINT         IDENTITY (2, 1) NOT NULL,
    [checkin]    NVARCHAR (191) NOT NULL,
    [checkout]   NVARCHAR (191) NOT NULL,
    [created_at] DATETIME       DEFAULT (NULL) NULL,
    [updated_at] DATETIME       DEFAULT (NULL) NULL,
    CONSTRAINT [PK_hrm_settings_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'salespropos.hrm_settings', @level0type = N'SCHEMA', @level0name = N'salespropos', @level1type = N'TABLE', @level1name = N'hrm_settings';

