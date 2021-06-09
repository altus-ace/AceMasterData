CREATE TABLE [dbo].[UhcCareOpsToPlan] (
    [URN]         INT           IDENTITY (1, 1) NOT NULL,
    [measure]     VARCHAR (250) NULL,
    [subMeasure]  VARCHAR (100) NULL,
    [plan]        VARCHAR (100) NULL,
    [active]      TINYINT       DEFAULT ((1)) NULL,
    [srcFileName] VARCHAR (100) DEFAULT ('UHC_CareOpToPlanMapping2019.xlsx') NULL
);

