-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [lst].[ImportlstGHHCodes](
     --[CreatedDate]
       @CreatedBy varchar(50)
     -- ,[LastUpdatedDate]
      ,@LastUpdatedBy varchar(50)
      --,[LoadDate]
      ,@Type varchar(50)
      ,@Sub_Type varchar(50)
      ,@Code varchar(50)
      ,@GHH_Definition varchar(100)
      ,@ACE_Definition varchar(100)
      ,@SrcFileName varchar(100)
      ,@Active char(1)
      ,@EffectiveDate varchar(10)
      ,@ExpirationDate  varchar(10)
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
--IF(LEN(@Mdc_Code) > 0)
 BEGIN
 INSERT INTO [lst].[lstGHHCodes]
   (
       [CreatedDate]
      ,[CreatedBy]
      ,[LastUpdatedDate]
      ,[LastUpdatedBy]
      ,[LoadDate]
      ,[Type]
      ,[Sub_Type]
      ,[Code]
      ,[GHH_Definition]
      ,[ACE_Definition]
      ,[SrcFileName]
      ,[Active]
      ,[EffectiveDate]
      ,[ExpirationDate]
     )
     VALUES
   ( 
       GETDATE(),
	   --[CreatedDate]
       @CreatedBy
	   ,GETDATE()
     -- ,[LastUpdatedDate]
      ,@LastUpdatedBy 
      ,GETDATE()
	  --,[LoadDate]
      ,@Type 
      ,@Sub_Type 
      ,@Code 
      ,@GHH_Definition 
      ,@ACE_Definition 
      ,@SrcFileName 
      ,@Active 

	,CASE WHEN @EffectiveDate = ''
	THEN NULL
	ELSE CONVERT(DATE, @EffectiveDate)
	END
	,CASE WHEN @ExpirationDate  = ''
	THEN NULL
	ELSE CONVERT(DATE, 	@ExpirationDate )
	END
	)
   END
END

