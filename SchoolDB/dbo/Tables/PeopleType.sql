CREATE TABLE [dbo].[PeopleType] (
    [PeopleTypeID]   INT IDENTITY(1,1)         NOT NULL,
    [PeopleType]	NVARCHAR (50) NOT NULL,
    [Description]    NVARCHAR (50) NULL,
    [CreatedBy]      INT NOT NULL,
    [CreatedDate]    DATETIME DEFAULT GETDATE()  NOT NULL,
    [UpdatedBy]      INT  NOT NULL,
    [UpdateDate]     DATETIME DEFAULT GETDATE() NOT  NULL,
    CONSTRAINT [PK_PeopleType] PRIMARY KEY CLUSTERED ([PeopleTypeID] ASC)
);

