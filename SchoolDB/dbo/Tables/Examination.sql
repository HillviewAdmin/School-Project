CREATE TABLE [dbo].[Examination] (
    [CourseCode]   NVARCHAR (25) NOT NULL,
    [StudentID]    INT          NOT NULL,
    [SupervisorID] INT          NULL,
	[Remark]       BIT          NOT NULL,
    [GradeCode]    NCHAR(1)          NULL,
    [CreatedBy]    NVARCHAR (50) NOT NULL,
    [CreateDate]   DATETIME   DEFAULT GETDATE()  NOT NULL,
    [UpdateBy]     INT  NOT NULL,
    [UpdateDate]   DATETIME DEFAULT GETDATE() NOT NULL
);

