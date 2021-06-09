


CREATE PROCEDURE	[lst].[usp_lstAllClientPlanMapping]   --[lst].[usp_GetClientQMMapping]
					(@ConnectionString NVARCHAR(MAX)
					--, @ClientKey NVARCHAR(MAX)
					)

AS

BEGIN
				--DECLARE @ConnectionString NVARCHAR(MAX) = 'ACDW_CLMS_AET_TX_COM.lst.LIST_ICD10CM'
				DECLARE	@SqlString NVARCHAR(MAX)
				

			-----Step 4
--Drop all Targets A
--Creates all Targets B
--Insert into all Target C

--A Drop all Targets
	SET @SqlString = N'DROP TABLE ' +  @ConnectionString 
	EXECUTE sp_executesql @SqlString
		--PRINT @SqlString
 
--B Create all Targets
  
--Create Triggers 
	SET @SqlString = 
	N'CREATE TABLE ' + @ConnectionString + '(' +
	'[CreatedDate] [datetime] DEFAULT GETDATE()  NOT NULL ,	'+
	'[CreatedBy] [varchar](50) DEFAULT suser_sname()  NOT NULL ,'+
	'[LastUpdatedDate] [datetime]  DEFAULT GETDATE()  NOT NULL ,'+
	'[LastUpdatedBy] [varchar](50) DEFAULT suser_sname()  NOT NULL ,'+
	'[SrcFileName] [varchar](100) NULL,'+
	'[lstPlanMappingKey] [int] PRIMARY KEY IDENTITY(1,1) NOT NULL,'+
	'[ClientKey] [INT] DEFAULT 0,	'+
	'[TargetSystem] [varchar](20) NULL,'+
	'[SourceValue] [varchar](50) NULL,	'+
	'[TargetValue] [varchar](50) NULL,	'+
	'[EffectiveDate] [date] DEFAULT ''2017-01-01'' NULL,'+
	'[ExpirationDate] [date] DEFAULT ''2099-12-31'' NULL,' +
	'[ACTIVE] [char](1) DEFAULT ''Y'' NULL,' + 
	')'

	--PRINT @SqlString
	EXECUTE sp_executesql @SqlString


--C Insert into all Target 

SET  @SqlString = 
		'SET IDENTITY_INSERT ' + @ConnectionString + ' ON ' +
		N'INSERT INTO ' + @ConnectionString + '('
		+	'[lstPlanMappingKey], [EffectiveDate], [ExpirationDate], [ClientKey], [TargetSystem]
			, [SourceValue], [TargetValue], [CreatedDate], [CreatedBy]
			, [LastUpdatedDate], [LastUpdatedBy], [Active], [SrcFileName]'   + ')' +

		'SELECT	[lstPlanMappingKey], [EffectiveDate], [ExpirationDate], [ClientKey], [TargetSystem]
				, [SourceValue], [TargetValue], [CreatedDate], [CreatedBy]
				, [LastUpdatedDate], [LastUpdatedBy], [Active], [SrcFileName]'
				+
		' FROM		[AceMasterData].[lst].[lstPlanMapping]'
				+
		--' WHERE 		ClientKey'  +' IN ' + '(' + @ClientKey + ')'
		--		+
		'SET IDENTITY_INSERT ' + @ConnectionString + ' OFF '

		--PRINT @SqlString
		EXECUTE sp_executesql @SqlString

END

	
	--Targets
	/*
	SELECT * FROM ACDW_CLMS_DHTX.lst.lstPlanMapping
	SELECT * FROM ACDW_CLMS_SHCN_BCBS.lst.lstPlanMapping
    SELECT * FROM ACDW_CLMS_SHCN_MSSP.lst.lstPlanMapping
	*/
	
		

