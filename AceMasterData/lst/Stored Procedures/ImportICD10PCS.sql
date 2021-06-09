-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [lst].[ImportICD10PCS](
   --[CreatedDate] [datetime] NOT NULL,
	@CreatedBy varchar(50) ,
	--[LastUpdated] [datetime] NOT NU,
	@LastUpdatedBy varchar(50),
	@SrcFileName varchar(50) ,
    @ICD10PCS_Code varchar(20),
	@ICD10PCS_Desc varchar(1000),
	@ICD10PCS_CodeCategory varchar(20),
	@ACTIVE char(1),
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
--IF(LEN(@PcpID) > 0)
-- BEGIN
 INSERT INTO [lst].LIST_ICD10PCS
   (
    [CreatedDate] ,
	[CreatedBy] ,
	[LastUpdated] ,
	[LastUpdatedBy] ,
	[SrcFileName] ,
	[ICD10PCS_Code] ,
	[ICD10PCS_Desc] ,
	[ICD10PCS_CodeCategory] ,
	[Active] ,
	[EffectiveDate] ,
	[ExpirationDate] 
     )
     VALUES
   (
    GETDATE(),
	@CreatedBy ,
	GETDATE(),
	--[LastUpdated] [datetime] NOT NU,
	@LastUpdatedBy ,
	@SrcFileName ,
	@ICD10PCS_Code ,
	@ICD10PCS_Desc ,
	@ICD10PCS_CodeCategory,
	@ACTIVE ,
	CASE WHEN (LEN(@EffectiveDate) < 8) 
	THEN NULL
	ELSE CONVERT(DATE,@EffectiveDate)
	END,
	CASE WHEN @ExpirationDate = ''
	THEN NULL
	ELSE CONVERT(DATE,@ExpirationDate)
	END

   )
   END


