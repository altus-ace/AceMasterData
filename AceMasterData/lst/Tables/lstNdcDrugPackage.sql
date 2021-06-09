CREATE TABLE [lst].[lstNdcDrugPackage] (
    [lstNdcDrugPackageKey]  INT            IDENTITY (1, 1) NOT NULL,
    [SrcFileName]           VARCHAR (100)  NOT NULL,
    [DataDate]              DATE           DEFAULT (getdate()) NOT NULL,
    [CreatedDate]           DATETIME       DEFAULT (getdate()) NOT NULL,
    [CreatedBy]             VARCHAR (50)   DEFAULT (suser_sname()) NOT NULL,
    [LastUpdatedDate]       DATETIME       DEFAULT (getdate()) NOT NULL,
    [LastUpdatedBy]         VARCHAR (50)   DEFAULT (suser_sname()) NOT NULL,
    [EffectiveDate]         DATE           NOT NULL,
    [ExpirationDate]        DATE           NOT NULL,
    [ProductID]             VARCHAR (60)   NOT NULL,
    [ProductNdc]            VARCHAR (20)   NULL,
    [NdcPackageCode_src]    VARCHAR (20)   NULL,
    [NdcPackageCode_Clean]  VARCHAR (20)   NULL,
    [PackageDescription]    VARCHAR (1000) NULL,
    [srcStartMarketingDate] VARCHAR (20)   NULL,
    [srcEndMarketingDate]   VARCHAR (20)   NULL,
    [StartMarketingDate]    DATE           NULL,
    [EndMarketingDate]      DATE           NULL,
    [NdcExcludeFlag]        VARCHAR (10)   NULL,
    [SamplePackage]         VARCHAR (10)   NULL,
    [Active]                CHAR (1)       NULL,
    PRIMARY KEY CLUSTERED ([lstNdcDrugPackageKey] ASC)
);


GO


CREATE TRIGGER [lst].AU_LstNdcDrugPackage
ON [lst].LstNdcDrugPackage
AFTER UPDATE 
AS
   UPDATE lst.LstNdcDrugPackage
   SET [LastUpdatedDate] = SYSDATETIME()
    ,[LastUpdatedBy] = SYSTEM_USER	
   FROM Inserted i
   WHERE lst.LstNdcDrugPackage.lstNdcDrugPackageKey = i.lstNdcDrugPackageKey 
   ;