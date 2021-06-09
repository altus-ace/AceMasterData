﻿CREATE TABLE [lst].[lstCareOpToPlan] (
    [CreatedDate]        DATETIME      DEFAULT (getdate()) NOT NULL,
    [CreatedBy]          VARCHAR (50)  DEFAULT (suser_sname()) NOT NULL,
    [LastUpdated]        DATETIME      DEFAULT (getdate()) NOT NULL,
    [LastUpdatedBy]      VARCHAR (50)  DEFAULT (suser_sname()) NOT NULL,
    [SrcFileName]        VARCHAR (50)  NULL,
    [lstCareOpToPlanKey] INT           IDENTITY (1, 1) NOT NULL,
    [ClientKey]          INT           NOT NULL,
    [CsPlan]             VARCHAR (50)  NOT NULL,
    [MeasureID]          VARCHAR (20)  NOT NULL,
    [MeasureDesc]        VARCHAR (400) NOT NULL,
    [SubMeasure]         VARCHAR (100) NOT NULL,
    [ACTIVE]             CHAR (1)      DEFAULT ('Y') NULL,
    [EffectiveDate]      DATE          DEFAULT (getdate()) NULL,
    [ExpirationDate]     DATE          DEFAULT ('2099-12-31') NULL,
    PRIMARY KEY CLUSTERED ([lstCareOpToPlanKey] ASC)
);

