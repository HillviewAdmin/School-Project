CREATE TABLE [dbo].[Attendance]
(
	[PeopleID] INT NOT NULL, 
    [ClassID] INT NOT NULL, 
    [DayDate] DATE NOT NULL, 
    [TeacherID] INT NOT NULL, 
    [CreatedBy] INT NOT NULL, 
    [CreateDate] DATETIME NOT NULL DEFAULT Getdate(), 
    [UpdatedBy] INT NOT NULL, 
    [UpdateDate] DATETIME NOT NULL DEFAULT Getdate(),
	CONSTRAINT PK_Attendance PRIMARY KEY (PeopleID,ClassID,[DayDate])
)
