
CREATE PROCEDURE dbo.uspStudentAttendance
 @ClassID Varchar(5)
,@AttendanceString Varchar(max)  
AS
/*************************************************************************
  Author:
  Created: 

  Purpose: This Procedure is used to add a new row into the people table.
			It will be used to:
			1. Add a new parent into the school's database during enrollment of student
			2. Enroll a student and associate that student to the Parent
			3. Add a new teacher into the school database

  Called from:	

  Parameters:
			The "@p..." parameters are used to hold the data of Parents and Teachers
			The "@c..." parameters are for the student being registered.
			The "@c..." parameters are defaulted to Null so if you are add Teacher you don't need to add the Student parameter
					
  Modifications:

  Notes:
		When you are registering a Parent, you will fill out both the "@p..." parameters and the "@c..." parameters
		For any other registration, you only fill out the "@p..." parameters

		TEST
		EXEC dbo.uspStudentAttendance @classID = 'PRY01', @Attendancestring = '11011,11020,11030'

****************************************************************************/
--To create and initialize variables
Declare  @DayDate Date = CAST(GETDATE() AS DATE),
		 @CommaCounter int,
		 @NewAttenceString Varchar(max),
		 @NoLoops Int = 0,
		 @TeacherID INT = (SELECT TeacherID 
		                   FROM Class
                           WHERE ClassID = @ClassID),
         @Operator INT = 10000,
		 @Today DATETIME = GETDATE()
 --Create working tables
   CREATE TABLE #tmp(PeopleAttendance Varchar(5))
   CREATE TABLE #WorkingTable (ID INT NOT NULL IDENTITY(1,1)
							,PeopleID INT 
							,AttRemarks BIT)


--Assess Attendance string
	--1. How many elements does Attendance string have
	 --look for the unique occurence of ',' and add 1 to it.
		--Initializing @CommaCounter (finding the number of commas in the AttendanceString
		select @CommaCounter = len(@AttendanceString) - len(replace(@AttendanceString,',',''))
		--Add one to counter
		set @CommaCounter = @CommaCounter + 1

		 
--Process @attendancestring by removing Commas
		SELECT @NewAttenceString = REPLACE(@AttendanceString,',','');

--Parse Attendance string variables into separate rows		
WHILE (@NoLoops < @CommaCounter)
BEGIN
	INSERT INTO #tmp(PeopleAttendance)
	SELECT LEFT(@NewAttenceString,5)

	SELECT @NewAttenceString = Replace(@NewAttenceString,LEFT(@NewAttenceString,5),'')
	SET @NoLoops = @NoLoops + 1
END

--Populate working table with parsed attendance string
INSERT INTO #WorkingTable(PeopleID,AttRemarks)
SELECT LEFT(PeopleAttendance,4),RIGHT(PeopleAttendance,1)
FROM #tmp

--Populate attendance table
BEGIN
	INSERT INTO [dbo].[Attendance]
           ([PeopleID]
           ,[ClassID]
           ,[DayDate]
           ,[TeacherID]
           ,[CreatedBy]
           ,[CreateDate]
           ,[UpdatedBy]
           ,[UpdateDate]
           ,[AttRemark])
     
	SELECT PeopleID, @ClassID, @DayDate, @TeacherID,
	       @Operator, @Today, @Operator, @Today, AttRemarks		 
	FROM #WorkingTable
    END

--Clean up
 IF OBJECT_ID('tempdb..#tmp') IS NOT NULL
  /*Then it exists*/
  BEGIN
  DROP TABLE  #tmp
  END
  
 IF OBJECT_ID('tempdb..#WorkingTable') IS NOT NULL
  /*Then it exists*/
  BEGIN
  DROP TABLE  #WorkingTable
  END