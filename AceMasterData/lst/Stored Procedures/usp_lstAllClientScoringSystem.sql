




CREATE PROCEDURE	[lst].[usp_lstAllClientScoringSystem]
					(@ConnectionString NVARCHAR(MAX))

AS

BEGIN
				
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
	'[lstScoringSystemKey] [int] PRIMARY KEY IDENTITY(1,1) NOT NULL,' +
	'[ClientKey] [int] NOT NULL,'+
	'[LOB] [varchar](20) NOT NULL,'+
	'[LOB_State] [varchar](10) NULL,'+
	'[EffectiveDate] [date] NULL,'+
	'[ExpirationDate] [date] NULL,'+
	'[Active] [tinyint] DEFAULT (1) NOT NULL,'+
	'[ScoringType] [varchar](10) NULL,'+
	'[P4qIndicator] [char](1) NOT NULL,'+
	'[MeasureID] [varchar](20) NOT NULL,'+
	'[MeasureDesc] [varchar](80) NOT NULL,'+
	'[Score_A] [numeric](9, 3) DEFAULT (0) NULL,'+
	'[Score_B] [numeric](9, 3) DEFAULT (0) NULL,'+
	'[Score_C] [numeric](9, 3) DEFAULT (0) NULL,'+
	'[Score_D] [numeric](9, 3) DEFAULT (0) NULL,'+
	'[Score_E] [numeric](9, 3) DEFAULT (0) NULL,'+
	'[Weight_1] [int] DEFAULT (1) NULL,'+
	'[Weight_2] [int] DEFAULT (1) NULL,'+
	'[Weight_3] [int] DEFAULT (1) NULL,'+
	'[Weight_4] [int] DEFAULT (1) NULL,'+
	'[Weight_5] [int] DEFAULT (1) NULL,'+
	'[AceQmWeight] [int] DEFAULT (1) NULL,'+
	'[AceCmWeight] [int] DEFAULT (1) NULL,'+
	'[Pq4BaseValue] [money] DEFAULT (0)  NULL,'+
	'[CreatedDate] [datetime2](7) DEFAULT (getdate()) NOT NULL,'+
	'[CreatedBy] [varchar](50) DEFAULT (suser_sname()) NOT NULL,'+
	'[LastUpdatedDate] [datetime2](7) DEFAULT (getdate()) NOT NULL,'+
	'[LastUpdatedBy] [varchar](50) DEFAULT (suser_sname()) NOT NULL,'+
	'[SrcFileName] [varchar](100) NULL' +
	')'
		

	--PRINT @SqlString
	EXECUTE sp_executesql @SqlString


--C Insert into all Target 

SET  @SqlString = 
		'SET IDENTITY_INSERT ' + @ConnectionString + ' ON ' +
		N'INSERT INTO ' + @ConnectionString + '('
		+	'[lstScoringSystemKey], [ClientKey], [LOB], [LOB_State], [EffectiveDate], [ExpirationDate]
		, [Active], [ScoringType], [P4qIndicator], [MeasureID], [MeasureDesc], [Score_A]
		, [Score_B], [Score_C], [Score_D], [Score_E], [Weight_1], [Weight_2]
		, [Weight_3], [Weight_4], [Weight_5], [AceQmWeight], [AceCmWeight], [Pq4BaseValue]
		, [CreatedDate], [CreatedBy], [LastUpdatedDate], [LastUpdatedBy], [SrcFileName]'   + ')' +

		'SELECT		[lstScoringSystemKey], [ClientKey], [LOB], [LOB_State], [EffectiveDate]
		, [ExpirationDate], [Active], [ScoringType], [P4qIndicator], [MeasureID], [MeasureDesc]
		, [Score_A], [Score_B], [Score_C], [Score_D], [Score_E], [Weight_1], [Weight_2]
		, [Weight_3], [Weight_4], [Weight_5], [AceQmWeight], [AceCmWeight], [Pq4BaseValue]
		, [CreatedDate], [CreatedBy], [LastUpdatedDate], [LastUpdatedBy], [SrcFileName]	'
				+
		' FROM		[lst].[lstScoringSystem]'
		
				+
		'SET IDENTITY_INSERT ' + @ConnectionString + ' OFF '

		--PRINT @SqlString
		EXECUTE sp_executesql @SqlString

END

	
	--Master -DONT TOUCH
	--SELECT * FROM [lst].[LIST_ICDCCS]
	--Targets
	/*
	SELECT * FROM ACECAREDW.[lst].[lstScoringSystem]
	SELECT * FROM ACDW_CLMS_SHCN_MSSP.[lst].[lstScoringSystem]
	SELECT * FROM ACDW_CLMS_DHTX.[lst].[lstScoringSystem]
	*/
	
	
	
