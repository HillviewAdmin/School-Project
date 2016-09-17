
/*  THIS PROCEDURE WILL HELP PLACE REGISTERED STUDENTS IN A CLASSROOM.
    NEW STUDENTS MUST BE AT LEAST SIX YEARS OF AGE. 
    EXISTING STUDENT MUST PASS A CLASS TO QUALIFY FOR PROMOTION TO THE NEXT CLASS.
    STUDENTS COMING ON TRANSFER MUST MEET THE REQUIREMENT FOR THE INTENDED CLASS.
  */

CREATE PROCEDURE dbo.uspAddStudenttoClassroom 
 
 AS
 /*****************************************************************************************************************
  Author:
  Created: 

  Purpose: This Procedure is used to add a new row of student into the classroom table.
			It will be used to:
			1. Add a student into a classroom during enrollment of student
			2. Moves a student to the next arm of class when one is filled up
			3. 

  Called from:
					
  Modifications:

  Notes:
		When the StudentCount of one arm of class is 30, then creates a new arm of class for additional stuent
 *****************************************************************************************************************/


BEGIN
SET NOCOUNT ON
/*
Variable declaration
*/

DECLARE @CURRENTDATE DATE = GETDATE(),
        @Operator INT = 10000,
		@Age TINYINT,
		@StudentID INT,
		@TeacherID INT,
		@StudentCount INT 
		
--Initialized StudentID, TeacherID and Age variables

 SELECT @StudentID = (SELECT PeopleID FROM dbo.People WHERE ParentID = 11003)
 SELECT @Age = [dbo].[udfCalculateAge]((SELECT DOB FROM dbo.People WHERE ParentID = 11003),GETDATE()) 
 SET @TeacherID = CASE WHEN @Age <= 6 THEN (SELECT TeacherID FROM Class WHERE ClassID = 'PRY01')
                       WHEN @Age = 7 THEN (SELECT TeacherID FROM Class WHERE ClassID = 'PRY02')
					   WHEN @Age = 8 THEN (SELECT TeacherID FROM Class WHERE ClassID = 'PRY03')
					   WHEN @Age = 9 THEN (SELECT TeacherID FROM Class WHERE ClassID = 'PRY04')
					   WHEN @Age = 10 THEN (SELECT TeacherID FROM Class WHERE ClassID = 'PRY05')
					   WHEN @Age = 11 THEN (SELECT TeacherID FROM Class WHERE ClassID = 'PRY06')
					   END
  
BEGIN TRY
--Enroll student in Primary one

IF @Age <= 6
BEGIN
SET @StudentCount = (SELECT ISNULL(StudentCount,0)  FROM Classroom WHERE ClassID = 'PRY01') + 1
	IF (SELECT StudentCount FROM Classroom WHERE ClassID = 'PRY01') <= 30
	BEGIN
		INSERT INTO [dbo].[Classroom](ClassID,PeopleID,TeacherID,StudentCount,CreateDate, CreatedBy,UpdatedBy,UpdateDate)

	    VALUES('PRY01',@StudentID,@TeacherID, @StudentCount,@CURRENTDATE,@Operator, @Operator, @CURRENTDATE)
	END
	--ELSE
	--BEGIN
	----Insert a new arm of the class in Class table	
	--SELECT 1
	--END
	
END
--Enroll student in Primary Two

IF @Age = 7
BEGIN
SET @StudentCount = (SELECT ISNULL(StudentCount,0)  FROM Classroom WHERE ClassID = 'PRY02') + 1
	IF (SELECT StudentCount FROM Classroom WHERE ClassID = 'PRY02') <= 30
	BEGIN
		INSERT INTO [dbo].[Classroom](ClassID,PeopleID,TeacherID,StudentCount,CreateDate, CreatedBy,UpdatedBy,UpdateDate)

	    VALUES('PRY02',@StudentID,@TeacherID, @StudentCount,@CURRENTDATE,@Operator, @Operator, @CURRENTDATE)
	END
	--ELSE
	--BEGIN
	----Insert a new arm of the class in Class table	
	--SELECT 1
	--END
	
