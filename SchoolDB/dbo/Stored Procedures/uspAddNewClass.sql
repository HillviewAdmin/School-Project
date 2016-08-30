CREATE PROC dbo.uspAddNewClass
@pClassID NCHAR(10),
@pClassName NVARCHAR(25)

AS
  BEGIN
  SET NOCOUNT ON
  DECLARE @Today DATETIME = GETDATE(),
		  @Operator INT = 10000

INSERT INTO Class (ClassID,ClassName, CreatedBy, CreateDate, UpdateBy, UpdateDate)
VALUES (@pClassID, @pClassName, @Operator, @Today, @Operator, @Today)

END