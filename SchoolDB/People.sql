CREATE TABLE [dbo].[People] (
    [PeopleId]     INT            NOT NULL,
    [PeopleTypeId] INT            NOT NULL,
    [UserTypeId]   INT            NOT NULL,
    [FirstName]    VARCHAR (50)   NOT NULL,
    [LastName]     VARCHAR (50)   NOT NULL,
    [MiddleName]   VARCHAR (35)   NOT NULL,
    [DateOfBirth]  DATE           NOT NULL,
    [Address1]     NVARCHAR (MAX) NULL,
    [Address2]     NVARCHAR (MAX) NULL,
    [City]         VARCHAR (30)   NULL,
    [State]        VARCHAR (50)   NULL,
    [PostalCode]   VARCHAR (1)    NULL,
    [Country]      VARCHAR (35)   NULL,
    [EmailAddress] VARCHAR (MAX)  NULL,
    [Phone]        INT            NULL,
    [ParentId]     INT            NOT NULL,
    [LoginId]      VARCHAR (50)   NOT NULL,
    [Password]     VARCHAR (50)   NOT NULL,
    [CreatedBy]    VARCHAR (50)   NOT NULL,
    [CreateDate]   DATETIME       NOT NULL,
    [UpdatedBy]    VARCHAR (1)    NULL,
    [UpdateDate]   DATETIME       NULL,
    CONSTRAINT [PK_People] PRIMARY KEY CLUSTERED ([PeopleId] ASC),
    FOREIGN KEY ([PeopleTypeId]) REFERENCES [dbo].[PeopleType] ([PEopleTypeId]),
    FOREIGN KEY ([UserTypeId]) REFERENCES [dbo].[UserType] ([UserTypeId])
);


