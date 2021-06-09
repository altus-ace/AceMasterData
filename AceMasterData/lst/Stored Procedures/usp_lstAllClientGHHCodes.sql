



CREATE PROCEDURE	[lst].[usp_lstAllClientGHHCodes]
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
	'[LastUpdatedDate] [datetime] DEFAULT GETDATE() NOT NULL,'+
	'[LastUpdatedBy] [varchar](50) DEFAULT SUSER_SNAME()  NOT NULL,	'+
	'[LOADDATE] [date] NULL,'+
	'[ghhKey] [int] PRIMARY KEY IDENTITY(1,1) NOT NULL,'+
	'[Type] [varchar](50) NULL,'+
	'[Sub_Type] [varchar](50) NULL,	'+
	'[Code] [varchar](50) NULL,	'+
	'[GHH_Definition] [varchar](300) NULL,	'+
	'[ACE_Definition] [varchar](200) NULL,	'+
	'[SrcFileName] [varchar](50) NULL,	'+
	'[ACTIVE] [char](1) DEFAULT ''Y'' NULL,'+
	'[EffectiveDate] [date] DEFAULT GETDATE() NULL,'+
	'[ExpirationDate] [date] DEFAULT ''2099-12-31'' NULL,' +
	')'

	--PRINT @SqlString
	EXECUTE sp_executesql @SqlString


--C Insert into all Target 

SET  @SqlString = 
		'SET IDENTITY_INSERT ' + @ConnectionString + ' ON ' +
		N'INSERT INTO ' + @ConnectionString + '('
		+	'[CreatedDate], [CreatedBy], [LastUpdatedDate], [LastUpdatedBy], [LoadDate]
		, [ghhKey], [Type], [Sub_Type], [Code], [GHH_Definition], [ACE_Definition]
		, [SrcFileName], [Active], [EffectiveDate], [ExpirationDate]'   + ')' +

		'SELECT		[CreatedDate], [CreatedBy], [LastUpdatedDate], [LastUpdatedBy], [LoadDate]
		, [ghhKey], [Type], [Sub_Type], [Code], [GHH_Definition], [ACE_Definition]
		, [SrcFileName], [Active], [EffectiveDate], [ExpirationDate]	'
				+
		' FROM		[AceMasterData].[lst].[lstGHHCodes]'
				+
		'SET IDENTITY_INSERT ' + @ConnectionString + ' OFF '

		--PRINT @SqlString
		EXECUTE sp_executesql @SqlString

END

	
	/*
	SELECT * FROM ACDW_CLMS_SHCN_MSSP.[lst].[lstGHHCodes]
	SELECT * FROM ACECAREDW.[lst].[lstGHHCodes]
	*/
	
	
