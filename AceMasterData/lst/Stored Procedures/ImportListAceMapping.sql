-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [lst].[ImportListAceMapping](
    @ClientKey [int] ,
	@MappingTypeKey [int] ,
	@IsActive [tinyint] ,
	@Source [varchar](150) ,
	@Destination [varchar](150) ,
	--[CreatedDate [datetime2](7) ,
	@reatedBy [varchar](50) ,
	--[LastUpdatedDate] [datetime2](7) ,
	@LastUpdatedBy [varchar](50) ,
	@srcFileName [varchar](150) ,
	@EffectiveDate varchar(10) ,
	@ExpirationDate varchar(10) 

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
 INSERT INTO [lst].[ListAceMapping]
   (
	  [ClientKey]
      ,[MappingTypeKey]
      ,[IsActive]
      ,[Source]
      ,[Destination]
      ,[CreatedDate]
      ,[CreatedBy]
      ,[LastUpdatedDate]
      ,[LastUpdatedBy]
      ,[srcFileName]
      ,[EffectiveDate]
      ,[ExpirationDate]
    )
     VALUES
   (

    @ClientKey ,
	@MappingTypeKey  ,
	@IsActive  ,
	@Source  ,
	@Destination  ,
	GETDATE(),
	--[CreatedDate [datetime2](7) ,
	@reatedBy  ,
	GETDATE(),
	--[LastUpdatedDate] [datetime2](7) ,
	@LastUpdatedBy  ,
	@srcFileName  ,

	CASE WHEN @EffectiveDate = ''
	THEN NULL
	ELSE CONVERT(DATE, @EffectiveDate)
	END,
	CASE WHEN @ExpirationDate  = ''
	THEN NULL
	ELSE CONVERT(DATE, @ExpirationDate )
	END
   )
   END


