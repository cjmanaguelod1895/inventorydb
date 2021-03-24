	CREATE PROCEDURE [salespropos].[sp_Currency] 
	@Id int,
	@Name nvarchar(191),
	@Code nvarchar(191),
	@Exchange_Rate float,
	@Created_at datetime,
	@Updated_at datetime,
	@OperationType int AS BEGIN TRAN 
	DECLARE @NewId as BigInt

IF(@OperationType = 0) --Select
	BEGIN
SELECT * FROM currencies order by created_at DESC

END 

ELSE IF(@OperationType = 1) --Select Specific Record
	BEGIN
SELECT * FROM currencies 
WHERE
id = @Id

END 
  
ELSE IF(@OperationType = 2) --Insert
	BEGIN

INSERT INTO
	currencies(
           [name]
		   ,[code]
           ,[exchange_rate]
           ,[created_at])
VALUES(@Name, @Code, @Exchange_Rate, @Created_at)
SET @NewId = SCOPE_IDENTITY();

SELECT
	*
FROM
	currencies
WHERE
	id = @NewId
  
END 
ELSE IF(@OperationType = 3) --Update
	BEGIN IF (@Id = 0) BEGIN ROLLBACK RAISERROR (N'Invalid Currency. !!!~', 16, 1);RETURN END
UPDATE
	currencies
SET
            [name] = @Name
		   ,[code] = @Code
           ,[exchange_rate] = @Exchange_Rate
           ,[updated_at] = @Updated_at
WHERE
	id = @Id
SELECT
	*
FROM
	currencies
WHERE
	id = @Id 
  
END 
ELSE IF(@OperationType = 4) --Delete
	BEGIN IF (@Id = 0) BEGIN ROLLBACK RAISERROR (N'Invalid Currency. !!!~', 16, 1);RETURN END
DELETE FROM
	currencies
	WHERE
	id = @Id 
END 

COMMIT TRAN