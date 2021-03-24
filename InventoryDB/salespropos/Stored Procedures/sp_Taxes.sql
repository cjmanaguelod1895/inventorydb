	CREATE PROCEDURE [salespropos].[sp_Taxes] 
	@Id int,
	@Name nvarchar(191),
	@Rate float,
	@Is_active smallint,
	@Created_at datetime,
	@Updated_at datetime,
	@OperationType int AS BEGIN TRAN 

IF(@OperationType = 0) --Select
	BEGIN
SELECT * FROM taxes order by created_at DESC

END 

ELSE IF(@OperationType = 1) --Select Specific Record
	BEGIN
SELECT * FROM taxes 
WHERE
id = @Id

END 
  
ELSE IF(@OperationType = 2) --Insert
	BEGIN

INSERT INTO
	taxes(
           [name]
		   ,[rate]
           ,[is_active]
           ,[created_at])
VALUES(@Name, @Rate, 1, @Created_at)
SELECT
	*
FROM
	taxes
WHERE
	id = @Id 
  
END 
ELSE IF(@OperationType = 3) --Update
	BEGIN IF (@Id = 0) BEGIN ROLLBACK RAISERROR (N'Invalid Tax. !!!~', 16, 1);RETURN END
UPDATE
	taxes
SET
            [name] = @Name
		   ,[rate] = @Rate
           ,[is_active] = @Is_active
           ,[updated_at] = @Updated_at
WHERE
	id = @Id
SELECT
	*
FROM
	taxes
WHERE
	id = @Id 
  
END 
ELSE IF(@OperationType = 4) --Delete
	BEGIN IF (@Id = 0) BEGIN ROLLBACK RAISERROR (N'Invalid Tax. !!!~', 16, 1);RETURN END
DELETE FROM
	taxes
	WHERE
	id = @Id 
END 

COMMIT TRAN