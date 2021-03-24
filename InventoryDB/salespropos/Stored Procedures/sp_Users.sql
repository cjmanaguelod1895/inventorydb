	CREATE PROCEDURE [salespropos].[sp_Users]
	@Id int,
	@Name nvarchar(191),
	@Username nvarchar(191),
	@Email nvarchar(191),
	@Password nvarchar(191),
	@Phone nvarchar(191),
	@Company_name nvarchar(191),
	@Role_id int,
	@Role nvarchar(191),
	@Biller_id int,
	@Warehouse_id int,
	@Is_active smallint,
    @Is_deleted smallint,
	@Created_at datetime,
	@Updated_at datetime,
	@Last_login_date datetime,
	@OperationType int 
	AS 
	
	BEGIN 
	
	TRAN 

   DECLARE @NewId as BigInt

IF(@OperationType = 0) --Select
	BEGIN

SELECT * , u.id as [id], u.name as [name] ,  r.name as [role] , u.is_active as [is_active] FROM [salespropos].users u
INNER JOIN [salespropos].roles r ON u.role_id = r.id ORDER BY u.created_at DESC

END 

ELSE IF(@OperationType = 1) --Select Specific Record
	BEGIN
SELECT * , u.id as [id], u.name as [name], r.name as [role] , u.is_active as [is_active] FROM [salespropos].users u
INNER JOIN [salespropos].roles r ON u.role_id = r.id WHERE u.id = @Id
END 
  
ELSE IF(@OperationType = 2) --Insert
BEGIN
INSERT INTO
	users(
	        [name]
		   ,[username]
           ,[email]
           ,[password]
           ,[phone]
           ,[company_name]
           ,[role_id]
           ,[biller_id]
           ,[warehouse_id]
           ,[is_active]
           ,[is_deleted]
           ,[created_at])
VALUES(@Name, @Username, @Email, @Password, @Phone, @Company_name, @Role_id, @Biller_id, @Warehouse_id, @Is_active, @Is_deleted, @Created_at)

SET @NewId = SCOPE_IDENTITY();


SELECT * FROM users where id = @NewId



END 
ELSE IF(@OperationType = 3) --Update
	BEGIN IF (@Id = 0) BEGIN ROLLBACK RAISERROR (N'Invalid User. !!!~', 16, 1);RETURN END
UPDATE
	users
SET
	[name] = @Name,
	[username] = @Username,
	[email] = @Email,
	[password] = @Password,
	[phone] = @Phone,
	[company_name] = @Company_name,
	[role_id] = @Role_id,
	[biller_id] = @Biller_id,
	[warehouse_id] = @Warehouse_id,
	[is_active] = @Is_active,
	[is_deleted] = @Is_deleted,
	[updated_at] = @Updated_at
WHERE
	id = @Id
SELECT
*
FROM
	users
WHERE
	id = @Id 
  
END 
ELSE IF(@OperationType = 4) --Delete
	BEGIN IF (@Id = 0) BEGIN ROLLBACK RAISERROR (N'Invalid User. !!!~', 16, 1);RETURN END
DELETE FROM
	users
	WHERE
	id = @Id 
END 
ELSE IF(@OperationType = 5) --Login 

SELECT * , u.id as [id], u.name as [name] ,  r.name as [role] FROM [salespropos].users u
INNER JOIN [salespropos].roles r ON u.role_id = r.id WHERE username = @Username and Password = @Password

UPDATE
	users
SET
	[Last_login_date] = @Last_login_date
WHERE
	username = @username

COMMIT TRAN