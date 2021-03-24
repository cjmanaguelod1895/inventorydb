	CREATE PROCEDURE [salespropos].[sp_Billers] 
	@Id int,
	@Name nvarchar(191),
	@Image nvarchar(191),
	@Company_Name nvarchar(191),
	@Vat_number nvarchar(191),
	@Email nvarchar(191),
	@Phone_number nvarchar(191),
	@Address nvarchar(191),
	@City nvarchar(191),
	@State nvarchar(191),
	@Postal_code nvarchar(191),
	@Country nvarchar(191),
	@Is_active smallint,
	@Created_at datetime,
	@Updated_at datetime,
	@OperationType int AS BEGIN TRAN 
	DECLARE @NewId as BigInt


IF(@OperationType = 0) --Select
	BEGIN
SELECT * FROM billers order by created_at DESC

END 

ELSE IF(@OperationType = 1) --Select Specific Record
	BEGIN
SELECT * FROM billers 
WHERE
id = @Id

END 
  
ELSE IF(@OperationType = 2) --Insert
	BEGIN

INSERT INTO
	billers(
            [name]
		   ,[image]
           ,[company_name]
		   ,[vat_number]
           ,[email]
           ,[phone_number]
           ,[address]
           ,[city]
           ,[state]
           ,[postal_code]
           ,[country]
           ,[is_active]
           ,[created_at])
VALUES(@Name, @Image, @Company_Name, @Vat_number, @Email, @Phone_number, @Address, @City, @State, @Postal_code, @Country, 1, @Created_at)

SET @NewId = SCOPE_IDENTITY();

SELECT
	*
FROM
	billers
WHERE
	id = @NewId
  
END 
ELSE IF(@OperationType = 3) --Update
	BEGIN IF (@Id = 0) BEGIN ROLLBACK RAISERROR (N'Invalid Biller. !!!~', 16, 1);RETURN END
UPDATE
	billers
SET
            [name] = @Name
		   ,[image] = @Image
           ,[company_name] = @Company_Name
		   ,[vat_number] = @Vat_number
           ,[email] = @Email
           ,[phone_number] = @Phone_number
           ,[address] = @Address
           ,[city] = @City
           ,[state] = @State
           ,[postal_code] = @Postal_code
           ,[country] = @Country
           ,[is_active] = @Is_active
           ,[updated_at] = @Updated_at
WHERE
	id = @Id
SELECT
	*
FROM
	billers
WHERE
	id = @Id 
  
END 
ELSE IF(@OperationType = 4) --Delete
	BEGIN IF (@Id = 0) BEGIN ROLLBACK RAISERROR (N'Invalid Biller. !!!~', 16, 1);RETURN END
DELETE FROM
	billers
	WHERE
	id = @Id 
END 

COMMIT TRAN