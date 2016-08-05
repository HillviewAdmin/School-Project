CREATE TABLE [dbo].[Textbook] (
    [ISBN]            NVARCHAR (50) NOT NULL,
    [ClassID]         NVARCHAR (25) NOT NULL,
    [Author] NVARCHAR (100) NOT NULL,
    [Edition]         NVARCHAR (5) NULL,
    [CreatedBy]       INT NOT NULL,
    [CreateDate]      DATETIME DEFAULT GETDATE() NOT NULL,
    [UpdateBy]        INT  NOT NULL,
    [UpdateDate]      DATETIME DEFAULT GETDATE() NOT NULL,
    CONSTRAINT [PK_Textbook] PRIMARY KEY CLUSTERED ([ISBN] ASC)
);

