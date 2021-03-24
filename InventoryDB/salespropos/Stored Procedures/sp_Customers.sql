	CREATE PROCEDURE [salespropos].[sp_Customers] 
	@Id int,
	@Customer_group_id int,
	@User_id int,
	@Name nvarchar(191),
	@Password nvarchar(191),
	@Company_Name nvarchar(191),
	@Email nvarchar(191),
	@Phone_number nvarchar(191),
	@Tax_no nvarchar(191),
	@Address nvarchar(191),
	@City nvarchar(191),
	@State nvarchar(191),
	@Postal_code nvarchar(191),
	@Country nvarchar(191),
	@Deposit float,
	@Expense float,
	@Is_active smallint,
	@Created_at datetime,
	@Updated_at datetime,
	@OperationType int AS BEGIN TRAN 

	DECLARE @NewId as BigInt

IF(@OperationType = 0) --Select
	BEGIN
SELECT c.id, c.customer_group_id,  c.name , c.email, c.company_name, c.address, c.city, c.state, c.country, c.phone_number, c.postal_code, c.tax_no, c.is_active, c.created_at, c.updated_at,  cg.name as [customer_group_name] FROM [salespropos].customers c
INNER JOIN [salespropos].customer_groups cg ON c.customer_group_id = cg.id Order by c.created_at DESC

END 

ELSE IF(@OperationType = 1) --Select Specific Record
	BEGIN
SELECT c.id, c.customer_group_id,  c.name , c.email, c.company_name, c.address, c.city, c.state, c.country, c.phone_number, c.postal_code, c.tax_no, c.is_active, c.created_at, c.updated_at,  cg.name as [customer_group_name] FROM [salespropos].customers c
INNER JOIN [salespropos].customer_groups cg ON c.customer_group_id = cg.id 
WHERE
c.id = @Id

END 
  
ELSE IF(@OperationType = 2) --Insert
	BEGIN

INSERT INTO
	customers([customer_group_id]
           ,[name]
           ,[company_name]
           ,[email]
           ,[phone_number]
           ,[tax_no]
           ,[address]
           ,[city]
           ,[state]
           ,[postal_code]
           ,[country]
           ,[is_active]
           ,[created_at])
VALUES(@Customer_group_id, @Name, @Company_Name, @Email, @Phone_number, @Tax_no, @Address, @City, @State, @Postal_code, @Country, 1, @Created_at)

SET @NewId = SCOPE_IDENTITY();


SELECT
	*
FROM
	customers
WHERE
	id = @NewId
  
END 
ELSE IF(@OperationType = 3) --Update
	BEGIN IF (@Id = 0) BEGIN ROLLBACK RAISERROR (N'Invalid User. !!!~', 16, 1);RETURN END
UPDATE
	customers
SET
	       [customer_group_id] = @Customer_group_id
           ,[user_id] = @User_id
           ,[name] = @Name
           ,[company_name] = @Company_Name
           ,[email] = @Email
           ,[phone_number] = @Phone_number
           ,[tax_no] = @Tax_no
           ,[address] = @Address
           ,[city] = @City
           ,[state] = @State
           ,[postal_code] = @Postal_code
           ,[country] = @Country
           ,[is_active] = @Is_active
           ,[updated_at] = @Updated_at
WHERE
	id = @Id
SELECT
	*
FROM
	customers
WHERE
	id = @Id 
  
END 
ELSE IF(@OperationType = 4) --Delete
	BEGIN IF (@Id = 0) BEGIN ROLLBACK RAISERROR (N'Invalid User. !!!~', 16, 1);RETURN END
DELETE FROM
	customers
	WHERE
	id = @Id 
END 

COMMIT TRAN