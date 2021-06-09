CREATE TABLE [lst].[LIST_ICDCCS] (
    [lstIcdCcsKey]               INT           IDENTITY (1, 1) NOT NULL,
    [srcFileName]                VARCHAR (100) NULL,
    [DataDate]                   DATE          NULL,
    [CreatedDate]                DATETIME      CONSTRAINT [DF_lstIcdCcs_CreatedDate] DEFAULT (getdate()) NOT NULL,
    [CreatedBy]                  VARCHAR (50)  CONSTRAINT [DF_lstIcdCcs_CreateBy] DEFAULT (suser_sname()) NOT NULL,
    [LastUpdatedDate]            DATETIME      CONSTRAINT [DF_lstIcdCcs_LastUpdatedDate] DEFAULT (getdate()) NOT NULL,
    [LastUpdatedBy]              VARCHAR (50)  CONSTRAINT [DF_lstIcdCcs_LastUpdatedBy] DEFAULT (suser_sname()) NOT NULL,
    [EffectiveDate]              DATE          CONSTRAINT [DF_lstIcdCcs_EffDate] DEFAULT ('01/01/2017') NOT NULL,
    [ExpirationDate]             DATE          CONSTRAINT [DF_lstIcdCcs_ExpDate] DEFAULT ('12/31/2099') NOT NULL,
    [ICD-10-CM_CODE]             VARCHAR (500) NULL,
    [CCS_CATEGORY]               VARCHAR (500) NULL,
    [ICD-10-CM_CODE_DESCRIPTION] VARCHAR (500) NULL,
    [CCS_CATEGORY_DESCRIPTION]   VARCHAR (500) NULL,
    [MULTI_CCS_LVL1]             VARCHAR (500) NULL,
    [MULTI_CCS_LVL1_LABEL]       VARCHAR (500) NULL,
    [MULTI_CCS_LVL2]             VARCHAR (500) NULL,
    [MULTI_CCS_LVL2_LABEL]       VARCHAR (500) NULL,
    [MULTI_CCS_LVL3]             VARCHAR (500) NULL,
    [MULTI_CCS_LVL3_LABEL]       VARCHAR (500) NULL,
    [MULTI_CCS_LVL4]             VARCHAR (500) NULL,
    [MULTI_CCS_LVL4_LABEL]       VARCHAR (500) NULL,
    [Version]                    VARCHAR (50)  NULL,
    PRIMARY KEY CLUSTERED ([lstIcdCcsKey] ASC)
);


GO

CREATE TRIGGER [lst].AU_List_ICDCCS
ON [lst].List_ICDCCS
AFTER UPDATE 
AS
   UPDATE lst.List_ICDCCS
   SET [LastUpdatedDate] = SYSDATETIME()
    ,[LastUpdatedBy] = SYSTEM_USER	
   FROM Inserted i
   WHERE lst.LIST_ICDCCS.lstIcdCcsKey= i.lstIcdCcsKey
   ;
