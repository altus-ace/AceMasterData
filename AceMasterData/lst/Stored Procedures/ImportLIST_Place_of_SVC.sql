-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [lst].[ImportLIST_Place_of_SVC](
	--[CreatedDate] [datetime] NOT NULL,
	@CreatedBy [varchar](50) ,
	-- [LastUpdated] [datetime] ,
	@LastUpdatedBy [varchar](50) ,
	@SrcFileName [varchar](50) ,
	--[DataDate] [date] NOT NULL,
	@Place_of_Service_Code [varchar](10) ,
	@Place_of_Service_Name [varchar](100),
	@Place_of_Service_Description [varchar](1000),
	@Version [varchar](50) ,
	@ACTIVE [char](1) ,
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
 INSERT INTO [lst].[LIST_Place_of_SVC]
   (
       [CreatedDate]
      ,[CreatedBy]
      ,[LastUpdated]
      ,[LastUpdatedBy]
      ,[SrcFileName]
      ,[DataDate]
      ,[Place_of_Service_Code]
      ,[Place_of_Service_Name]
      ,[Place_of_Service_Description]
      ,[Version]
      ,[ACTIVE]
      ,[EffectiveDate]
      ,[ExpirationDate]

    )
     VALUES
   ( 
	GETDATE(),
	--[CreatedDate] [datetime] NOT NULL,
	@CreatedBy  ,
	GETDATE(),
	-- [LastUpdated] [datetime] ,
	@LastUpdatedBy  ,
	@SrcFileName  ,
	GETDATE(),
	--[DataDate] [date] NOT NULL,
	@Place_of_Service_Code  ,
	@Place_of_Service_Name,
	@Place_of_Service_Description ,
	@Version ,
	

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


