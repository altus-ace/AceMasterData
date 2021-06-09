﻿CREATE TABLE [dbo].[z_LIST_QM_Mapping] (
    [QM]          VARCHAR (20)  NOT NULL,
    [QM_DESC]     VARCHAR (400) NULL,
    [AHR_QM_DESC] VARCHAR (400) NULL,
    [ACTIVE]      VARCHAR (20)  NULL,
    CONSTRAINT [PK_tmp_List_QM_Mappings] PRIMARY KEY CLUSTERED ([QM] ASC)
);

