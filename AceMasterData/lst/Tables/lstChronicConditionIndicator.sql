CREATE TABLE [lst].[lstChronicConditionIndicator] (
    [lstCciKey]        INT            IDENTITY (1, 1) NOT NULL,
    [srcFileName]      VARCHAR (100)  NOT NULL,
    [DataDate]         DATE           NOT NULL,
    [CreatedDate]      DATETIME       CONSTRAINT [DF_lstCCI_CreatedDate] DEFAULT (getdate()) NOT NULL,
    [CreatedBy]        VARCHAR (50)   CONSTRAINT [DF_lstCCI_CreatedBY] DEFAULT (suser_sname()) NOT NULL,
    [LastUpdated]      DATETIME       CONSTRAINT [DF_lstCCI_LastUpdated] DEFAULT (getdate()) NOT NULL,
    [LastUpdatedBy]    VARCHAR (50)   CONSTRAINT [DF_lstCCI_LastUpdatedBy] DEFAULT (suser_sname()) NOT NULL,
    [EffectiveDate]    DATE           CONSTRAINT [DF_lstCCI_EffDate] DEFAULT ('01/01/1980') NOT NULL,
    [ExpirationDate]   DATE           CONSTRAINT [DF_lstCCI_TermDate] DEFAULT ('12/31/2099') NOT NULL,
    [Icd10CmCode]      VARCHAR (15)   NULL,
    [Icd10CmDesc]      VARCHAR (1000) NULL,
    [ChronicIndicator] VARCHAR (10)   NULL,
    [BodySystem]       VARCHAR (10)   NULL,
    [Active]           CHAR (1)       NULL,
    PRIMARY KEY CLUSTERED ([lstCciKey] ASC)
);


GO

CREATE TRIGGER [lst].[AU_LstChronicConditionIndicators]
ON [lst].[lstChronicConditionIndicator]
AFTER UPDATE 
AS
   UPDATE lst.[lstChronicConditionIndicator]
   SET [LastUpdated] = SYSDATETIME()
    ,[LastUpdatedBy] = SYSTEM_USER	
   FROM Inserted i
   WHERE lst.[lstChronicConditionIndicator].lstCciKey= i.lstCciKey
   ;
