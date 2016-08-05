CREATE TABLE [dbo].[Course] (
    [CourseCode]  NVARCHAR (6) NOT NULL,
    [CourseName]  NVARCHAR (25) NOT NULL,
    [Description] NVARCHAR (50) NOT NULL,
    [CreatedBy]   INT NOT NULL,
    [CreateDate]  DATETIME  DEFAULT GETDATE()   NOT NULL,
    [UpdateBy]    INT NOT NULL,
    [UpdateDate]  DATETIME DEFAULT GETDATE()  NOT NULL,
    CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED ([CourseCode] ASC)
);

