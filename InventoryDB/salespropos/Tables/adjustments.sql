CREATE TABLE [salespropos].[adjustments] (
    [id]           BIGINT         IDENTITY (1, 1) NOT NULL,
    [reference_no] NVARCHAR (191) NOT NULL,
    [warehouse_id] INT            NOT NULL,
    [document]     NVARCHAR (191) DEFAULT (NULL) NULL,
    [total_qty]    FLOAT (53)     NOT NULL,
    [item]         INT            NOT NULL,
    [note]         NVARCHAR (MAX) DEFAULT (NULL) NULL,
    [created_at]   DATETIME       DEFAULT (NULL) NULL,
    [updated_at]   DATETIME       DEFAULT (NULL) NULL,
    CONSTRAINT [PK_adjustments_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'salespropos.adjustments', @level0type = N'SCHEMA', @level0name = N'salespropos', @level1type = N'TABLE', @level1name = N'adjustments';

