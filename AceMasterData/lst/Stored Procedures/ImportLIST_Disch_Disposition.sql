-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [lst].[ImportLIST_Disch_Disposition](
    --@CreatedDate] [datetime] NOT NULL,
	@CreatedBy [varchar](50) ,
	--[LastUpdated] [datetime] ,
	@LastUpdatedBy [varchar](50) ,
	@SrcFileName [varchar](50) ,
	@DataDate varchar(10),
	@Disch_Disp_Code [varchar](10) ,
   --	[Disch_Disp_CodeValue] [varchar](100),
	@Disch_Disp_Description [varchar](1000),
	@Disch_Disp_CodePadded varchar(10),
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
 INSERT INTO lst.[LIST_Disch_Disposition]
   (
       [CreatedDate]
      ,[CreatedBy]
      ,[LastUpdated]
      ,[LastUpdatedBy]
      ,[SrcFileName]

      ,[DataDate]
      ,[Disch_Disp_Code]
      ,[Disch_Disp_CodePadded]
    --  ,[Disch_Disp_CodeValue]
      ,[Disch_Disp_Description]
      ,[Version]
      ,[ACTIVE]
      ,[EffectiveDate]
      ,[ExpirationDate]      
    )
     VALUES
   ( 
   GETDATE(),
    --@CreatedDate] [datetime] NOT NULL,
	@CreatedBy  ,
	GETDATE(),
	--[LastUpdated] [datetime] ,
	@LastUpdatedBy  ,
	@SrcFileName ,
	CASE WHEN @DataDate = ''
	THEN NULL
	ELSE CONVERT(DATE, @DataDate)
	END,
	@Disch_Disp_Code ,
    @Disch_Disp_CodePadded,
   --	[Disch_Disp_CodeValue] [varchar](100),
	@Disch_Disp_Description ,
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


