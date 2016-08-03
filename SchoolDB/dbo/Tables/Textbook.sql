CREATE TABLE [dbo].[Textbook] (
    [ISBN]            VARCHAR (50) NOT NULL,
    [ClassId]         VARCHAR (25) NULL,
    [AuthorFirstName] VARCHAR (25) NULL,
    [AuthorLastName]  VARCHAR (25) NULL,
    [Edition]         VARCHAR (25) NULL,
    [CreatedBy]       VARCHAR (25) NOT NULL,
    [CreateDate]      DATETIME     NOT NULL,
    [UpdateBy]        VARCHAR (25) NULL,
    [UpdateDate]      DATETIME     NULL,
    CONSTRAINT [PK_Textbook] PRIMARY KEY CLUSTERED ([ISBN] ASC)
);

