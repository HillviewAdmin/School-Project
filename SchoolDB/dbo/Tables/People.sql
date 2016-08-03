CREATE TABLE [dbo].[People] (
    [PeopleId]     INT            NOT NULL,
    [PeopleTypeId] INT            NOT NULL,
	[UserTypeID]   INT            NOT NULL,
    [FirstName]    VARCHAR (50)   NOT NULL,
    [LastName]     VARCHAR (50)   NOT NULL,
    [MiddleName]   VARCHAR (35)   NOT NULL,
	[LoginID]      VARCHAR (50)   NOT NULL,
	[Password]     VARCHAR (50)   NOT NULL,
    [CreatedBy]    VARCHAR (50)   NOT NULL,
    [DOB]  DATE           NOT NULL,
    [Address1]     VARCHAR (100) NOT NULL,
    [Address2]     VARCHAR (100) NULL,
    [City]         VARCHAR (30)   NOT NULL,
    [State]        VARCHAR (50)   NOT NULL,
    [PostalCode]   VARCHAR (10)    NULL,
    [Country]      VARCHAR (35)   NULL,
    [EmailAddress] VARCHAR (MAX)  NULL,
    [Phone]        INT            NULL,
    [ParentID]     INT            NOT NULL,
    [CreateDate]   DATETIME       NOT NULL DEFAULT Getdate(),
    [UpdatedBy]    Int    NOT NULL,
    [UpdateDate]   DATETIME       NOT NULL DEFAULT Getdate(),
    CONSTRAINT [PK_People] PRIMARY KEY CLUSTERED ([PeopleId] ASC),
    FOREIGN KEY ([PeopleTypeId]) REFERENCES [dbo].[PeopleType] ([PeopleTypeId]),
    FOREIGN KEY ([UserTypeId]) REFERENCES [dbo].[UserType] ([UserTypeId])
);


