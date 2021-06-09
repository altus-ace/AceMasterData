CREATE TABLE [lst].[ListAceMapping] (
    [lstAceMappingKey] INT           IDENTITY (1, 1) NOT NULL,
    [ClientKey]        INT           NOT NULL,
    [MappingTypeKey]   INT           NOT NULL,
    [IsActive]         TINYINT       CONSTRAINT [DF_ListAceMapping_IsActive] DEFAULT ((1)) NOT NULL,
    [Source]           VARCHAR (150) NOT NULL,
    [Destination]      VARCHAR (150) NOT NULL,
    [CreatedDate]      DATETIME2 (7) CONSTRAINT [DF_ListAceMapping_CreateDate] DEFAULT (getdate()) NOT NULL,
    [CreatedBy]        VARCHAR (50)  CONSTRAINT [DF_ListAceMapping_CreateBy] DEFAULT (suser_sname()) NOT NULL,
    [LastUpdatedDate]  DATETIME2 (7) CONSTRAINT [DF_ListAceMapping_LastUpdatedDate] DEFAULT (getdate()) NOT NULL,
    [LastUpdatedBy]    VARCHAR (50)  CONSTRAINT [DF_ListAceMapping_LastUpdatedBy] DEFAULT (suser_sname()) NOT NULL,
    [srcFileName]      VARCHAR (150) NULL,
    [EffectiveDate]    DATE          NOT NULL,
    [ExpirationDate]   DATE          NOT NULL
);

