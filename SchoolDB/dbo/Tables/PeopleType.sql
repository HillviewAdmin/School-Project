CREATE TABLE [dbo].[PeopleType] (
    [PeopleTypeID]   INT          NOT NULL,
    [PeopleTypeName] VARCHAR (50) NOT NULL,
    [Description]    VARCHAR (50) NOT NULL,
    [CreatedBy]      VARCHAR (50) NOT NULL,
    [CreatedDate]    DATETIME DEFAULT GETDATE()  NOT NULL,
    [UpdatedBy]      INT  NOT NULL,
    [UpdateDate]     DATETIME DEFAULT GETDATE() NOT  NULL,
    CONSTRAINT [PK_PeopleType] PRIMARY KEY CLUSTERED ([PEopleTypeId] ASC)
);

