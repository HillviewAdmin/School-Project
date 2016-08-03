CREATE TABLE [dbo].[Examination] (
    [CourseCode]   VARCHAR (25) NOT NULL,
    [PeopleId]     INT          NOT NULL,
    [StudentId]    INT          NOT NULL,
    [SupervisorId] INT          NULL,
    [GradeCode]    INT          NULL,
    [CreatedBy]    VARCHAR (25) NOT NULL,
    [CreateDate]   DATETIME     NOT NULL,
    [UpdateBy]     VARCHAR (25) NULL,
    [UpdateDate]   DATETIME     NULL
);

