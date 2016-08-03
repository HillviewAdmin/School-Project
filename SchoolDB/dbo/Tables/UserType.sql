CREATE TABLE [dbo].[UserType] (
    [UserTypeId]         INT          NOT NULL,
    [Description]        VARCHAR (1)  NOT NULL,
    [AuthorizationLevel] INT          NOT NULL,
    [CreatedBy]          VARCHAR (35) NOT NULL,
    [CreatedDate]        DATETIME     NOT NULL,
    [UpdatedBy]          VARCHAR (1)  NULL,
    [UpdateDate]         DATETIME     NULL,
    CONSTRAINT [PK_UserType] PRIMARY KEY CLUSTERED ([UserTypeId] ASC)
);

