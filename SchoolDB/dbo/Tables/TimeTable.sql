CREATE TABLE [dbo].[TimeTable] (
    [CourseCode]       VARCHAR (25) NOT NULL,
    [ClassId]          VARCHAR (25) NOT NULL,
    [DayOfTheWeekName] CHAR (10)    NULL,
    [TimeStart]        TIME (7)     NULL,
    [TimeEnd]          TIME (7)     NULL,
    [CreatedBy]        VARCHAR (25) NOT NULL,
    [CreateDate]       DATETIME     DEFAULT GETDATE() NOT NULL,
    [UpdateBy]         INT   NOT NULL,
    [UpdateDate]       DATETIME  DEFAULT GETDATE() NOT NULL
);

