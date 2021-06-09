CREATE TABLE [dbo].[phonetype] (
    [CreatedDate]     DATETIME     NOT NULL,
    [CreatedBy]       VARCHAR (50) NOT NULL,
    [LastUpdated]     DATETIME     NOT NULL,
    [LastUpdatedBy]   VARCHAR (50) NOT NULL,
    [SrcFileName]     VARCHAR (50) NULL,
    [lstPhoneTypeKey] INT          IDENTITY (1, 1) NOT NULL,
    [PhoneTypeName]   VARCHAR (20) NULL,
    [PhoneTypeCode]   VARCHAR (10) NULL,
    [ACTIVE]          CHAR (1)     NULL,
    [EffectiveDate]   DATE         NULL,
    [ExpirationDate]  DATE         NULL
);

