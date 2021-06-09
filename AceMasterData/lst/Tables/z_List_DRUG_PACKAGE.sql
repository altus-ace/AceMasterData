﻿CREATE TABLE [lst].[z_List_DRUG_PACKAGE] (
    [CreatedDate]           DATETIME       DEFAULT (getdate()) NOT NULL,
    [CreatedBy]             VARCHAR (50)   DEFAULT (suser_sname()) NOT NULL,
    [LastUpdated]           DATETIME       DEFAULT (getdate()) NOT NULL,
    [LastUpdatedBy]         VARCHAR (50)   DEFAULT (suser_sname()) NOT NULL,
    [SrcFileName]           VARCHAR (50)   NULL,
    [lstDrugPackageKey]     INT            IDENTITY (1, 1) NOT NULL,
    [PRODUCTID]             VARCHAR (50)   NOT NULL,
    [PRODUCTNDC]            VARCHAR (15)   NOT NULL,
    [NDCPACKAGECODE]        VARCHAR (20)   NOT NULL,
    [PACKAGEDESCRIPTION]    VARCHAR (1000) NOT NULL,
    [NDCPACKAGECODE11DIGIT] VARCHAR (50)   NOT NULL,
    [ACTIVE]                CHAR (1)       DEFAULT ('Y') NULL,
    [EffectiveDate]         DATE           DEFAULT (getdate()) NULL,
    [ExpirationDate]        DATE           DEFAULT ('2099-12-31') NULL,
    PRIMARY KEY CLUSTERED ([lstDrugPackageKey] ASC)
);

