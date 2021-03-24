	CREATE PROCEDURE [salespropos].[sp_Brand] 
	@Id int,
	@Title nvarchar(191),
	@Image nvarchar(191),
	@Is_active smallint,
	@Created_at datetime,
	@Updated_at datetime,
	@OperationType int AS BEGIN TRAN 
	DECLARE @NewId as BigInt

IF(@OperationType = 0) --Select
	BEGIN
SELECT * FROM brands order by created_at DESC

END 

ELSE IF(@OperationType = 1) --Select Specific Record
	BEGIN
SELECT * FROM brands 
WHERE
id = @Id

END 
  
ELSE IF(@OperationType = 2) --Insert
	BEGIN

INSERT INTO
	brands(
           [title]
		   ,[image]
           ,[is_active]
           ,[created_at])
VALUES(@Title, @Image , 1, @Created_at)

SET @NewId = SCOPE_IDENTITY();

SELECT
	*
FROM
	brands
WHERE
	id = @NewId
  
END 
ELSE IF(@OperationType = 3) --Update
	BEGIN IF (@Id = 0) BEGIN ROLLBACK RAISERROR (N'Invalid Brand. !!!~', 16, 1);RETURN END
UPDATE
	brands
SET
            [title] = @Title
		   ,[image] =@Image
           ,[is_active] = @Is_active
           ,[updated_at] = @Updated_at
WHERE
	id = @Id
SELECT
	*
FROM
	brands
WHERE
	id = @Id 
  
END 
ELSE IF(@OperationType = 4) --Delete
	BEGIN IF (@Id = 0) BEGIN ROLLBACK RAISERROR (N'Invalid Brand. !!!~', 16, 1);RETURN END
DELETE FROM
	brands
	WHERE
	id = @Id 
END 

COMMIT TRAN