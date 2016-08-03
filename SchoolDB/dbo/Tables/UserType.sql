CREATE TABLE [dbo].[UserType] (
    [UserTypeID]         INT          NOT NULL,
    [Description]        VARCHAR (50)  NOT NULL,
    [AuthorizationLevel] INT          NOT NULL,
    [CreatedBy]          VARCHAR (50) NOT NULL,
    [CreatedDate]        DATETIME DEFAULT GETDATE()  NOT NULL,
    [UpdatedBy]          INT NOT NULL,
    [UpdateDate]         DATETIME DEFAULT GETDATE() NOT NULL,
    CONSTRAINT [PK_UserType] PRIMARY KEY CLUSTERED ([UserTypeId] ASC)
);

