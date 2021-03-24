	CREATE PROCEDURE [salespropos].[sp_UnitOfMeasures] 
	@Id int,
	@Unit_code nvarchar(191),
	@Unit_name nvarchar(191),
	@Base_unit int,
	@Operator nvarchar(191),
	@Operation_value float,
	@Is_active smallint,
	@Created_at datetime,
	@Updated_at datetime,
	@OperationType int AS BEGIN TRAN 
	DECLARE @NewId as BigInt

IF(@OperationType = 0) --Select
	BEGIN
SELECT * FROM units order by created_at DESC

END 

ELSE IF(@OperationType = 1) --Select Specific Record
	BEGIN
SELECT * FROM units 
WHERE
id = @Id

END 
  
ELSE IF(@OperationType = 2) --Insert
	BEGIN

INSERT INTO
	units(
           [unit_code]
		   ,[unit_name]
		   ,[base_unit]
		   ,[operator]
		   ,[operation_value]
           ,[is_active]
           ,[created_at])
VALUES(@Unit_code, @Unit_name , @Base_unit, @Operator, @Operation_value, 1, @Created_at)

SET @NewId = SCOPE_IDENTITY();

SELECT
	*
FROM
	units
WHERE
	id = @NewId
  
END 
ELSE IF(@OperationType = 3) --Update
	BEGIN IF (@Id = 0) BEGIN ROLLBACK RAISERROR (N'Invalid Unit of Measure. !!!~', 16, 1);RETURN END
UPDATE
	units
SET
            [unit_code] = @Unit_code
		   ,[unit_name] = @Unit_name
		   ,[base_unit] = @Base_unit
		   ,[operator] = @Operator
		   ,[operation_value] = @Operation_value
           ,[is_active] = @Is_active
           ,[updated_at] = @Updated_at
WHERE
	id = @Id
SELECT
	*
FROM
	units
WHERE
	id = @Id 
  
END 
ELSE IF(@OperationType = 4) --Delete
	BEGIN IF (@Id = 0) BEGIN ROLLBACK RAISERROR (N'Invalid Unit of Measure. !!!~', 16, 1);RETURN END
DELETE FROM
	units
	WHERE
	id = @Id 
END 

COMMIT TRAN