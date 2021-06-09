CREATE TABLE [lst].[lstNdcDrugProduct] (
    [LstNdcDrugProductKey]          INT            IDENTITY (1, 1) NOT NULL,
    [srcFileName]                   VARCHAR (100)  NOT NULL,
    [DataDate]                      DATE           NOT NULL,
    [CreatedDate]                   DATETIME       NOT NULL,
    [CreatedBy]                     VARCHAR (50)   NOT NULL,
    [LastUpdatedDate]               DATETIME       NOT NULL,
    [LastUpdatedBy]                 VARCHAR (50)   NOT NULL,
    [EffectiveDate]                 DATE           NOT NULL,
    [ExpirationDate]                DATE           NOT NULL,
    [ProductID]                     VARCHAR (60)   NULL,
    [ProductNDC]                    VARCHAR (20)   NULL,
    [ProductTypeName]               VARCHAR (50)   NULL,
    [ProprietaryName]               VARCHAR (400)  NULL,
    [ProprietaryNameSuffix]         VARCHAR (150)  NULL,
    [NonProprietaryName]            VARCHAR (600)  NULL,
    [DosageFormName]                VARCHAR (60)   NULL,
    [RouteName]                     VARCHAR (200)  NULL,
    [StartMarketingDate]            DATE           NULL,
    [EndMarketingDate]              DATE           NULL,
    [MarketingCategoryName]         VARCHAR (50)   NULL,
    [ApplicationNumber]             VARCHAR (20)   NULL,
    [LabelerName]                   VARCHAR (200)  NULL,
    [SubstanceName]                 VARCHAR (5000) NULL,
    [ActiveNumeratorStrength]       VARCHAR (1000) NULL,
    [ActiveIngredUnit]              VARCHAR (2500) NULL,
    [PharmClasses]                  VARCHAR (5000) NULL,
    [DeaSchedule]                   VARCHAR (10)   NULL,
    [NdcExcludeFlag]                CHAR (1)       NULL,
    [ListingRecordCertifiedThrough] DATE           NULL,
    [ACTIVE]                        CHAR (1)       NULL,
    [NdcPackageCode_Clean]          VARCHAR (20)   NULL,
    PRIMARY KEY CLUSTERED ([LstNdcDrugProductKey] ASC)
);


GO

CREATE TRIGGER [lst].AU_LstNdcDrugProduct
ON [lst].LstNdcDrugProduct
AFTER UPDATE 
AS
   UPDATE lst.LstNdcDrugProduct
   SET [LastUpdatedDate] = SYSDATETIME()
    ,[LastUpdatedBy] = SYSTEM_USER	
   FROM Inserted i
   WHERE lst.LstNdcDrugProduct.LstNdcDrugProductKey = i.LstNdcDrugProductKey
   ;
