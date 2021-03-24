	CREATE PROCEDURE [salespropos].[sp_CustomerGroup] 
	@Id int,
	@Name nvarchar(191),
	@Percentage nvarchar(191),
	@Is_active smallint,
	@Created_at datetime,
	@Updated_at datetime,
	@OperationType int AS BEGIN TRAN 

IF(@OperationType = 0) --Select
	BEGIN
SELECT * FROM customer_groups ORDER BY name ASC

END 

ELSE IF(@OperationType = 1) --Select Specific Record
	BEGIN
SELECT * FROM customer_groups 
WHERE
id = @Id

END 
  
ELSE IF(@OperationType = 2) --Insert
	BEGIN

INSERT INTO
	customer_groups(
           [name]
		   ,[percentage]
           ,[is_active]
           ,[created_at])
VALUES(@Name, @Percentage , 1, @Created_at)
SELECT
	*
FROM
	customer_groups
WHERE
	id = @Id 
  
END 
ELSE IF(@OperationType = 3) --Update
	BEGIN IF (@Id = 0) BEGIN ROLLBACK RAISERROR (N'Invalid Customer Group. !!!~', 16, 1);RETURN END
UPDATE
	customer_groups
SET
            [name] = @Name
		   ,[percentage] =@Percentage
           ,[is_active] = @Is_active
           ,[updated_at] = @Updated_at
WHERE
	id = @Id
SELECT
	*
FROM
	customer_groups
WHERE
	id = @Id 
  
END 
ELSE IF(@OperationType = 4) --Delete
	BEGIN IF (@Id = 0) BEGIN ROLLBACK RAISERROR (N'Invalid Customer Groups. !!!~', 16, 1);RETURN END
DELETE FROM
	customer_groups
	WHERE
	id = @Id 
END 

COMMIT TRAN