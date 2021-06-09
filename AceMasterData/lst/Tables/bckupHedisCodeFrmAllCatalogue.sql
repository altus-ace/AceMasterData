CREATE TABLE [lst].[bckupHedisCodeFrmAllCatalogue] (
    [VALUE_SET_NAME]    VARCHAR (100) NULL,
    [VALUE_CODE]        VARCHAR (50)  NULL,
    [VALUE_CODE_NAME]   VARCHAR (MAX) NULL,
    [VALUE_CODE_SYSTEM] VARCHAR (50)  NULL,
    [CODE_SYSTEM_OID]   VARCHAR (50)  NULL,
    [CODE_SYSTEM_VER]   VARCHAR (50)  NULL,
    [ACTIVE]            VARCHAR (2)   NULL,
    [EffectiveDate]     VARCHAR (10)  NOT NULL,
    [ExpirationDate]    VARCHAR (10)  NOT NULL,
    [Status]            VARCHAR (3)   NOT NULL,
    [SrcName]           VARCHAR (13)  NOT NULL,
    [LoadDate]          VARCHAR (10)  NOT NULL,
    [RwCnt]             BIGINT        NULL
);

