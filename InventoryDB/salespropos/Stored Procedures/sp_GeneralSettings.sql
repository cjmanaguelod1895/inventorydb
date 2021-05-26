	CREATE PROCEDURE [salespropos].[sp_GeneralSettings] 
	@Site_Title nvarchar(191),
	@Site_Logo nvarchar(191),
	@Currency nvarchar(191),
	@Staff_Access nvarchar(191),
	@Date_Format nvarchar(191),
	@Developed_By nvarchar(191),
	@Invoice_Format nvarchar(191),
	@State int,
	@Theme nvarchar(191),
	@Created_at datetime,
	@Updated_at datetime,
	@OperationType int AS BEGIN TRAN 

	IF(@OperationType = 1) --Select Specific Record
	BEGIN
SELECT * FROM general_settings 
WHERE
id = 1

END 
ELSE IF(@OperationType = 3) --Update
UPDATE
	general_settings
SET
            [site_title] = @Site_Title
		   ,[site_logo] = @Site_Logo
           ,[currency] = @Currency
		   ,[staff_access] = @Staff_Access
           ,[date_format] = @Date_Format
           ,[developed_by] = @Developed_By
           ,[invoice_format] = @Invoice_Format
           ,[state] = @State
           ,[theme] = @Theme
		   ,[created_at] = @Created_at           
		   ,[updated_at] = @Updated_at
WHERE
	id = 1
SELECT
	*
FROM
	general_settings
WHERE
	id = 1 

COMMIT TRAN