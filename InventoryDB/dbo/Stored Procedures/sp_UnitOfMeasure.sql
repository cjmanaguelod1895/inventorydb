	CREATE PROCEDURE [dbo].[sp_UnitOfMeasure] 
	@UnitID int,
	@UnitName nvarchar(20),
	@UnitCode nvarchar(5),
	@UnitType int,
	@UnitSub int,
	@OperationType int AS BEGIN TRAN 

IF(@OperationType = 0) --Select
	BEGIN
SELECT
	*
FROM
	UnitOfMeasure

END 

ELSE IF(@OperationType = 1) --Select Specific Record
	BEGIN
SELECT
	*
FROM
	UnitOfMeasure
WHERE
UnitID = @UnitID

END 
  
ELSE IF(@OperationType = 2) --Insert
	BEGIN

INSERT INTO
	UnitOfMeasure([UnitName],[UnitCode],[UnitType],[UnitSub])
VALUES(@UnitName, @UnitCode, @UnitType, @UnitSub)
SELECT
	*
FROM
	UnitOfMeasure
WHERE
	UnitID = @UnitID 
  
END 
ELSE IF(@OperationType = 3) --Update
	BEGIN IF (@UnitID = 0) BEGIN ROLLBACK RAISERROR (N'Invalid Unit of Measure. !!!~', 16, 1);RETURN END
UPDATE
	UnitOfMeasure
SET
    [UnitName] = @UnitName,
	[UnitCode]= @UnitCode,
	[UnitType] = @UnitType,
	[UnitSub] = @UnitSub
WHERE
	UnitID = @UnitID
SELECT
	*
FROM
	UnitOfMeasure
WHERE
	UnitID = @UnitID 
  
END 
ELSE IF(@OperationType = 4) --Delete
	BEGIN IF (@UnitID = 0) BEGIN ROLLBACK RAISERROR (N'Invalid Unit of Measure. !!!~', 16, 1);RETURN END
DELETE FROM
	UnitOfMeasure
	WHERE
	UnitID = @UnitID
END 
COMMIT TRAN