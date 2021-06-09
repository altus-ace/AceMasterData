﻿CREATE TABLE [lst].[NtfConfigClientDiag] (
    [NtfConfigClientDiagKey] INT           IDENTITY (1, 1) NOT NULL,
    [SrcFileName]            VARCHAR (100) NULL,
    [CreatedDate]            DATE          CONSTRAINT [DF_NtfConfigClientDiag_CreatedDate] DEFAULT (getdate()) NOT NULL,
    [CreatedBy]              VARCHAR (50)  CONSTRAINT [DF_NtfConfigClientDiag_CreatedBY] DEFAULT (suser_sname()) NOT NULL,
    [LastUpdatedDate]        DATE          CONSTRAINT [DF_NtfConfigClientDiag_LastUpdatedDate] DEFAULT (getdate()) NOT NULL,
    [LastUpdatedBy]          VARCHAR (50)  CONSTRAINT [DF_NtfConfigClientDiag_LastUpdatedBY] DEFAULT (suser_sname()) NOT NULL,
    [ClientKey]              INT           NOT NULL,
    [NtfType]                VARCHAR (10)  NOT NULL,
    [DiagCode]               VARCHAR (10)  NOT NULL,
    [NtfFollupDays]          INT           NOT NULL,
    [NtfFollupUpAnchorDate]  VARCHAR (10)  NOT NULL,
    PRIMARY KEY CLUSTERED ([NtfConfigClientDiagKey] ASC),
    CONSTRAINT [CK_NtfConfigClientDiag_NtfFollowUpAnchorDate] CHECK ([NtfFollupUpAnchorDate]='discharged' OR [NtfFollupUpAnchorDate]='received'),
    CONSTRAINT [CK_NtfConfigClientDiag_NtfType] CHECK ([NtfType]='PP' OR [NtfType]='MH' OR [NtfType]='ER' OR [NtfType]='IP')
);


GO

CREATE TRIGGER lst.[AU_NtfConfigClientDiag]
ON lst.[NtfConfigClientDiag]
AFTER UPDATE 
AS
   UPDATE lst.[NtfConfigClientDiag]
   SET [LastUpdatedDate] = SYSDATETIME()
	   ,[LastUpdatedBy] = SYSTEM_USER	
   FROM Inserted i
   WHERE lst.[NtfConfigClientDiag].NtfConfigClientDiagKey = i.NtfConfigClientDiagKey
   ;
