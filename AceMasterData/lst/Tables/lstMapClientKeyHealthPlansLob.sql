CREATE TABLE [lst].[lstMapClientKeyHealthPlansLob] (
    [skey]            INT           IDENTITY (1, 1) NOT NULL,
    [Healthplan]      VARCHAR (50)  NULL,
    [Lob]             VARCHAR (50)  NULL,
    [ClientKey]       INT           NOT NULL,
    [CreatedDate]     DATETIME      CONSTRAINT [DF_MbrMember_CreateDate] DEFAULT (getdate()) NOT NULL,
    [CreatedBy]       VARCHAR (50)  CONSTRAINT [DF_MbrMember_CreateBy] DEFAULT (suser_sname()) NOT NULL,
    [LastUpdatedDate] DATETIME      CONSTRAINT [DF_MbrMember_LastUpdatedDate] DEFAULT (getdate()) NOT NULL,
    [LastUpdatedBy]   VARCHAR (50)  CONSTRAINT [DF_MbrMember_LastUpdatedBy] DEFAULT (suser_sname()) NOT NULL,
    [srcFileName]     VARCHAR (100) NOT NULL,
    PRIMARY KEY CLUSTERED ([skey] ASC)
);

