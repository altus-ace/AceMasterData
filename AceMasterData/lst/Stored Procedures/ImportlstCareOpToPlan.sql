-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [lst].[ImportlstCareOpToPlan](
    	
	@CreatedBy varchar(50),
	--[LastUpdated] [datetime] NOT NULL,
	@LastUpdatedBy varchar(50),
	@SrcFileName varchar(50) ,
	@ClientKey varchar(10),
	@CsPlan varchar(50),
	@MeasureID varchar(20) ,
	@MeasureDesc varchar(400) ,
	@SubMeasure varchar(100) ,
	@ACTIVE char(1) ,
	@EffectiveDate varchar(12),
	@ExpirationDate varchar(12)

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
IF(LEN(@CsPlan) > 0)
 BEGIN
 INSERT INTO [lst].[lstCareOpToPlan]
   (
    [CreatedDate] ,
	[CreatedBy] ,
	[LastUpdated] ,
	[LastUpdatedBy] ,
	[SrcFileName] ,
	[ClientKey],
	[CsPlan],
	[MeasureID] ,
	[MeasureDesc] ,
	[SubMeasure],
	[ACTIVE],
	[EffectiveDate],
	[ExpirationDate] 
     )
     VALUES
   (
    GETDATE(),   
    @CreatedBy ,
	GETDATE(),
	@LastUpdatedBy ,
	@SrcFileName,
    @ClientKey ,
	@CsPlan,
	@MeasureID ,
	@MeasureDesc,
	@SubMeasure,
	@ACTIVE ,

	CASE WHEN @EffectiveDate = ''
	THEN NULL
	ELSE CONVERT(date,@EffectiveDate)
	END,
	CASE WHEN @ExpirationDate = ''
	THEN NULL
	ELSE CONVERT(date,@ExpirationDate)
	END

   )
   END
   END


