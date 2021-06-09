-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [lst].[ImportLIST_Prov_Specialty_Codes](
	--[CreatedDate] [datetime] NOT NULL,
	@CreatedBy [varchar](50),
	--[LastUpdated] [datetime] NOT NULL,
	@LastUpdatedBy [varchar](50) ,
	@SrcFileName [varchar](50) ,
	

	@Code [varchar](20) ,
	@CodeDesc [varchar](500) ,
	@ACTIVE [char](1) ,
	@EffectiveDate varchar(10),
	@ExpirationDate varchar(10),
	@Prov_Class [varchar](50) 


	
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
 INSERT INTO [lst].[LIST_Prov_Specialty_Codes]
   (
	[CreatedDate]
      ,[CreatedBy]
      ,[LastUpdated]
      ,[LastUpdatedBy]
      ,[SrcFileName]
     
      ,[Code]
      ,[CodeDesc]
      ,[ACTIVE]
      ,[EffectiveDate]
      ,[ExpirationDate]
      ,[Prov_Class]

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
	

	

	@Code  ,
	@CodeDesc  ,

	@ACTIVE ,
	CASE WHEN @EffectiveDate = ''
	THEN NULL
	ELSE CONVERT(DATE, @EffectiveDate)
	END,
	CASE WHEN @ExpirationDate  = ''
	THEN NULL
	ELSE CONVERT(DATE, @ExpirationDate )
	END,
	@Prov_Class


   )
   END


