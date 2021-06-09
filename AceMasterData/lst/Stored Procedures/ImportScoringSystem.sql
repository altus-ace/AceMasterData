-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [lst].[ImportScoringSystem](
   	@SrcFileName [varchar](50),
	@ClientKey [int] ,
	@LOB [varchar](20) ,
	@LOB_State [varchar](10),
	@EffectiveDate varCHAR(10) ,
	@ExpirationDate VARCHAR(10),
	@Active [tinyint] ,
	@ScoringType [varchar](10),
	@P4qIndicator [char](1) ,
	@MeasureID varchar(20) ,
	@MeasureDesc varchar(80),
	@Score_A varchar(15),
	@Score_B varchar(15),
	@Score_C varchar(15),
	@Score_D varchar(15),
	@Score_E varchar(15),
	@Weight_1 [int] ,
	@Weight_2 [int] ,
	@Weight_3 [int] ,
	@Weight_4 [int] ,
	@Weight_5 [int] ,
	@AceQmWeight [int] ,
	@AceCmWeight [int] ,
	@Pq4BaseValue varchar(10),
	--@CreatedDate [datetime2](7) NOT NULL,
	@CreatedBy varchar(50),
	--[LastUpdatedDate] [datetime2](7) NOT NULL,
	@LastUpdatedBy varchar(50) 

)
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    
    -- Insert statements for procedure here
--IF(LEN(@VALUE_SET_NAME) > 0)
 BEGIN
 INSERT INTO [lst].[lstScoringSystem]
   (
      [ClientKey]
      ,[LOB]
      ,[LOB_State]
      ,[EffectiveDate]
      ,[ExpirationDate]
      ,[Active]
      ,[ScoringType]
      ,[P4qIndicator]
      ,[MeasureID]
      ,[MeasureDesc]
      ,[Score_A]
      ,[Score_B]
      ,[Score_C]
      ,[Score_D]
      ,[Score_E]
      ,[Weight_1]
      ,[Weight_2]
      ,[Weight_3]
      ,[Weight_4]
      ,[Weight_5]
      ,[AceQmWeight]
      ,[AceCmWeight]
      ,[Pq4BaseValue]
      ,[CreatedDate]
      ,[CreatedBy]
      ,[LastUpdatedDate]
      ,[LastUpdatedBy]
	  ,[SrcFileName]

    )
     VALUES
   (   
    
	@ClientKey ,
	@LOB  ,
	@LOB_State ,
	@EffectiveDate ,
	@ExpirationDate ,
	@Active  ,
	@ScoringType ,
	@P4qIndicator ,
	@MeasureID  ,
	@MeasureDesc ,
	CASE WHEN @Score_A = ''
	THEN NULL
	ELSE CONVERT(numeric(9,3), @Score_A)
	END,
	CASE WHEN @Score_B = ''
	THEN NULL
	ELSE CONVERT(numeric(9,3), @Score_B)
	END,
	CASE WHEN @Score_C = ''
	THEN NULL
	ELSE CONVERT(numeric(9,3), @Score_C)
	END,
	CASE WHEN @Score_D = ''
	THEN NULL
	ELSE CONVERT(numeric(9,3), @Score_D)
	END,
	CASE WHEN @Score_E = ''
	THEN NULL
	ELSE CONVERT(numeric(9,3), @Score_E)
	END,
	
	@Weight_1  ,
	@Weight_2  ,
	@Weight_3  ,
	@Weight_4 ,
	@Weight_5 ,
	@AceQmWeight ,
	@AceCmWeight  ,
	CASE WHEN @Pq4BaseValue = ''
	THEN NULL
	ELSE CONVERT(money, @Pq4BaseValue)
	END,
	
	GETDATE(),
	--@CreatedDate [datetime2](7) NOT NULL,
	@CreatedBy ,
	GETDATE(),
	--[LastUpdatedDate] [datetime2](7) NOT NULL,
	@LastUpdatedBy ,
	@SrcFileName

 --   GETDATE(),
	--@CreatedBy,
	--GETDATE(),	
	--@LastUpdatedBy ,
	--@SrcFileName ,
	--@DRG_CODE  ,
	--@DRG_DESC ,
	--@DRG_MDC_MajorDiagnosticCategory  ,
	--@MDC_DESC ,
	--@MedMorSurgP  ,
	--@DRG_VER  ,
	--@ACTIVE ,
	--CASE WHEN @EffectiveDate = ''
	--THEN NULL
	--ELSE CONVERT(date,@EffectiveDate)
	--END,
	--CASE WHEN @ExpirationDate = ''
	--THEN NULL
	--ELSE CONVERT(date,@ExpirationDate)
	--END

   )
   END
END

