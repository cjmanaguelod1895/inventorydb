	CREATE PROCEDURE [salespropos].[sp_WareHouse] 
	@Id int,
	@Name nvarchar(191),
	@Email nvarchar(191),
	@Phone nvarchar(191),
	@Address nvarchar(191),
	@Is_active smallint,
	@Created_at datetime,
	@Updated_at datetime,
	@OperationType int AS BEGIN TRAN 

IF(@OperationType = 0) --Select
	BEGIN
SELECT * FROM warehouses order by created_at DESC

END 

ELSE IF(@OperationType = 1) --Select Specific Record
	BEGIN
SELECT * FROM warehouses 
WHERE
id = @Id

END 
  
ELSE IF(@OperationType = 2) --Insert
	BEGIN

INSERT INTO
	warehouses(
           [name]
           ,[email]
           ,[phone]
           ,[address]
           ,[is_active]
           ,[created_at])
VALUES(@Name, @Email, @Phone, @Address, 1,  @Created_at)
SELECT
	*
FROM
	warehouses
WHERE
	id = @Id 
  
END 
ELSE IF(@OperationType = 3) --Update
	BEGIN IF (@Id = 0) BEGIN ROLLBACK RAISERROR (N'Invalid WareHouse. !!!~', 16, 1);RETURN END
UPDATE
	warehouses
SET
            [name] = @Name
           ,[email] = @Email
           ,[phone] = @Phone
           ,[address] = @Address
           ,[is_active] = @Is_active
           ,[updated_at] = @Updated_at
WHERE
	id = @Id
SELECT
	*
FROM
	warehouses
WHERE
	id = @Id 
  
END 
ELSE IF(@OperationType = 4) --Delete
	BEGIN IF (@Id = 0) BEGIN ROLLBACK RAISERROR (N'Invalid WareHouse. !!!~', 16, 1);RETURN END
DELETE FROM
	warehouses
	WHERE
	id = @Id 
END 

COMMIT TRAN