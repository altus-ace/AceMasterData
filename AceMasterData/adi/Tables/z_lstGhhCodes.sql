CREATE TABLE [adi].[z_lstGhhCodes] (
    [lstGhhCodesKey]  INT           IDENTITY (1, 1) NOT NULL,
    [srcFileName]     VARCHAR (150) NULL,
    [DataDate]        DATE          NULL,
    [CreatedDate]     DATETIME      CONSTRAINT [DF_lstGhhCodes_CreatedDate] DEFAULT (getdate()) NOT NULL,
    [CreatedBy]       VARCHAR (50)  CONSTRAINT [DF_lstGhhCodes_CreateBy] DEFAULT (suser_sname()) NOT NULL,
    [LastUpdatedDate] DATETIME      CONSTRAINT [DF_lstGhhCodes_LastUpdatedDate] DEFAULT (getdate()) NOT NULL,
    [LastUpdatedBy]   VARCHAR (50)  CONSTRAINT [DF_lstGhhCodes_LastUpdatedBy] DEFAULT (suser_sname()) NOT NULL,
    [Type]            VARCHAR (30)  NULL,
    [SubType]         VARCHAR (30)  NULL,
    [Code]            VARCHAR (30)  NULL,
    [Ghh_Definition]  VARCHAR (250) NULL,
    [Ace_Definition]  VARCHAR (250) NULL,
    PRIMARY KEY CLUSTERED ([lstGhhCodesKey] ASC)
);

