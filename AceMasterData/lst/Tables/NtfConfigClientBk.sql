﻿CREATE TABLE [lst].[NtfConfigClientBk] (
    [NtfConfigClientKey]    INT           IDENTITY (1, 1) NOT NULL,
    [SrcFileName]           VARCHAR (100) NULL,
    [CreatedDate]           DATE          NOT NULL,
    [CreatedBy]             VARCHAR (50)  NOT NULL,
    [LastUpdatedDate]       DATE          NOT NULL,
    [LastUpdatedBy]         VARCHAR (50)  NOT NULL,
    [ClientKey]             INT           NOT NULL,
    [NtfType]               VARCHAR (10)  NOT NULL,
    [NtfFollupDays]         INT           NOT NULL,
    [NtfFollupUpAnchorDate] VARCHAR (10)  NULL
);

