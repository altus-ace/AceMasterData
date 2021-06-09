



CREATE PROCEDURE	    [lst].[usp_UpdateAllLstTablesForYearEndOps]
					(@ConnectionString NVARCHAR(MAX))
AS

BEGIN				
					--DECLARE @ConnectionString NVARCHAR(MAX) = '[lst].[List_UBREV]'
					DECLARE @ExpirationDate NVARCHAR(MAX) = 'ExpirationDate'
					DECLARE @ExpirationDateOff NVARCHAR(15) = '20991231'
					DECLARE @Active NVARCHAR(MAX) = 'Active'
					DECLARE @EffectiveDateOff NVARCHAR(15) = '20200101'
					DECLARE @ActiveN  NVARCHAR(MAX) = '''N'''		
					DECLARE @EffectiveDate NVARCHAR(MAX) = 'EffectiveDate'
					DECLARE @EffectiveDateOn NVARCHAR(15) = '''20210101'''
					DECLARE @ActiveY  NVARCHAR(MAX) = '''Y'''
					
	
				
				
				--Disable current year
				--Set ExpirationDate to yearEnd and Active to N
				DECLARE	@SqlStringDisableCurrentYear NVARCHAR(MAX) = 
				
				N'UPDATE ' +	@ConnectionString +
				' SET ' +		@ConnectionString + '.' +@ExpirationDate + ' = ' +  'CONVERT(DATE,CONVERT(NVARCHAR(15),' + @ExpirationDateOff + '))'
						+		',' + @ConnectionString + '.' +@Active +  ' = ' + @ActiveN
						+
				' WHERE '		+  @ConnectionString + '.' + @Active + ' = ' + @ActiveY 
				                --+@EffectiveDate  + ' = ' + 'CONVERT(DATE,CONVERT(NVARCHAR(15),' + @EffectiveDateOff + '))'
				
				--PRINT @SqlStringDisableCurrentYear
				EXECUTE sp_executesql @SqlStringDisableCurrentYear
				

				--Enabling Next year Active Status
				DECLARE	@SqlStringEnablePresentYear NVARCHAR(MAX) =				
				N'UPDATE ' +	@ConnectionString +
				' SET ' +		@ConnectionString + '.' +@Active +  ' = ' + @ActiveY +
				' WHERE'+     @ConnectionString + '.' + @EffectiveDate + ' = ' + @EffectiveDateOn

				--PRINT @SqlStringEnablePresentYear
				EXECUTE sp_executesql @SqlStringEnablePresentYear
				
						
				
	
END


--[lst].[usp_UpdateAllLstTablesForYearEndOps]'[lst].[List_UBREV]'


/*
SELECT DISTINCT EFFECTIVEDATE, ACTIVE , EXPIRATIONDATE FROM [lst].[List_UBREV]  --2021-01-01 N 2017-04-18 Y
SELECT DISTINCT EFFECTIVEDATE, ACTIVE , EXPIRATIONDATE FROM [lst].[List_drg]

EFFECTIVEDATE	ACTIVE	EXPIRATIONDATE
2017-04-18			Y	2099-12-31
2021-01-01			N	2099-12-31

  UPDATE	[lst].[List_UBREV] 
  SET		ExpirationDate = '2099-12-31', Active = 'Y'
  WHERE		EFFECTIVEDATE = '2017-04-18'

  UPDATE	[lst].[List_UBREV] 
  SET		ExpirationDate = '2099-12-31', Active = 'N'
  WHERE		EFFECTIVEDATE = '2021-01-01'
  */

