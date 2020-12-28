	CREATE PROCEDURE [dbo].[sp_CityMunicipality] 
	@MunicipalityId int,
	@PSGCCode varchar(255),
	@CityMunDescription text,
	@RegDescription varchar(255),
	@ProvinceCode varchar(255),
	@CityMunCode varchar(255),
	@OperationType int AS BEGIN TRAN 

IF(@OperationType = 0) --Select
	BEGIN
SELECT
	*
FROM
	CityMunicipality

END 

ELSE IF(@OperationType = 1) --Select Specific Record
	BEGIN
SELECT
	*
FROM
	CityMunicipality
WHERE
MunicipalityId = @MunicipalityId

END 
  
ELSE IF(@OperationType = 2) --Insert
	BEGIN

INSERT INTO
	CityMunicipality([PSGCCode],[CityMunDescription],[RegDescription],[ProvinceCode],[CityMunCode])
VALUES(@PSGCCode, @CityMunDescription, @RegDescription, @ProvinceCode ,@CityMunCode)
SELECT
	*
FROM
	CityMunicipality
WHERE
	MunicipalityId = @MunicipalityId
END 
ELSE IF(@OperationType = 3) --Update
	BEGIN IF (@MunicipalityId = 0) BEGIN ROLLBACK RAISERROR (N'Invalid City Municipality. !!!~', 16, 1);RETURN END
UPDATE
	CityMunicipality
SET
    [PSGCCode] = @PSGCCode,
	[CityMunDescription]= @CityMunDescription,
	[RegDescription] = @RegDescription,
	[ProvinceCode] = @ProvinceCode,
	[CityMunCode] = @CityMunCode
WHERE
	MunicipalityId = @MunicipalityId
SELECT
	*
FROM
	CityMunicipality
WHERE
	MunicipalityId = @MunicipalityId
  
END 
ELSE IF(@OperationType = 4) --Delete
	BEGIN IF (@MunicipalityId = 0) BEGIN ROLLBACK RAISERROR (N'Invalid City and Municipality. !!!~', 16, 1);RETURN END
DELETE FROM
	CityMunicipality
	WHERE
	MunicipalityId = @MunicipalityId 
END 
COMMIT TRAN