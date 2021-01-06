CREATE TABLE [dbo].[Goals] (
    [GoalId]    INT    IDENTITY (1, 1) NOT NULL,
    [Income]    BIGINT NULL,
    [Expense]   BIGINT NULL,
    [Sales]     BIGINT NULL,
    [NetIncome] BIGINT NULL,
    CONSTRAINT [PK_Goals] PRIMARY KEY CLUSTERED ([GoalId] ASC)
);

