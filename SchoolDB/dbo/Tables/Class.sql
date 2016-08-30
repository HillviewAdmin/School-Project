﻿CREATE TABLE [dbo].[Class] (
    [ClassID]    NVARCHAR (10) NOT NULL,
    [ClassName]  NVARCHAR (50) NOT NULL,
    [CreatedBy]  NVARCHAR (50) NOT NULL,
    [CreateDate] DATETIME DEFAULT GETDATE()  NOT NULL,
    [UpdateBy]   INT NOT NULL,
    [UpdateDate] DATETIME DEFAULT GETDATE()   NOT NULL,
    CONSTRAINT [PK_Class] PRIMARY KEY CLUSTERED (ClassID) 
);

