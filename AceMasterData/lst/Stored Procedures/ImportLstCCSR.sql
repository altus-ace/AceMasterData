-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [lst].[ImportLstCCSR](
	--[CreatedDate] [datetime] NOT NULL,
	@CreatedBy [varchar](50),
	--[LastUpdated] [datetime] NOT NULL,
	@LastUpdatedBy [varchar](50) ,
	@SrcFileName [varchar](50) ,
    @ACTIVE [char](1),
	@EffectiveDate varchar(10),
	@ExpirationDate varchar(10),
	@ICD10CMCODE varchar(50) ,
	@ICD10CMCODEDESCRIPTION varchar(1000) ,
	@DefaultCCSRCATEGORY varchar(20),
	@DefaultCCSRCATEGORYDESCRIPTION varchar(1000) ,
	@CCSRCATEGORY1 varchar(50),
	@CCSRCATEGORY1DESCRIPTION varchar(1000),
	@CCSRCATEGORY2 varchar(50),
	@CCSRCATEGORY2DESCRIPTION [varchar](1000),
	@CCSRCATEGORY3 varchar(50),
	@CCSRCATEGORY3DESCRIPTION [varchar](1000),
	@CCSRCATEGORY4 varchar(50) ,
	@CCSRCATEGORY4DESCRIPTION varchar(1000),
	@CCSRCATEGORY5 varchar(50),
	@CCSRCATEGORY5DESCRIPTION varchar(1000) 

	
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
 INSERT INTO [lst].[List_CCSR]
   (
	[CreatedDate] ,
	[CreatedBy] ,
	[LastUpdated] ,
	[LastUpdatedBy] ,
	[SrcFileName] ,
	[ACTIVE] ,
	[EffectiveDate] ,
	[ExpirationDate] ,
	[ICD-10-CM CODE] ,
	[ICD-10-CM CODE DESCRIPTION] ,
	[Default CCSR CATEGORY] ,
	[Default CCSR CATEGORY DESCRIPTION] ,
	[CCSR CATEGORY 1] ,
	[CCSR CATEGORY 1 DESCRIPTION] ,
	[CCSR CATEGORY 2] ,
	[CCSR CATEGORY 2 DESCRIPTION] ,
	[CCSR CATEGORY 3] ,
	[CCSR CATEGORY 3 DESCRIPTION] ,
	[CCSR CATEGORY 4] ,
	[CCSR CATEGORY 4 DESCRIPTION] ,
	[CCSR CATEGORY 5] ,
	[CCSR CATEGORY 5 DESCRIPTION] 
    )
     VALUES
   (
   GETDATE(),
   	--[CreatedDate] [datetime] NOT NULL,
	@CreatedBy ,
	GETDATE(),
	--[LastUpdated] [datetime] NOT NULL,
	@LastUpdatedBy  ,
	@SrcFileName ,
    @ACTIVE ,
	CASE WHEN @EffectiveDate = ''
	THEN NULL
	ELSE CONVERT(DATE, @EffectiveDate)
	END,
	CASE WHEN @ExpirationDate  = ''
	THEN NULL
	ELSE CONVERT(DATE, @ExpirationDate )
	END,
	@ICD10CMCODE  ,
	@ICD10CMCODEDESCRIPTION  ,
	@DefaultCCSRCATEGORY ,
	@DefaultCCSRCATEGORYDESCRIPTION  ,
	@CCSRCATEGORY1 ,
	@CCSRCATEGORY1DESCRIPTION ,
	@CCSRCATEGORY2 ,
	@CCSRCATEGORY2DESCRIPTION ,
	@CCSRCATEGORY3 ,
	@CCSRCATEGORY3DESCRIPTION ,
	@CCSRCATEGORY4 ,
	@CCSRCATEGORY4DESCRIPTION ,
	@CCSRCATEGORY5 ,
	@CCSRCATEGORY5DESCRIPTION 

   )
   END


