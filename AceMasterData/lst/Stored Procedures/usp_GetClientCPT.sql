﻿


CREATE PROCEDURE	[lst].[usp_GetClientCPT]
					(@ConnectionString NVARCHAR(MAX))

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
	'[CreatedDate] [datetime] DEFAULT GETDATE() NOT NULL,'+
	'[CreatedBy] [varchar](50) DEFAULT SUSER_SNAME() NOT NULL,'+
	'[LastUpdated] [datetime] DEFAULT GETDATE() NOT NULL,'+
	'[LastUpdatedBy] [varchar](50) DEFAULT SUSER_SNAME()  NOT NULL,	'+
	'[SrcFileName] [varchar](50) NULL,'+
	'[lstCPTKey] [int] PRIMARY KEY IDENTITY(1,1) NOT NULL,	'+
	'[CPT_CODE] [varchar](20) NULL,	'+
	'[CPT_DESC] [varchar](100) NULL,'+
	'[CPT_VER] [int] NULL,'+
	'[ACTIVE] [char](1) DEFAULT ''Y'' NULL,'+
	'[EffectiveDate] [date] DEFAULT GETDATE() NULL,	'+
	'[ExpirationDate] [date] DEFAULT ''2099-12-31'' NULL' +
	'[Status] [char](1) NULL,'+
	')'

	--PRINT @SqlString
	EXECUTE sp_executesql @SqlString


--C Insert into all Target 

SET  @SqlString = 
		'SET IDENTITY_INSERT ' + @ConnectionString + ' ON ' +
		N'INSERT INTO ' + @ConnectionString + '('
		+	' [SrcFileName], [lstCPTKey]
		, [CPT_CODE], [CPT_DESC], [CPT_VER], [ACTIVE], [EffectiveDate], [ExpirationDate]'   + ')' +

		'SELECT	[SrcFileName]
		, [lstCPTKey], [CPT_CODE], [CPT_DESC], [CPT_VER], [ACTIVE], [EffectiveDate], [ExpirationDate]	'
				+
		' FROM		[AceMasterData].[lst].[LIST_CPT]'
				+
		'SET IDENTITY_INSERT ' + @ConnectionString + ' OFF '

		--PRINT @SqlString
		EXECUTE sp_executesql @SqlString

END

	
	--Master -DONT TOUCH
	--SELECT * FROM [lst].[LIST_CPT]
	--Targets
	/*
	SELECT * FROM ACDW_CLMS_CCACO.lst.List_CPT
	SELECT	 * FROM ACDW_CLMS_NLH.dbo.List_CPT
	SELECT	 *  FROM Ace_Portal_Staging.dbo.List_CPT
	SELECT	*  FROM ACECAREDW_TEST.dbo.List_CPT
	SELECT	* FROM ACECAREDW_TEST.dbo.[tmp.List_CPT]
	SELECT * FROM ACDW_CLMS_UHC.lst.List_CPT
	SELECT * FROM ACDW_CLMS_DHTX.lst.List_CPT
	*/
	

