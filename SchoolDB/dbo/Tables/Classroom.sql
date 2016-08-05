CREATE TABLE [dbo].[Classroom]
(
	[ClassroomID] INT NOT NULL IDENTITY (1,1), 
    [ClassID] INT NOT NULL, 
    [PeopleID] INT NOT NULL, 
    [TeacherID] INT NOT NULL, 
    [StudentCount] INT NULL, 
    [CreatedBy] INT NOT NULL, 
    [CreateDate] DATETIME NOT NULL DEFAULT getdate(), 
    [UpdatedBy] INT NOT NULL, 
    [UpdateDate] DATETIME NOT NULL DEFAULT getdate(),
	CONSTRAINT PK_Classroom PRIMARY KEY (ClassroomID)
)
