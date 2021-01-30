CREATE TABLE [salespropos].[password_resets] (
    [email]      NVARCHAR (191) NOT NULL,
    [token]      NVARCHAR (191) NOT NULL,
    [created_at] DATETIME       DEFAULT (NULL) NULL
);


GO
CREATE NONCLUSTERED INDEX [password_resets_email_index]
    ON [salespropos].[password_resets]([email] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'salespropos.password_resets', @level0type = N'SCHEMA', @level0name = N'salespropos', @level1type = N'TABLE', @level1name = N'password_resets';

