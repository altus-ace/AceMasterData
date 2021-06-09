CREATE TABLE [lst].[lstPhoneCarrierTYpeBk] (
    [lstPhoneCarrierTypeKey] INT           NOT NULL,
    [PhoneCarrierTypeName]   VARCHAR (50)  NOT NULL,
    [PhoneCarrierTypeCode]   VARCHAR (10)  NULL,
    [LoadDate]               DATE          NOT NULL,
    [DataDate]               DATE          NOT NULL,
    [CreatedDate]            DATETIME2 (7) NOT NULL,
    [CreatedBy]              VARCHAR (50)  NOT NULL,
    [LastUpdatedDate]        DATETIME2 (7) NOT NULL,
    [LastUpdatedBy]          VARCHAR (50)  NOT NULL
);

