-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [lst].[ImportlstNdcDrugPackage](
    --[CreatedDate] [datetime] NOT NULL,
	@CreatedBy [varchar](50) ,
	--[LastUpdated] [datetime] NOT NULL,
	@LastUpdatedBy [varchar](50) ,
	@SrcFileName [varchar](50) ,
	@PRODUCTID [varchar](50) ,
	@PRODUCTNDC [varchar](15) ,
	@NDCPACKAGECODE [varchar](20) ,
	@NdcPackageCode_Clean varchar(20),
	@PACKAGEDESCRIPTION [varchar](1000) ,
    @STARTMARKETINGDATE varchar(10),
	@ENDMARKETINGDATE varchar(10),
	@NDC_EXCLUDE_FLAG varchar(10),
	@SAMPLE_PACKAGE varchar(10),
	@EffectiveDate vARCHAR(10),
	@ExpirationDate VARCHAR(10)
)
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    
	--SELECT Name FROM adi.splitstring('2000-022-01') WHERE numOrder=2
     DECLARE @FirstNumber varchar(10), @SecondNumber varchar(10), @ThirdNumber varchar(10)    
     SET @FirstNumber = (SELECT Name FROM adi.splitstring(@NDCPACKAGECODE) WHERE numOrder=1)
	 SET @SecondNumber = (SELECT Name FROM adi.splitstring(@NDCPACKAGECODE) WHERE numOrder=2)
	 SET @ThirdNumber = (SELECT Name FROM adi.splitstring(@NDCPACKAGECODE) WHERE numOrder=3)
	 --print @FirstNumber
	 --Print Len(@FirstNumber)
	 --print @SecondNumber
	 --print Len(@SecondNumber)
	 --print @ThirdNumber
	 --print Len(@ThirdNumber)

	 IF LEN(@FirstNumber) = 4
	 BEGIN 
	  SELECT  @FirstNumber = '0' + @FirstNumber
     END
	 IF LEN(@SecondNumber) = 3
	 BEGIN
	  SELECT @SecondNumber = '0' + @SecondNumber 
     END
	 IF LEN(@ThirdNumber) = 1
	 BEGIN
	  SELECT  @ThirdNumber = '0' + @ThirdNumber    
	 END
	  
	--SET @RecordExist = (Select COUNT(*)
	--FROM adi.NtfUhcErCensus 
	--WHERE SrcFileName = @SrcFileName)
    -- Insert statements for procedure here
--IF(LEN(@VALUE_SET_NAME) > 0)
 BEGIN
 INSERT INTO [lst].[lstNdcDrugPackage]
   (
    [SrcFileName] ,
	[DataDate] ,
	[CreatedDate] ,
	[CreatedBy] ,
	[LastUpdatedDate] ,
	[LastUpdatedBy] ,
	[EffectiveDate] ,
	[ExpirationDate] ,
	[ProductID] ,
	[ProductNdc] ,
	[NdcPackageCode_src] ,
	[NdcPackageCode_Clean] ,
	[PackageDescription] ,
	[srcStartMarketingDate] ,
	[srcEndMarketingDate] ,
	[StartMarketingDate] ,
	[EndMarketingDate] ,
	[NdcExcludeFlag] ,
	[SamplePackage] 
     )
     VALUES
   (   
    @SrcFileName ,
	GETDATE(),  --[CreatedDate] [datetime] NOT NULL,
	GETDATE(),
	@CreatedBy ,
	GETDATE(),
	--[LastUpdated] [datetime] NOT NULL,
	@LastUpdatedBy ,
	CASE WHEN @EffectiveDate = ''
	THEN NULL
	ELSE CONVERT(date,@EffectiveDate)
	END,
	CASE WHEN @ExpirationDate = ''
	THEN NULL
	ELSE CONVERT(date,@ExpirationDate)
	END,
    @PRODUCTID ,
	@PRODUCTNDC  ,
	@NDCPACKAGECODE,
	@FirstNumber + @SecondNumber +@ThirdNumber ,
	@PACKAGEDESCRIPTION  ,
	'',
	'',
	CASE WHEN @STARTMARKETINGDATE = ''
	THEN NULL
	ELSE CONVERT(DATE,@STARTMARKETINGDATE)
	END,
	CASE WHEN @ENDMARKETINGDATE = ''
	THEN NULL
	ELSE CONVERT(DATE, @ENDMARKETINGDATE)
	END,
    @NDC_EXCLUDE_FLAG,
	@SAMPLE_PACKAGE
   )
   END
END

