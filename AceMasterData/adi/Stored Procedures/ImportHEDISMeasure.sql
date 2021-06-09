-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [adi].[ImportHEDISMeasure](
  
    @MEASURE_ID varchar(20),
	@MEASURE_NAME varchar(100),
	@VALUE_SET_NAME varchar(100),
	@VALUE_SET_OID varchar(100),
	@ACTIVE varchar(2) ,
	@EffectiveDate varchar(20) ,
	@ExpirationDate varchar(20) ,
--	@CreatedDate datetime2(7),
	@CreatedBy varchar(50) ,
--	@LastUpdatedDate datetime2(7) ,
	@LastUpdatedBy varchar(50) ,
	@SrcFileName varchar(50) 
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
	

    -- Insert statements for procedure here
--IF(LEN(@PcpID) > 0)
-- BEGIN
 INSERT INTO [lst].[LIST_HEDIS_MEASURES]
   (
    [MEASURE_ID] ,
	[MEASURE_NAME] ,
	[VALUE_SET_NAME] ,
	[VALUE_SET_OID] ,
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

    @MEASURE_ID ,
	@MEASURE_NAME ,
	@VALUE_SET_NAME ,
	@VALUE_SET_OID ,
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


