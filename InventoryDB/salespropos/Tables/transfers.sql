CREATE TABLE [salespropos].[transfers] (
    [id]                BIGINT         IDENTITY (13, 1) NOT NULL,
    [reference_no]      NVARCHAR (191) NOT NULL,
    [user_id]           INT            NOT NULL,
    [status]            INT            NOT NULL,
    [from_warehouse_id] INT            NOT NULL,
    [to_warehouse_id]   INT            NOT NULL,
    [item]              INT            NOT NULL,
    [total_qty]         FLOAT (53)     NOT NULL,
    [total_tax]         FLOAT (53)     NOT NULL,
    [total_cost]        FLOAT (53)     NOT NULL,
    [shipping_cost]     FLOAT (53)     DEFAULT (NULL) NULL,
    [grand_total]       FLOAT (53)     NOT NULL,
    [document]          NVARCHAR (191) DEFAULT (NULL) NULL,
    [note]              NVARCHAR (MAX) DEFAULT (NULL) NULL,
    [created_at]        DATETIME       DEFAULT (NULL) NULL,
    [updated_at]        DATETIME       DEFAULT (NULL) NULL,
    CONSTRAINT [PK_transfers_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'salespropos.transfers', @level0type = N'SCHEMA', @level0name = N'salespropos', @level1type = N'TABLE', @level1name = N'transfers';

