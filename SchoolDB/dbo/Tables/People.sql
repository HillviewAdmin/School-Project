CREATE TABLE [dbo].[People] (
    [PeopleID]     INT            NOT NULL,
    [PeopleTypeID] INT            NOT NULL,
	[UserTypeID]   INT            NOT NULL,
    [FirstName]    NVARCHAR (50)   NOT NULL,
    [MiddleName]   NCHAR (1)   NULL,
    [LastName]     NVARCHAR (50)   NOT NULL,
	[LoginID]      NVARCHAR (50)   NOT NULL,
	[Password]     BINARY  (64)   NOT NULL,
    [CreatedBy]    INT   NOT NULL,
    [DOB]          DATE           NOT NULL,
    [Address1]     NVARCHAR (50)  NOT NULL,
    [Address2]     NVARCHAR (50)  NULL,
    [City]         NVARCHAR (30)   NOT NULL,
    [State]        NVARCHAR (50)   NOT NULL,
    [PostalCode]   NVARCHAR (10)   NULL,
    [Country]      NVARCHAR (50)   NULL,
    [EmailAddress] NVARCHAR (50)   NULL,
    [Phone]        NVARCHAR(15)           NULL,
    [ParentID]     INT            NOT NULL,
    [CreateDate]   DATETIME       NOT NULL DEFAULT Getdate(),
    [UpdatedBy]    INT            NOT NULL,
    [UpdateDate]   DATETIME       NOT NULL DEFAULT Getdate(),
    CONSTRAINT [PK_People] PRIMARY KEY CLUSTERED ([PeopleID] ASC),
    
);
   

