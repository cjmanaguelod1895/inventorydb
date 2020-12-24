  CREATE PROCEDURE [dbo].[SP_Student] @StudentId varchar(50),
  @Name varchar(MAX),
  @Roll varchar(6),
  @OperationType int AS BEGIN TRAN 

IF(@OperationType = 0) --Select
  BEGIN
SELECT
  *
FROM
  Student

END 
  
ELSE IF(@OperationType = 1) --Insert
  BEGIN

INSERT INTO
  Student ([Name], Roll)
VALUES(@Name, @Roll)
SELECT
  *
FROM
  Student
WHERE
  StudentId = @StudentId 
  
END 
ELSE IF(@OperationType = 2) --Update
  BEGIN IF (@StudentId = 0) BEGIN ROLLBACK RAISERROR (N'Invalid Student !!!~', 16, 1);RETURN END
UPDATE
  Student
SET
  [Name] = @Name,
  Roll = @Roll
WHERE
  StudentId = @StudentId
SELECT
  *
FROM
  Student
WHERE
  StudentId = @StudentId 
  
END ELSE IF(@OperationType = 3) --Delete
  BEGIN IF (@StudentId = 0) BEGIN ROLLBACK RAISERROR (N'Invalid Student !!!~', 16, 1);RETURN END
DELETE FROM
  Student
 WHERE
  StudentId = @StudentId 
END COMMIT TRAN