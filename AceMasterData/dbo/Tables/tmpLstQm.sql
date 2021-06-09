CREATE TABLE [dbo].[tmpLstQm] (
    [id]          INT           IDENTITY (1, 1) NOT NULL,
    [srcfileName] VARCHAR (100) NULL,
    [qm]          VARCHAR (20)  NULL,
    [qm_Desc]     VARCHAR (500) NULL,
    [ahr]         VARCHAR (500) NULL,
    [active]      CHAR (1)      NULL,
    [eff]         DATE          NULL,
    [exp]         DATE          NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);

