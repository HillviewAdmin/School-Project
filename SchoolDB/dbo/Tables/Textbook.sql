CREATE TABLE [dbo].[Textbook] (
    [ISBN]            VARCHAR (50) NOT NULL,
    [ClassID]         VARCHAR (25) NULL,
    [AuthorFirstName] VARCHAR (25) NULL,
    [AuthorLastName]  VARCHAR (25) NULL,
    [Edition]         VARCHAR (25) NULL,
    [CreatedBy]       VARCHAR (50) NOT NULL,
    [CreateDate]      DATETIME DEFAULT GETDATE() NOT NULL,
    [UpdateBy]        INT  NOT NULL,
    [UpdateDate]      DATETIME DEFAULT GETDATE() NOT NULL,
    CONSTRAINT [PK_Textbook] PRIMARY KEY CLUSTERED ([ISBN] ASC)
);

