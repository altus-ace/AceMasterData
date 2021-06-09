CREATE TABLE [lst].[lstPlanMapping] (
    [lstPlanMappingKey] INT           IDENTITY (1, 1) NOT NULL,
    [EffectiveDate]     DATE          CONSTRAINT [lstPlanMapping_EffDate] DEFAULT (dateadd(day,( -((1)*datepart(dayofyear,getdate())))+(1),CONVERT([date],getdate()))) NULL,
    [ExpirationDate]    DATE          CONSTRAINT [lstPlanMapping_ExpDate] DEFAULT (CONVERT([date],'12/31/2099')) NULL,
    [ClientKey]         INT           NOT NULL,
    [TargetSystem]      VARCHAR (20)  NULL,
    [SourceValue]       VARCHAR (50)  NULL,
    [TargetValue]       VARCHAR (50)  NULL,
    [CreatedDate]       DATETIME2 (7) CONSTRAINT [DF_lstPlanMapping_CreateDate] DEFAULT (getdate()) NOT NULL,
    [CreatedBy]         VARCHAR (50)  CONSTRAINT [DF_lstPlanMapping_CreateBy] DEFAULT (suser_sname()) NOT NULL,
    [LastUpdatedDate]   DATETIME2 (7) CONSTRAINT [DF_lstPlanMapping_LastUpdatedDate] DEFAULT (getdate()) NOT NULL,
    [LastUpdatedBy]     VARCHAR (50)  CONSTRAINT [DF_lstPlanMapping_LastUpdatedBy] DEFAULT (suser_sname()) NOT NULL,
    [Active]            CHAR (1)      NULL,
    [SrcFileName]       VARCHAR (100) NULL,
    PRIMARY KEY CLUSTERED ([lstPlanMappingKey] ASC)
);

