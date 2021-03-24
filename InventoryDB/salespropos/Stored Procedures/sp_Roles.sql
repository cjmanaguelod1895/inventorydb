	CREATE PROCEDURE [salespropos].[sp_Roles] 
	@Id int,
	@Name nvarchar(191),
	@Description nvarchar(191),
	@Guard_name nvarchar(191),
	@Is_active smallint,
	@Created_at datetime,
	@Updated_at datetime,
	@OperationType int AS BEGIN TRAN 

IF(@OperationType = 0) --Select
	BEGIN
SELECT * FROM roles order by id

END 

ELSE IF(@OperationType = 1) --Select Specific Record
	BEGIN
SELECT * FROM roles 
WHERE
id = @Id

END 
  
ELSE IF(@OperationType = 2) --Insert
	BEGIN

INSERT INTO
	roles(
           [name]
		   ,[description]
		   ,[guard_name]
           ,[is_active]
           ,[created_at])
VALUES(@Name, @Description, @Guard_name, 1, @Created_at)
SELECT
	*
FROM
	roles
WHERE
	id = @Id 
  
END 
ELSE IF(@OperationType = 3) --Update
	BEGIN IF (@Id = 0) BEGIN ROLLBACK RAISERROR (N'Invalid Role. !!!~', 16, 1);RETURN END
UPDATE
	roles
SET
            [name] = @Name
		   ,[description] = @Description
		   ,[guard_name] = @Guard_name
           ,[is_active] = @Is_active
           ,[updated_at] = @Updated_at
WHERE
	id = @Id
SELECT
	*
FROM
	roles
WHERE
	id = @Id 
  
END 
ELSE IF(@OperationType = 4) --Delete
	BEGIN IF (@Id = 0) BEGIN ROLLBACK RAISERROR (N'Invalid Role. !!!~', 16, 1);RETURN END
DELETE FROM
	roles
	WHERE
	id = @Id 
END 

COMMIT TRAN