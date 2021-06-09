CREATE TABLE [lst].[lstGHHCodes] (
    [CreatedDate]     DATETIME      DEFAULT (getdate()) NULL,
    [CreatedBy]       VARCHAR (20)  DEFAULT (suser_sname()) NULL,
    [LastUpdatedDate] DATETIME      DEFAULT (getdate()) NULL,
    [LastUpdatedBy]   VARCHAR (20)  DEFAULT (suser_sname()) NULL,
    [LoadDate]        DATE          DEFAULT (CONVERT([date],getdate())) NULL,
    [ghhKey]          INT           IDENTITY (1, 1) NOT NULL,
    [Type]            VARCHAR (50)  NULL,
    [Sub_Type]        VARCHAR (50)  NULL,
    [Code]            VARCHAR (50)  NULL,
    [GHH_Definition]  VARCHAR (300) NULL,
    [ACE_Definition]  VARCHAR (200) NULL,
    [SrcFileName]     VARCHAR (50)  NULL,
    [Active]          CHAR (1)      DEFAULT ('Y') NULL,
    [EffectiveDate]   DATE          DEFAULT (getdate()) NULL,
    [ExpirationDate]  DATE          DEFAULT ('2099-12-31') NULL,
    PRIMARY KEY CLUSTERED ([ghhKey] ASC)
);

