CREATE TABLE [dbo].[Grade]
(
	[GradeCode] NCHAR NOT NULL, 
    [Description] VARCHAR(50) NULL, 
    [Range] VARCHAR(50) NULL,
	CONSTRAINT PK_Grade PRIMARY KEY(GradeCode)
)
