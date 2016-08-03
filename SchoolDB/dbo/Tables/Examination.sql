CREATE TABLE [dbo].[Examination] (
    [CourseCode]   VARCHAR (25) NOT NULL,
    [PeopleID]     INT          NOT NULL,
    [StudentID]    INT          NOT NULL,
    [SupervisorID] INT          NULL,
    [GradeCode]    INT          NULL,
    [CreatedBy]    VARCHAR (50) NOT NULL,
    [CreateDate]   DATETIME   DEFAULT GETDATE()  NOT NULL,
    [UpdateBy]     INT  NOT NULL,
    [UpdateDate]   DATETIME DEFAULT GETDATE() NOT NULL
);

