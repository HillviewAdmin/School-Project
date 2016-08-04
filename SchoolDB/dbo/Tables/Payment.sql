CREATE TABLE [dbo].[Payment] (
    [PaymentID]   INT           NOT NULL,
    [PeopleID]    INT           NOT NULL,
    [DateCreated] DATETIME DEFAULT GETDATE()  NOT NULL,
    [Amount]      MONEY         NULL,
    [UpdatedBy]   INT  NOT NULL,
    CONSTRAINT [PK_PAYMENT] PRIMARY KEY CLUSTERED ([PaymentID] ASC)
);

