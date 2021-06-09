﻿-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [lst].[ImportLIST_HCC_CODES]
(
    -- [CreatedDate] [datetime] NULL,
	@CreatedBy [varchar](50),
	--[LastUpdated] [datetime] NULL,
	@LastUpdatedBy [varchar](50),
	@SrcFileName [varchar](50),
	@HCC_No varchar(5),
	@HCC_VERSION [varchar](20),
	@HCC_Description varchar(max),
	@Disease_Hier varchar(50) ,
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
    
	  

 INSERT INTO [lst].[LIST_HCC_CODES]
   (
      [CreatedDate]
      ,[CreatedBy]
      ,[LastUpdated]
      ,[LastUpdatedBy]
      ,[SrcFileName]
      ,[HCC_No]
      ,[HCC_VERSION]
      ,[HCC_Description]
      ,[Disease_Hier]
      ,[ACTIVE]
      ,[EffectiveDate]
      ,[ExpirationDate]
     )
     VALUES
   (
    GETDATE(),
    -- [CreatedDate] [datetime] NULL,
	@CreatedBy,
	GETDATE(),	
	--[LastUpdated] [datetime] NULL,
	@LastUpdatedBy ,
	@SrcFileName ,

	@HCC_No ,
	@HCC_VERSION ,
	@HCC_Description ,
	@Disease_Hier  ,
	@ACTIVE ,
    CASE WHEN @EffectiveDate = '' 
	THEN NULL
	ELSE CONVERT(DATE,@EffectiveDate)
	END,
	CASE WHEN @ExpirationDate = ''
	THEN NULL
	ELSE CONVERT(DATE,@ExpirationDate)
	END
   )
   END


