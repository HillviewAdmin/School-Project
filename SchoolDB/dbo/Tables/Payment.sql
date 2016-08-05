CREATE TABLE [dbo].[Payment] (
    [PaymentID]   INT           NOT NULL,
    [PaymentTypeID]    INT           NOT NULL,
    [PeopleID]      INT         NOT NULL,
	AmountPaid	DECIMAL(8,2),	
    [PaymentDate]   DATETIME  NOT NULL,
    [IsFullPayment] BIT NULL, 
    [BalanceRemaining] DECIMAL(8,2) NULL, 
    [CCNumber] BINARY(50) NOT NULL, 
    [CCExpiryMonth] INT NULL, 
    [CCExpiryYear] INT NULL, 
    [DigitPin] NVARCHAR(5) NULL, 
    [CreatedBy] INT NOT NULL, 
    [CreateDate] DATETIME NOT NULL DEFAULT getdate(), 
    [UpdatedBy] INT NOT NULL, 
    [UpdateDate] DATETIME NOT NULL DEFAULT getdate(), 
    CONSTRAINT [PK_PAYMENT] PRIMARY KEY CLUSTERED ([PaymentID] ASC)
);

