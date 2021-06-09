-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [lst].[ImportCPT](
	--[CreatedDate] [datetime] NOT NULL,
	@CreatedBy [varchar](50),
	--[LastUpdated] [datetime] NOT NULL,
	@LastUpdatedBy [varchar](50) ,
	@SrcFileName [varchar](50) ,
	@CPT_CODE [varchar](20),
	@CPT_DESC [varchar](1000),
	@CPT_VER vARCHAR(5) ,
	@ACTIVE char(1) ,
	@EffectiveDate VARCHAR(10),
	@ExpirationDate VARCHAR(10)
	
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
 INSERT INTO [lst].[List_CPT]
   (
	[CreatedDate] ,
	[CreatedBy] ,
	[LastUpdated] ,
	[LastUpdatedBy] ,
	[SrcFileName] ,
	[CPT_CODE] ,
	[CPT_DESC] ,
	[CPT_VER] ,
	[ACTIVE] ,
	[EffectiveDate] ,
	[ExpirationDate]  
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
	@CPT_CODE ,
	@CPT_DESC ,
	@CPT_VER ,
	@ACTIVE  ,
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


