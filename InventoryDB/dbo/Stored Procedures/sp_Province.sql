	CREATE PROCEDURE [dbo].[sp_Province] 
	@ProvinceId int,
	@PSGCCode varchar(255),
	@ProvinceDescription text,
	@RegCode varchar(255),
	@ProvinceCode varchar(255),
	@OperationType int AS BEGIN TRAN 

IF(@OperationType = 0) --Select
	BEGIN
SELECT
	*
FROM
	Province

END 

ELSE IF(@OperationType = 1) --Select Specific Record
	BEGIN
SELECT
	*
FROM
	Province
WHERE
ProvinceId = @ProvinceId

END 
  
ELSE IF(@OperationType = 2) --Insert
	BEGIN

INSERT INTO
Province ([PSGCCode],[ProvinceDescription],[RegCode],[ProvinceCode])
VALUES(@PSGCCode, @ProvinceDescription, @RegCode, @ProvinceCode)
SELECT
	*
FROM
	Province
WHERE
	ProvinceId = @ProvinceId
END 
ELSE IF(@OperationType = 3) --Update
	BEGIN IF (@ProvinceId = 0) BEGIN ROLLBACK RAISERROR (N'Invalid Province. !!!~', 16, 1);RETURN END
UPDATE
	Province
SET
    [PSGCCode] = @PSGCCode,
	[ProvinceDescription]= @ProvinceDescription,
	[RegCode] = @RegCode,
	[ProvinceCode] = @ProvinceCode
WHERE
	ProvinceId = @ProvinceId
SELECT
	*
FROM
	Province
WHERE
	ProvinceId = @ProvinceId
  
END 
ELSE IF(@OperationType = 4) --Delete
	BEGIN IF (@ProvinceId = 0) BEGIN ROLLBACK RAISERROR (N'Invalid Province. !!!~', 16, 1);RETURN END
DELETE FROM
	Province
	WHERE
	ProvinceId = @ProvinceId
END 
COMMIT TRAN