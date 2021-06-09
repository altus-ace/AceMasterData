-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [lst].[ImportICD10CM](

--	[CreatedDate] [datetime] NOT NULL,
	@CreatedBy [varchar](50),
	--[LastUpdated] [datetime] NOT NULL,
	@LastUpdatedBy varchar(50),
	@SrcFileName varchar(50),
	@ACTIVE char(1),
	@EffectiveDate varchar(10),
	@ExpirationDate varchar(10),
	@VALUE_CODE varchar(50),
	@VALUE_CODE_NAME varchar(2000)
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
 INSERT INTO [lst].[LIST_ICD10CM]
   (
	[CreatedDate],
	[CreatedBy] ,
	[LastUpdated] ,
	[LastUpdatedBy] ,
	[SrcFileName] ,
	[ACTIVE] ,
	[EffectiveDate] ,
	[ExpirationDate] ,

	[VALUE_CODE] ,
	[VALUE_CODE_NAME] 
     )
     VALUES
   (
     GETDATE(),
   --	[CreatedDate] [datetime] NOT NULL,
	@CreatedBy,
	GETDATE(),
	--[LastUpdated] [datetime] NOT NULL,
	@LastUpdatedBy,
	@SrcFileName ,
	@ACTIVE ,
	CASE WHEN (LEN(@EffectiveDate) < 8) 
	THEN NULL
	ELSE CONVERT(DATE,@EffectiveDate)
	END,
	CASE WHEN @ExpirationDate = ''
	THEN NULL
	ELSE CONVERT(DATE,@ExpirationDate)
	END,
	@VALUE_CODE ,
	@VALUE_CODE_NAME

   )
   END


