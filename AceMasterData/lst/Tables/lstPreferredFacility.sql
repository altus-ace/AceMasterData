CREATE TABLE [lst].[lstPreferredFacility] (
    [PreferredFacilityKey] INT           IDENTITY (1, 1) NOT NULL,
    [SourceJobName]        VARCHAR (50)  NOT NULL,
    [LoadDate]             DATE          NOT NULL,
    [DataDate]             DATE          NOT NULL,
    [CreatedDate]          DATETIME      CONSTRAINT [DF_FctProvRoster_CreateDate] DEFAULT (getdate()) NOT NULL,
    [CreatedBy]            VARCHAR (50)  CONSTRAINT [DF_FctProvRoster_CreateBy] DEFAULT (suser_sname()) NOT NULL,
    [LastUpdatedDate]      DATE          CONSTRAINT [DF_FctProvRoster_LastUpdatedDate] DEFAULT (getdate()) NOT NULL,
    [LastUpdatedBy]        VARCHAR (50)  CONSTRAINT [DF_FctProvRoster_LastUpdatedBy] DEFAULT (suser_sname()) NOT NULL,
    [EffectiveDate]        DATE          DEFAULT (getdate()) NOT NULL,
    [ExpirationDate]       DATE          DEFAULT (CONVERT([date],'12/31/2099')) NOT NULL,
    [FacilityName]         VARCHAR (100) NULL,
    [FacilityType]         VARCHAR (10)  NOT NULL,
    [State]                VARCHAR (35)  NOT NULL,
    [Region]               VARCHAR (35)  NOT NULL,
    [NPI]                  VARCHAR (10)  NOT NULL,
    [Active]               CHAR (1)      DEFAULT ('Y') NULL,
    [ClientKey]            INT           NULL,
    PRIMARY KEY CLUSTERED ([PreferredFacilityKey] ASC)
);


GO

CREATE TRIGGER lst.lstPreferredFacilty_AU
ON lst.lstPreferredFacility	   
AFTER UPDATE 
AS
   UPDATE lst.lstPreferredFacility
   SET [LastUpdatedDate] = SYSDATETIME()
	   ,[LastUpdatedBy] = SYSTEM_USER	
   FROM Inserted i
   WHERE lst.lstPreferredFacility.PreferredFacilityKey = i.PreferredFacilityKey
   ;
