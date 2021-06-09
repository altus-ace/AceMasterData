-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [lst].[ImportHEDISCode](
    @VALUE_SET_NAME varchar(100) ,
	@VALUE_SET_OID varchar(100),
	@VALUE_SET_VER varchar(50) ,
	@VALUE_CODE varchar(50) ,
	@VALUE_CODE_WithoutDot varchar(50),
	@VALUE_CODE_NAME varchar(max) ,
	@VALUE_CODE_SYSTEM varchar(50) ,
	@CODE_SYSTEM_OID varchar(50) ,
	@CODE_SYSTEM_VER varchar(50) ,
	@A_LAST_UPDATE_DATE datetime ,
	@A_LAST_UPDATE_BY varchar(20) ,
	@A_LAST_UPDATE_FLAG varchar(1) ,
	@ACTIVE varchar(2) ,
	@EffectiveDate varchar(20) ,
	@ExpirationDate varchar(20) ,
--	@CreatedDate datetime2(7),
	@CreatedBy varchar(50) ,
--	@LastUpdatedDate datetime2(7) ,
	@LastUpdatedBy varchar(50) ,
	@SrcFileName varchar(100) 
)
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    
	  
	--DECLARE @RecordExist INT
	--SET @RecordExist = (Select COUNT(*)
	--FROM adi.NtfUhcErCensus 
	--WHERE SrcFileName = @SrcFileName)
	 
--	IF @RecordExist =0
	--- SELECT REPLACE('SQL Tutorial', 'SQL', 'HTML');

    -- Insert statements for procedure here
--IF(LEN(@VALUE_SET_NAME) > 0)
 BEGIN
 INSERT INTO [lst].[LIST_HEDIS_CODE]
   (
   	[VALUE_SET_NAME] ,
	[VALUE_SET_OID] ,
	[VALUE_SET_VER] ,
	[VALUE_CODE] ,
	[VALUE_CODE_WithoutDot],
	[VALUE_CODE_NAME] ,
	[VALUE_CODE_SYSTEM] ,
	[CODE_SYSTEM_OID] ,
	[CODE_SYSTEM_VER] ,
	[A_LAST_UPDATE_DATE] ,
	[A_LAST_UPDATE_BY] ,
	[A_LAST_UPDATE_FLAG] ,
	[ACTIVE] ,
	[EffectiveDate] ,
	[ExpirationDate] ,
	[CreatedDate] ,
	[CreatedBy] ,
	[LastUpdatedDate] ,
	[LastUpdatedBy] ,
	[SrcFileName] 
     )
     VALUES
   (   
    @VALUE_SET_NAME,
	@VALUE_SET_OID ,
	@VALUE_SET_VER ,
	@VALUE_CODE ,
	@VALUE_CODE_WithoutDot,
	@VALUE_CODE_NAME ,
	@VALUE_CODE_SYSTEM ,
	@CODE_SYSTEM_OID ,
	@CODE_SYSTEM_VER ,
	@A_LAST_UPDATE_DATE ,
	@A_LAST_UPDATE_BY ,
	@A_LAST_UPDATE_FLAG ,
	@ACTIVE ,
	CASE WHEN @EffectiveDate = ''
	THEN NULL
	ELSE CONVERT(date,@EffectiveDate)
	END,
	CASE WHEN @ExpirationDate = ''
	THEN NULL
	ELSE CONVERT(date,@ExpirationDate)
	END,

	GETDATE(),
	--@CreatedDate ,
	@CreatedBy ,
	GETDATE(),
	--@LastUpdatedDate ,
	@LastUpdatedBy ,
	@SrcFileName 
   )
   END
END

