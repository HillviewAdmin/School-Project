CREATE TABLE [dbo].[Course] (
    [CourseCode]  VARCHAR (25) NOT NULL,
    [CourseName]  VARCHAR (25) NOT NULL,
    [Description] VARCHAR (50) NOT NULL,
    [CreatedBy]   VARCHAR (25) NOT NULL,
    [CreateDate]  DATETIME  DEFAULT GETDATE()   NOT NULL,
    [UpdateBy]    INT NOT NULL,
    [UpdateDate]  DATETIME DEFAULT GETDATE()  NOT NULL,
    CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED ([CourseCode] ASC)
);

