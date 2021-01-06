	CREATE PROCEDURE [dbo].[sp_Users] 
	@UserId int,
	@Name varchar(MAX),
	@Age varchar(50),
	@Address varchar(100),
	@City nvarchar(50),
	@Region nvarchar(50),
	@Province nvarchar(50),
	@Barangay nvarchar(50),
	@BirthDate Date,
	@EmailAddress varchar(50),
	@Role varchar(50),
	@Username varchar(50),
	@Password varchar(50),
	@IsActive char(1),
	@DateCreated Datetime,
	@LastLoginDate Datetime,
	@OperationType int AS BEGIN TRAN 

IF(@OperationType = 0) --Select
	BEGIN
SELECT
	*
FROM
	Users

END 

ELSE IF(@OperationType = 1) --Select Specific Record
	BEGIN
SELECT
	*
FROM
	Users
WHERE
UserId = @UserId

END 
  
ELSE IF(@OperationType = 2) --Insert
	BEGIN

INSERT INTO
	Users ([Name],[Age],[Address],[City],[Region],[Province],[Barangay],[BirthDate],[EmailAddress],[Username],[Password],[IsActive],[DateCreated],[Role])
VALUES(@Name, @Age,@Address,@City,@Region,@Province,@Barangay,@BirthDate,@EmailAddress,@Username,@Password,@IsActive,@DateCreated,@Role)
SELECT
	*
FROM
	Users
WHERE
	UserId = @UserId 
  
END 
ELSE IF(@OperationType = 3) --Update
	BEGIN IF (@UserId = 0) BEGIN ROLLBACK RAISERROR (N'Invalid User. !!!~', 16, 1);RETURN END
UPDATE
	Users
SET
	[Name] = @Name,
	[Age] = @Age,
	[Address] = @Address,
	[City] = @City,
	[Region] = @Region,
	[Province] = @Province,
	[Barangay] = @Barangay,
	[Username] = @Username,
	[Password] = @Password,
	[IsActive] = @IsActive,
	[DateCreated] = @DateCreated,
	[Role] = @Role
WHERE
	UserId = @UserId
SELECT
	*
FROM
	Users
WHERE
	UserId = @UserId 
  
END 
ELSE IF(@OperationType = 4) --Delete
	BEGIN IF (@UserId = 0) BEGIN ROLLBACK RAISERROR (N'Invalid User. !!!~', 16, 1);RETURN END
DELETE FROM
	Users
	WHERE
	UserId = @UserId 
END 
ELSE IF(@OperationType = 5) --Login 
	SELECT
	*
FROM
	Users
WHERE
	Username = @Username and Password = @Password
UPDATE
	Users
SET
	[LastLoginDate] = @LastLoginDate
WHERE
	Username = @Username

COMMIT TRAN