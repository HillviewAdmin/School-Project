CREATE PROCEDURE dbo.uspAddPeople
       @pPeopleTypeID INT,
       @pUserTypeID  INT,
       @pFirstName NVARCHAR(100),
       @pMiddleInitial NCHAR = NULL,
       @pLastName NVARCHAR(100),
       @pGender CHAR(1),
       @pLoginID NVARCHAR(20),
	   @pPassword  NVARCHAR(64), 
       @pDOB DATE,
       @pAddress1  NVARCHAR(100),
       @pAddress2 NVARCHAR(50) = NULL,
       @pCity NVARCHAR(30),
       @pStateCode NCHAR(3),
       @pPostalCode NVARCHAR(10) = NULL,
       @pCountry NVARCHAR(100) = NULL,
       @pEmailAddress NVARCHAR(50),
       @pPhone NVARCHAR(15),
	   @cPeopleTypeID INT = 3,
       @cUserTypeID  INT = NULL, 
       @cFirstName NVARCHAR(100) = NULL,
       @cMiddleInitial NCHAR = NULL,
       @cLastName NVARCHAR(100) = NULL,
       @cGender CHAR(1) = NULL,
       @cLoginID NVARCHAR(20) = NULL,
	   @cPassword  NVARCHAR(64) = NULL, 
       @cDOB DATE = NULL,
	   @cEmailAddress NVARCHAR(50) = NULL,
       @cPhone NVARCHAR(15) = NULL,
	   @pParentID INT OUTPUT 
      
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

****************************************************************************/

BEGIN
 SET NOCOUNT ON
 --Variable Declaration to hold: 1.Salt, 2.Today's Date
 DECLARE 
  @pSalt UNIQUEIDENTIFIER = NEWID(),
  @Today DATETIME = GETDATE(),
  @Operator INT = 10000

  --When you are registering a parent
  IF @pPeopleTypeID = 2
  
  BEGIN TRY
  ---Parent Insert
  --When you are registering a parent
  IF @pPeopleTypeID = 2
	  BEGIN
		BEGIN TRAN
  		  INSERT INTO [dbo].[People] 
		  ([PeopleTypeID], [UserTypeID], [FirstName], [MiddleInitial], [LastName], [Gender], [LoginID], [Password],[DOB], [Address1], [Address2], 
		  [City], [StateCode], [PostalCode], [Country], [EmailAddress], [Phone], [HireDate], [ParentID],[CreatedBy], [CreateDate], [UpdatedBy], [UpdateDate])
		  VALUES(@pPeopleTypeID,@pUserTypeID,@pFirstName,@pMiddleInitial,@pLastName,@pGender,@pLoginID,HASHBYTES('SHA2_512', @pPassword + CAST(@pSalt AS NVARCHAR(36))),
				  @pDOB,@pAddress1,@pAddress2,@pCity,UPPER(@pStateCode),@pPostalCode,UPPER(@pCountry),@pEmailAddress,@pPhone,NULL,NULL,@Operator,@Today,@Operator,@Today)
	  
		  SET @pParentID = SCOPE_IDENTITY()
  
	  ---Child Insert
		  INSERT INTO [dbo].[People] 
		  ([PeopleTypeID], [UserTypeID], [FirstName], [MiddleInitial], [LastName], [Gender], [LoginID], [Password],[DOB], [Address1], [Address2], 
		  [City], [StateCode], [PostalCode], [Country], [EmailAddress], [Phone], [HireDate], [ParentID],[CreatedBy], [CreateDate], [UpdatedBy], [UpdateDate])
		  VALUES(@cPeopleTypeID,@cUserTypeID,@cFirstName,@cMiddleInitial,@cLastName,@cGender,@cLoginID,HASHBYTES('SHA2_512', @cPassword + CAST(@pSalt AS NVARCHAR(36))),
				  @cDOB,@pAddress1,@pAddress2,@pCity,UPPER(@pStateCode),@pPostalCode,UPPER(@pCountry),@cEmailAddress,@cPhone,NULL,@pParentID,@Operator,@Today,@Operator,@Today)
 
		COMMIT
	  END
  --When you are registering a Teacher
  ELSE IF @pPeopleTypeID = 1
	BEGIN
		 INSERT INTO [dbo].[People] 
		  ([PeopleTypeID], [UserTypeID], [FirstName], [MiddleInitial], [LastName], [Gender], [LoginID], [Password],[DOB], [Address1], [Address2], 
		  [City], [StateCode], [PostalCode], [Country], [EmailAddress], [Phone], [HireDate], [ParentID],[CreatedBy], [CreateDate], [UpdatedBy], [UpdateDate])
		  VALUES(@pPeopleTypeID,@pUserTypeID,@pFirstName,@pMiddleInitial,@pLastName,@pGender,@pLoginID,HASHBYTES('SHA2_512', @pPassword + CAST(@pSalt AS NVARCHAR(36))),
				  @pDOB,@pAddress1,@pAddress2,@pCity,UPPER(@pStateCode),@pPostalCode,UPPER(@pCountry),@pEmailAddress,@pPhone,@Today,NULL,@Operator,@Today,@Operator,@Today)
	END

	 
  END TRY
  BEGIN CATCH
	If Xact_State() = -1 or Xact_State() = 1
	Declare @ErrorMsg Varchar(2000)
	
	Set  @ErrorMsg =  'Error in Data input to People Table.'+  
						convert(varchar(6),ERROR_NUMBER()) + ', ' + 
					   isnull(@ErrorMsg,error_message()) + ', ERROR_PROCEDURE: ' + 
					   isnull(ERROR_PROCEDURE(),'(script)') + ', LINE: ' + 
					   convert(varchar(6),ERROR_LINE())	
					   
	Raiserror (@ErrorMsg,16,1)	

	ROLLBACK	
  END CATCH
END