CREATE TABLE [adi].[LIST_NPPES_NPI] (
    [LstNppesNPIKey]     INT           IDENTITY (1, 1) NOT NULL,
    [srcFileName]        VARCHAR (100) NOT NULL,
    [DataDate]           DATE          NOT NULL,
    [CreatedDate]        DATETIME      NOT NULL,
    [CreatedBy]          VARCHAR (50)  NOT NULL,
    [LastUpdatedDate]    DATETIME      NOT NULL,
    [LastUpdatedBy]      VARCHAR (50)  NOT NULL,
    [NPI]                VARCHAR (20)  NOT NULL,
    [EntityType]         VARCHAR (20)  NULL,
    [EIN]                VARCHAR (50)  NULL,
    [LBN]                VARCHAR (100) NULL,
    [LBN_Name]           VARCHAR (200) NULL,
    [LastName]           VARCHAR (100) NULL,
    [FirstName]          VARCHAR (100) NULL,
    [PracticeAddress1]   VARCHAR (100) NULL,
    [PracticeAddress2]   VARCHAR (50)  NULL,
    [PracticeCity]       VARCHAR (100) NULL,
    [PracticeState]      VARCHAR (50)  NULL,
    [PracticeZip]        VARCHAR (10)  NULL,
    [PracticePhone]      VARCHAR (20)  NULL,
    [PracticeFax]        VARCHAR (20)  NULL,
    [PracticeLastUpdate] VARCHAR (20)  NULL,
    [Taxonomy1]          VARCHAR (50)  NULL,
    [Taxonomy2]          VARCHAR (50)  NULL,
    [Taxonomy3]          VARCHAR (50)  NULL,
    CONSTRAINT [PK_tmp_LIST_NPPES] PRIMARY KEY CLUSTERED ([NPI] ASC)
);


GO
CREATE NONCLUSTERED INDEX [ndx_aceMasterDataListNppesNpi]
    ON [adi].[LIST_NPPES_NPI]([NPI] ASC)
    INCLUDE([LBN], [LBN_Name]);

