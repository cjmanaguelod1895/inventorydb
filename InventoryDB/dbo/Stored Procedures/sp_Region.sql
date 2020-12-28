	CREATE PROCEDURE [dbo].[sp_Region] 
	@RegionId int,
	@PSGCCode varchar(255),
	@RegDesc text,
	@RegCode varchar(255),
	@OperationType int AS BEGIN TRAN 

IF(@OperationType = 0) --Select
	BEGIN
SELECT
	*
FROM
	Region

END 

ELSE IF(@OperationType = 1) --Select Specific Record
	BEGIN
SELECT
	*
FROM
	Region
WHERE
RegionId = @RegionId

END 
  
ELSE IF(@OperationType = 2) --Insert
	BEGIN

INSERT INTO
Region ([PSGCCode],[RegDesc],[RegCode])
VALUES(@PSGCCode, @RegDesc, @RegCode)
SELECT
	*
FROM
	Region
WHERE
	RegionId = @RegionId

END 
ELSE IF(@OperationType = 3) --Update
	BEGIN IF (@RegionId = 0) BEGIN ROLLBACK RAISERROR (N'Invalid Region. !!!~', 16, 1);RETURN END
UPDATE
	Region
SET
    [PSGCCode] = @PSGCCode,
	[RegCode] = @RegCode
WHERE
	RegionId = @RegionId
SELECT
	*
FROM
	Region
WHERE
	RegionId = @RegionId
  
END 
ELSE IF(@OperationType = 4) --Delete
	BEGIN IF (@RegionId = 0) BEGIN ROLLBACK RAISERROR (N'Invalid Region. !!!~', 16, 1);RETURN END
DELETE FROM
	Region
	WHERE
	RegionId = @RegionId
END 
COMMIT TRAN