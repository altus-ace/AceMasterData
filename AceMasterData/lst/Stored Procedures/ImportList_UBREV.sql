-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [lst].[ImportList_UBREV](
	--[CreatedDate] [datetime] NOT NULL,
	@CreatedBy [varchar](50),
	--[LastUpdated] [datetime] NOT NULL,
	@LastUpdatedBy [varchar](50) ,
	@SrcFileName [varchar](50) ,
	
	@UBREV_CODE [varchar](10) ,
	@UBREV_DESC [varchar](150),
	--[LOAD_DATE] [date] NULL,
	@LOAD_USER [varchar](25) ,
	@ACTIVE [char](1) ,
	@EffectiveDate varchar(10) ,
	@ExpirationDate varchar(10),
	@UBREV_CODE_PADDED [varchar](10)
	
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
 INSERT INTO [lst].[List_UBREV]
   (
	[CreatedDate],
	[CreatedBy],
	[LastUpdated],
	[LastUpdatedBy] ,
	[SrcFileName],
	[UBREV_CODE] ,
	[UBREV_DESC] ,
	[LOAD_DATE] ,
	[LOAD_USER] ,
	[ACTIVE] ,
	[EffectiveDate],
	[ExpirationDate] ,
	[UBREV_CODE_PADDED] 
    )
     VALUES
   (
   GETDATE(),
   	--[CreatedDate] [datetime] NOT NULL,
	@CreatedBy,
	GETDATE(),
	--[LastUpdated] [datetime] NOT NULL,
	@LastUpdatedBy ,
	@SrcFileName  ,
	
	@UBREV_CODE  ,
	@UBREV_DESC ,
	GETDATE(),
	--[LOAD_DATE],
	@LOAD_USER ,
	@ACTIVE ,
	CASE WHEN @EffectiveDate = ''
	THEN NULL
	ELSE CONVERT(DATE, @EffectiveDate)
	END,
	CASE WHEN @ExpirationDate  = ''
	THEN NULL
	ELSE CONVERT(DATE, @ExpirationDate )
	END,
	@UBREV_CODE_PADDED 


   )
   END


