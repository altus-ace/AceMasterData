CREATE TABLE [dbo].[z_bckUplstDrgTable] (
    [DRG_CODE]                        NVARCHAR (20)  NULL,
    [DRG_DESC]                        NVARCHAR (150) NULL,
    [DRG_MDC_MAJORDIAGNOSTICCATEGORY] VARCHAR (150)  NULL,
    [MDC_DESC]                        VARCHAR (300)  NULL,
    [MEDMORSURGP]                     VARCHAR (20)   NULL,
    [Drg_Ver]                         INT            NULL,
    [ACTIVE]                          VARCHAR (1)    NULL,
    [Src]                             VARCHAR (14)   NOT NULL,
    [RwCnt]                           BIGINT         NULL
);

