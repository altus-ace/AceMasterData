-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [lst].[ImportLstPlanMapping](
    @EffectiveDate varchar(10),
	@ExpirationDate varchar(10),
	@ClientKey varchar(5),
	@TargetSystem varchar(20) ,
	@SourceValue varchar(50),
	@TargetValue [varchar](50),
	--[CreatedDate] [datetime2](7) NOT NULL,
	@CreatedBy [varchar](50),
	--[LastUpdatedDate] [datetime2](7) NOT NULL,
	@LastUpdatedBy [varchar](50) ,
	@Active [char](1),
	@SrcFileName [varchar](100) 

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
 INSERT INTO [lst].[lstPlanMapping]
   (
       [EffectiveDate]
      ,[ExpirationDate]
      ,[ClientKey]
      ,[TargetSystem]
      ,[SourceValue]
      ,[TargetValue]
      ,[CreatedDate]
      ,[CreatedBy]
      ,[LastUpdatedDate]
      ,[LastUpdatedBy]
      ,[Active]
      ,[SrcFileName]

    )
     VALUES
   (   
    CASE WHEN @EffectiveDate = ''
	THEN NULL
	ELSE CONVERT(DATE,@EffectiveDate)
	END ,
	CASE WHEN @ExpirationDate  = ''
	THEN NULL
	ELSE CONVERT(DATE, @ExpirationDate)
	END ,
	@ClientKey ,
	@TargetSystem ,
	@SourceValue ,
	@TargetValue ,
	GETDATE(),
	--[CreatedDate] [datetime2](7) NOT NULL,
	@CreatedBy ,
	GETDATE(),
	--[LastUpdatedDate] [datetime2](7) NOT NULL,
	@LastUpdatedBy ,
	 @Active ,
	
	@SrcFileName 

   )
   END
END

