CREATE TABLE [dbo].[Attendance] (
    [PeopleID]   INT           NOT NULL,
    [ClassID]    INT           NOT NULL,
    [DayDate]    DATE          NOT NULL,
    [TeacherID]  INT           NOT NULL,
    [CreatedBy]  INT           NOT NULL,
    [CreateDate] DATETIME      DEFAULT (getdate()) NOT NULL,
    [UpdatedBy]  INT           NOT NULL,
    [UpdateDate] DATETIME      DEFAULT (getdate()) NOT NULL,
    [AttRemark]  NVARCHAR (10) NULL,
    CONSTRAINT [PK_Attendance] PRIMARY KEY CLUSTERED ([PeopleID] ASC, [ClassID] ASC, [DayDate] ASC)
);


