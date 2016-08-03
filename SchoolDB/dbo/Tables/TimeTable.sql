CREATE TABLE [dbo].[TimeTable] (
    [CourseCode]       VARCHAR (25) NOT NULL,
    [ClassId]          VARCHAR (25) NOT NULL,
    [DayOfTheWeekName] CHAR (10)    NULL,
    [TimeStart]        TIME (7)     NULL,
    [TimeEnd]          TIME (7)     NULL,
    [CreatedBy]        VARCHAR (25) NOT NULL,
    [CreateDate]       DATETIME     NOT NULL,
    [UpdateBy]         VARCHAR (25) NULL,
    [UpdateDate]       DATETIME     NULL,
    FOREIGN KEY ([ClassId]) REFERENCES [dbo].[Class] ([ClassID]),
    FOREIGN KEY ([CourseCode]) REFERENCES [dbo].[Course] ([CourseCode])
);

