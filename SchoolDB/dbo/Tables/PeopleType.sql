CREATE TABLE [dbo].[PeopleType] (
    [PEopleTypeId]   INT          NOT NULL,
    [PeopleTypeName] VARCHAR (35) NOT NULL,
    [Description]    VARCHAR (35) NULL,
    [CreatedBy]      VARCHAR (35) NOT NULL,
    [CreatedDate]    DATETIME     NOT NULL,
    [UpdatedBy]      VARCHAR (1)  NULL,
    [UpdateDate]     DATETIME     NULL,
    CONSTRAINT [PK_PeopleType] PRIMARY KEY CLUSTERED ([PEopleTypeId] ASC)
);

