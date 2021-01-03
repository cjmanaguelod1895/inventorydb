	CREATE PROCEDURE [dbo].[sp_Brand] 
	@BrandId int,
	@BrandName nvarchar(50),
	@BrandCode nvarchar(5),
    @BrandDescription nvarchar(100),
	@OperationType int AS BEGIN TRAN 

IF(@OperationType = 0) --Select
	BEGIN
SELECT
	*
FROM
	Brand

END 

ELSE IF(@OperationType = 1) --Select Specific Record
	BEGIN
SELECT
	*
FROM
	Brand
WHERE
BrandId = @BrandId

END 
  
ELSE IF(@OperationType = 2) --Insert
	BEGIN

INSERT INTO
	Brand([BrandName],[BrandCode],[BrandDescription])
VALUES(@BrandName, @BrandCode, @BrandDescription)
SELECT
	*
FROM
	Brand
WHERE
	BrandId = @BrandId
  
END 
ELSE IF(@OperationType = 3) --Update
	BEGIN IF (@BrandId = 0) BEGIN ROLLBACK RAISERROR (N'Invalid Brand. !!!~', 16, 1);RETURN END
UPDATE
	Brand
SET
    [BrandName] = @BrandName,
	[BrandCode]= @BrandCode,
	[BrandDescription] = @BrandDescription
WHERE
	BrandId = @BrandId
SELECT
	*
FROM
	Brand
WHERE
	BrandId = @BrandId
  
END 
ELSE IF(@OperationType = 4) --Delete
	BEGIN IF (@BrandId = 0) BEGIN ROLLBACK RAISERROR (N'Invalid Brand. !!!~', 16, 1);RETURN END
DELETE FROM
	Brand
	WHERE
	BrandId = @BrandId
END 
COMMIT TRAN