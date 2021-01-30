CREATE TABLE [salespropos].[deliveries] (
    [id]           BIGINT         IDENTITY (5, 1) NOT NULL,
    [reference_no] NVARCHAR (191) NOT NULL,
    [sale_id]      INT            NOT NULL,
    [user_id]      INT            NOT NULL,
    [address]      NVARCHAR (MAX) NOT NULL,
    [delivered_by] NVARCHAR (191) DEFAULT (NULL) NULL,
    [recieved_by]  NVARCHAR (191) DEFAULT (NULL) NULL,
    [file]         NVARCHAR (191) DEFAULT (NULL) NULL,
    [note]         NVARCHAR (191) DEFAULT (NULL) NULL,
    [status]       NVARCHAR (191) NOT NULL,
    [created_at]   DATETIME       DEFAULT (NULL) NULL,
    [updated_at]   DATETIME       DEFAULT (NULL) NULL,
    CONSTRAINT [PK_deliveries_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'salespropos.deliveries', @level0type = N'SCHEMA', @level0name = N'salespropos', @level1type = N'TABLE', @level1name = N'deliveries';

