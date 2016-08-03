CREATE TABLE [dbo].[PAYMENT] (
    [PaymentID]   INT           NOT NULL,
    [PeopleID]    INT           NOT NULL,
    [DateCreated] DATETIME      NOT NULL,
    [Amount]      MONEY         NULL,
    [UpdatedBy]   NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_PAYMENT] PRIMARY KEY CLUSTERED ([PaymentID] ASC)
);

