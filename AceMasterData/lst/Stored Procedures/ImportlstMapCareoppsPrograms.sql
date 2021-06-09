-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [lst].[ImportlstMapCareoppsPrograms](
    	
	--[CreatedDate] [datetime] NOT NULL,
	@CreatedBy varchar(50) ,
	--[LastUpdated] [datetime] NOT NULL,
	@LastUpdatedBy varchar(50) ,
	@SrcFileName varchar(50) ,
	@SOURCE varchar(50),
	@SOURCE_MEASURE_NAME varchar(1000),
	@SOURCE_SUB_MEASURE_NAME varchar(1000),
	@DESTINATION varchar(50),
	@DESTINATION_PROGRAM_NAME varchar(1000),
	@IS_ACTIVE varchar(5),
	@Criteria char(10) ,
	@ACE_PROG_ID varchar(50),
	@ACTIVE char(1) ,
	@EffectiveDate varchar(12),
	@ExpirationDate varchar(12) ,
	@ClientKey int

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
IF(LEN(@SOURCE) > 0)
 BEGIN
 INSERT INTO [lst].[lstMapCareoppsPrograms]
   (
     [CreatedDate] ,
	[CreatedBy] ,
	[LastUpdated] ,
	[LastUpdatedBy] ,
	[SrcFileName] ,
	[SOURCE] ,
	[SOURCE_MEASURE_NAME],
	[SOURCE_SUB_MEASURE_NAME] ,
	[DESTINATION] ,
	[DESTINATION_PROGRAM_NAME],
	[IS_ACTIVE] ,
	[Criteria] ,
	[ACE_PROG_ID] ,
	[ACTIVE] ,
	[EffectiveDate] ,
	[ExpirationDate],
    [ClientKey]
     )
     VALUES
   (
    GETDATE(),
	--[CreatedDate] [datetime] NOT NULL,
	@CreatedBy ,
	--[LastUpdated] [datetime] NOT NULL,
	GETDATE(),
	@LastUpdatedBy  ,
	@SrcFileName ,
	@SOURCE ,
	@SOURCE_MEASURE_NAME ,
	@SOURCE_SUB_MEASURE_NAME ,
	@DESTINATION ,
	@DESTINATION_PROGRAM_NAME ,
	@IS_ACTIVE ,
	@Criteria  ,
	@ACE_PROG_ID ,
	@ACTIVE ,
	CASE WHEN @EffectiveDate = ''
	THEN NULL
	ELSE CONVERT(date,@EffectiveDate)
	END,
	CASE WHEN @ExpirationDate = ''
	THEN NULL
	ELSE CONVERT(date,@ExpirationDate)
	END,
	@ClientKey
   )
  END
END
