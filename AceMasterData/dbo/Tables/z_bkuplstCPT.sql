CREATE TABLE [dbo].[z_bkuplstCPT] (
    [CPT_CODE]    VARCHAR (20)  NULL,
    [CPT_DESC]    VARCHAR (150) NULL,
    [CPT_VER]     INT           NULL,
    [ACTIVE]      VARCHAR (1)   NULL,
    [SrcFileName] VARCHAR (18)  NOT NULL,
    [RwCnt]       BIGINT        NULL
);

