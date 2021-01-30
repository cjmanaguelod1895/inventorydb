CREATE TABLE [salespropos].[failed_jobs] (
    [id]         NUMERIC (20)   IDENTITY (1, 1) NOT NULL,
    [connection] NVARCHAR (MAX) NOT NULL,
    [queue]      NVARCHAR (MAX) NOT NULL,
    [payload]    NVARCHAR (MAX) NOT NULL,
    [exception]  NVARCHAR (MAX) NOT NULL,
    [failed_at]  DATETIME       DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_failed_jobs_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'salespropos.failed_jobs', @level0type = N'SCHEMA', @level0name = N'salespropos', @level1type = N'TABLE', @level1name = N'failed_jobs';

