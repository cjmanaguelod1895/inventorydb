	CREATE PROCEDURE [dbo].[sp_Barangay] 
	@BarangayId int,
	@BarangayCode varchar(255),
	@BarangayDescription text,
	@RegCode varchar(255),
	@ProvinceCode varchar(255),
	@CityMunicipalityCode varchar(255),
	@OperationType int AS BEGIN TRAN 

IF(@OperationType = 0) --Select
	BEGIN
SELECT
	*
FROM
	Brgy

END 

ELSE IF(@OperationType = 1) --Select Specific Record
	BEGIN
SELECT
	*
FROM
	Brgy
WHERE
BarangayId = @BarangayId

END 
  
ELSE IF(@OperationType = 2) --Insert
	BEGIN

INSERT INTO
	Brgy([BarangayCode],[BarangayDescription],[RegCode],[ProvinceCode],[CityMunicipalityCode])
VALUES(@BarangayCode, @BarangayDescription, @RegCode, @ProvinceCode ,@CityMunicipalityCode)
SELECT
	*
FROM
	Brgy
WHERE
	BarangayId = @BarangayId 
  
END 
ELSE IF(@OperationType = 3) --Update
	BEGIN IF (@BarangayId = 0) BEGIN ROLLBACK RAISERROR (N'Invalid Barangay. !!!~', 16, 1);RETURN END
UPDATE
	Brgy
SET
    [BarangayCode] = @BarangayCode,
	[BarangayDescription]= @BarangayDescription,
	[RegCode] = @RegCode,
	[ProvinceCode] = @ProvinceCode,
	[CityMunicipalityCode] = @CityMunicipalityCode
WHERE
	BarangayId = @BarangayId
SELECT
	*
FROM
	Brgy
WHERE
	BarangayId = @BarangayId
  
END 
ELSE IF(@OperationType = 4) --Delete
	BEGIN IF (@BarangayId = 0) BEGIN ROLLBACK RAISERROR (N'Invalid Barangay. !!!~', 16, 1);RETURN END
DELETE FROM
	Brgy
	WHERE
	BarangayId = @BarangayId 
END 
COMMIT TRAN