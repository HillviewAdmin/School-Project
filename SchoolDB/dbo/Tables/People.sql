CREATE TABLE [dbo].[People] (
    [PeopleID]     INT   IDENTITY(10000,1)         NOT NULL,
    [PeopleTypeID] INT            NOT NULL,
	[UserTypeID]   INT            NOT NULL,
    [FirstName]    NVARCHAR (100)   NOT NULL,
    [MiddleInitial]   NCHAR   NULL,
    [LastName]     NVARCHAR (100)   NOT NULL,
	Gender		   CHAR(1) NOT NULL,
	[LoginID]      NVARCHAR (20)   NOT NULL,
	[Password]     BINARY  (64)   NOT NULL,
    [DOB]          DATE           NOT NULL,
    [Address1]     NVARCHAR (100)  NOT NULL,
    [Address2]     NVARCHAR (50)  NULL,
    [City]         NVARCHAR (30)   NOT NULL,
    [StateCode]        NCHAR(3)   NOT NULL,
    [PostalCode]   NVARCHAR (10)   NULL,
    [Country]      NVARCHAR (100)   NULL,
    [EmailAddress] NVARCHAR (50)   NULL,
    [Phone]        NVARCHAR(15)    NULL,
	[HireDate]     DATETIME       NULL,
    [ParentID]     INT            NULL,
	[CreatedBy]    INT   NOT NULL,
    [CreateDate]   DATETIME       NOT NULL DEFAULT Getdate(),
    [UpdatedBy]    INT            NOT NULL,
    [UpdateDate]   DATETIME       NOT NULL DEFAULT Getdate(),
     
    CONSTRAINT [PK_People] PRIMARY KEY CLUSTERED ([PeopleID] ASC),
    
);
   

