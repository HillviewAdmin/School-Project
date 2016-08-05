CREATE TABLE [dbo].[TimeTable] (
    [CourseCode]       NVARCHAR (25) NOT NULL,
    [ClassID]          NVARCHAR (25) NOT NULL,
	TeacherID			INT NOT NULL,
    [DayName] NVARCHAR(10)    NOT NULL,
    [TimeStart]        TIME (7)     NOT NULL,
    [TimeEnd]          TIME (7)     NOT NULL,
    [CreatedBy]        INT NOT NULL,
    [CreateDate]       DATETIME     DEFAULT GETDATE() NOT NULL,
    [UpdateBy]         INT   NOT NULL,
    [UpdateDate]       DATETIME  DEFAULT GETDATE() NOT NULL,
	CONSTRAINT PK_Timetable PRIMARY KEY(CourseCode,[ClassID])
);

