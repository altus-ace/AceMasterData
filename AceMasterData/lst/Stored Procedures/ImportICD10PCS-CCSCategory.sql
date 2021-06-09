-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [lst].[ImportICD10PCS-CCSCategory]( 
    --[CreatedDate] [datetime] NULL,
	@CreatedBy [varchar](20) ,
	--@LastUpdatedDate [datetime] NULL,
	@LastUpdatedBy [varchar](20) ,
	--@LoadDate [date] NULL,
	@ICD10PCSCode [varchar](50) ,
	@CCSCategory [char](5) ,
	@ICD10PCSCodeDescription [varchar](150) ,
	@CCSCategoryDescription [varchar](150) ,
	@MultiCCSLvl1 [char](5) ,
	@MultiCCSLvl1Label [varchar](150) ,
	@MultiCCSLvl2 varchar(5) ,
	@MultiCCSLvl2Label [varchar](150) ,
	@ACTIVE [char](1),
	@EffectiveDate varchar(10),
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
 INSERT INTO [lst].[List_ICD10PCScwCCSCategory]
   (
    [CreatedDate] ,
	[CreatedBy] ,
	[LastUpdatedDate] ,
	[LastUpdatedBy] ,
	[LoadDate],
	[ICD10PCSCode] ,
	[CCSCategory] ,
	[ICD10PCSCodeDescription] ,
	[CCSCategoryDescription] ,
	[MultiCCSLvl1] ,
	[MultiCCSLvl1Label] ,
	[MultiCCSLvl2] ,
	[MultiCCSLvl2Label] ,
	[ACTIVE] ,
	[EffectiveDate] ,
	[ExpirationDate] 
    )
     VALUES
   (
   GETDATE(),
    --[CreatedDate] [datetime] NULL,
	@CreatedBy ,
	GETDATE(),
	--@LastUpdatedDate [datetime] NULL,
	@LastUpdatedBy ,
	GETDATE(),
	--@LoadDate [date] NULL,
	@ICD10PCSCode ,
	@CCSCategory  ,
	@ICD10PCSCodeDescription ,
	@CCSCategoryDescription  ,
	@MultiCCSLvl1  ,
	@MultiCCSLvl1Label  ,
	--CASE WHEN 	@MultiCCSLvl2  = ''
	--THEN NULL
	--ELSE CONVERT(int, 	@MultiCCSLvl2 )
	--END,	
	@MultiCCSLvl2,
	@MultiCCSLvl2Label ,
	@ACTIVE ,


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


