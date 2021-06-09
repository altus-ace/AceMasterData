CREATE TABLE [lst].[z_bkupLIST_HCC_CODES] (
    [CreatedDate]     DATETIME       NULL,
    [CreatedBy]       VARCHAR (50)   NULL,
    [LastUpdated]     DATETIME       NULL,
    [LastUpdatedBy]   VARCHAR (50)   NULL,
    [SrcFileName]     VARCHAR (50)   NULL,
    [HccSkey]         INT            IDENTITY (1, 1) NOT NULL,
    [HCC_No]          INT            NOT NULL,
    [HCC_VERSION]     VARCHAR (20)   NULL,
    [HCC_Description] NVARCHAR (MAX) NULL,
    [Disease_Hier]    NVARCHAR (50)  NULL,
    [ACTIVE]          CHAR (1)       NULL,
    [EffectiveDate]   DATE           NULL,
    [ExpirationDate]  DATE           NULL,
    PRIMARY KEY CLUSTERED ([HccSkey] ASC)
);

