CREATE TABLE [dbo].[Class] (
    [ClassId]    VARCHAR (25) NOT NULL,
    [ClassName]  VARCHAR (50) NOT NULL,
    [TeacherId]  INT          NOT NULL,
    [CreatedBy]  VARCHAR (25) NOT NULL,
    [CreateDate] DATETIME     NOT NULL,
    [UpdateBy]   VARCHAR (25) NULL,
    [UpdateDate] DATETIME     NULL,
    CONSTRAINT [PK_Class] PRIMARY KEY CLUSTERED ([ClassId] ASC)
);