END
--Enroll student in Primary Three

IF @Age = 8
BEGIN
SET @StudentCount = (SELECT ISNULL(StudentCount,0)  FROM Classroom WHERE ClassID = 'PRY03') + 1
	IF (SELECT StudentCount FROM Classroom WHERE ClassID = 'PRY03') <= 30
	BEGIN
		INSERT INTO [dbo].[Classroom](ClassID,PeopleID,TeacherID,StudentCount,CreateDate, CreatedBy,UpdatedBy,UpdateDate)

	    VALUES('PRY03',@StudentID,@TeacherID, @StudentCount,@CURRENTDATE,@Operator, @Operator, @CURRENTDATE)
	END
	--ELSE
	--BEGIN
	----Insert a new arm of the class in Class table	
	--SELECT 1
	--END
	
END

--Enroll Student in Primary Four

IF @Age = 9
BEGIN
SET @StudentCount = (SELECT ISNULL(StudentCount,0)  FROM Classroom WHERE ClassID = 'PRY04') + 1
	IF (SELECT StudentCount FROM Classroom WHERE ClassID = 'PRY04') <= 30
	BEGIN
		INSERT INTO [dbo].[Classroom](ClassID,PeopleID,TeacherID,StudentCount,CreateDate, CreatedBy,UpdatedBy,UpdateDate)

	    VALUES('PRY04',@StudentID,@TeacherID, @StudentCount,@CURRENTDATE,@Operator, @Operator, @CURRENTDATE)
	END
	--ELSE
	--BEGIN
	----Insert a new arm of the class in Class table	
	--SELECT 1
	--END
	
END

--Enroll student in Primary Five

IF @Age = 10
BEGIN
SET @StudentCount = (SELECT ISNULL(StudentCount,0)  FROM Classroom WHERE ClassID = 'PRY05') + 1
	IF (SELECT StudentCount FROM Classroom WHERE ClassID = 'PRY05') <= 30
	BEGIN
		INSERT INTO [dbo].[Classroom](ClassID,PeopleID,TeacherID,StudentCount,CreateDate, CreatedBy,UpdatedBy,UpdateDate)

	    VALUES('PRY05',@StudentID,@TeacherID, @StudentCount,@CURRENTDATE,@Operator, @Operator, @CURRENTDATE)
	END
	--ELSE
	--BEGIN
	----Insert a new arm of the class in Class table	
	--SELECT 1
	--END
	
END

--Enroll student in Primary one

IF @Age = 11
BEGIN
SET @StudentCount = (SELECT ISNULL(StudentCount,0)  FROM Classroom WHERE ClassID = 'PRY06') + 1
	IF (SELECT StudentCount FROM Classroom WHERE ClassID = 'PRY06') <= 30
	BEGIN
		INSERT INTO [dbo].[Classroom](ClassID,PeopleID,TeacherID,StudentCount,CreateDate, CreatedBy,UpdatedBy,UpdateDate)

	    VALUES('PRY06',@StudentID,@TeacherID, @StudentCount,@CURRENTDATE,@Operator, @Operator, @CURRENTDATE)
	END
	--ELSE
	--BEGIN
	----Insert a new arm of the class in Class table	
	--SELECT 1
	--END
	
END


END TRY
BEGIN CATCH
	Declare @ErrorMsg Varchar(2000)
	
	Set  @ErrorMsg =  'Error in Data input to People Table.'+  
						convert(varchar(6),ERROR_NUMBER()) + ', ' + 
					   isnull(@ErrorMsg,error_message()) + ', ERROR_PROCEDURE: ' + 
					   isnull(ERROR_PROCEDURE(),'(script)') + ', LINE: ' + 
					   convert(varchar(6),ERROR_LINE())	
					   
	Raiserror (@ErrorMsg,16,1)	

	END CATCH
END