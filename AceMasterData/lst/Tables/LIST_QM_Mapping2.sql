CREATE TABLE [lst].[LIST_QM_Mapping2] (
    [CreatedDate]    DATETIME      NOT NULL,
    [CreatedBy]      VARCHAR (50)  NOT NULL,
    [LastUpdated]    DATETIME      NOT NULL,
    [LastUpdatedBy]  VARCHAR (50)  NOT NULL,
    [SrcFileName]    VARCHAR (50)  NULL,
    [QmKey]          INT           IDENTITY (1, 1) NOT NULL,
    [QM]             VARCHAR (100) NULL,
    [QM_DESC]        VARCHAR (500) NULL,
    [AHR_QM_DESC]    VARCHAR (500) NULL,
    [ACTIVE]         CHAR (1)      NULL,
    [EffectiveDate]  DATE          NULL,
    [ExpirationDate] DATE          NULL,
    [ClientKey]      INT           NULL
);

