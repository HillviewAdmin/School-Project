CREATE FUNCTION dbo.udfCalculateAge
 ( @DOB AS DATE,
   @EndDate AS DATE = '3000-12-31'--Default is today's date but any date will work
 )
 RETURNS TINYINT
AS
BEGIN
DECLARE @Result AS TINYINT
--If Default value(marked as 3000-12-31 as it doesn't accept functions) is used then Use today's date
IF @EndDate = '3000-12-31'
SET @EndDate = GETDATE()
IF @DOB >= @EndDate
SET @Result = 0

ELSE
BEGIN
--Check if the person has it's birthday in the specified year and calculate age
IF (MONTH(@EndDate) * 100) + DAY(@EndDate) >= (MONTH(@DOB)* 100) + DAY(@DOB)
SET @Result = DATEDIFF (Year, @DOB, @EndDate)

ELSE
SET @Result = DATEDIFF(Year, @DOB, @EndDate) - 1
--END IF
END
RETURN @Result
END