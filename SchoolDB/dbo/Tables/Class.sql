CREATE TABLE [dbo].[Class] (
    [ClassID]    VARCHAR (25) NOT NULL,
    [ClassName]  VARCHAR (50) NOT NULL,
    [TeacherID]  INT      NOT NULL,
    [CreatedBy]  VARCHAR (50) NOT NULL,
    [CreateDate] DATETIME DEFAULT GETDATE()  NOT NULL,
    [UpdateBy]   INT NOT NULL,
    [UpdateDate] DATETIME DEFAULT GETDATE()   NOT NULL,
    CONSTRAINT [PK_Class] PRIMARY KEY CLUSTERED (ClassID) 
);

