-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [lst].[ImportlstChronicConditionIndicator](
	@srcFileName [varchar](100),
	@DataDate varchar(10),
	--[CreatedDate] [datetime] NOT NULL,
	@CreatedBy [varchar](50) ,
	--[LastUpdatedDate] [datetime] NOT NULL,
	@LastUpdatedBy [varchar](50),
	@EffectiveDate varchar(10),
	@ExpirationDate varchar(10),
	@Icd10CmCode [varchar](15),
	@Icd10CmDesc [varchar](1000),
	@ChronicIndicator char(1)	
)	

	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    
	  
 INSERT INTO [lst].[lstChronicConditionIndicator]
   (
       [srcFileName]
      ,[DataDate]
      ,[CreatedDate]
      ,[CreatedBy]
      ,[LastUpdatedDate]
      ,[LastUpdatedBy]
      ,[EffectiveDate]
      ,[ExpirationDate]
      ,[Icd10CmCode]
      ,[Icd10CmDesc]
      ,[ChronicIndicator]
   
     )
     VALUES
   (

	@srcFileName ,
	CASE WHEN @DataDate = '' 
	THEN NULL
	ELSE CONVERT(DATE,@DataDate)
	END,
	GETDATE(),
	--[CreatedDate] [datetime] NOT NULL,
	@CreatedBy,
	GETDATE(),
	--[LastUpdatedDate] [datetime] NOT NULL,
	@LastUpdatedBy ,
	CASE WHEN @EffectiveDate = '' 
	THEN NULL
	ELSE CONVERT(DATE,@EffectiveDate)
	END,
	CASE WHEN @ExpirationDate = ''
	THEN NULL
	ELSE CONVERT(DATE,@ExpirationDate)
	END,
	@Icd10CmCode ,
	@Icd10CmDesc ,
	@ChronicIndicator 	
   )
   END


