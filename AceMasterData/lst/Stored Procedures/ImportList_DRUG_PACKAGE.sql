-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [lst].[ImportList_DRUG_PACKAGE](
    --[CreatedDate] [datetime] NOT NULL,
	@CreatedBy [varchar](50) ,
	--[LastUpdated] [datetime] NOT NULL,
	@LastUpdatedBy [varchar](50) ,
	@SrcFileName [varchar](50) ,
	@PRODUCTID [varchar](50) ,
	@PRODUCTNDC [varchar](15) ,
	@NDCPACKAGECODE [varchar](20) ,
	@PACKAGEDESCRIPTION [varchar](1000) ,
	@NDCPACKAGECODE11DIGIT [varchar](50) ,
	@ACTIVE [char](1) ,
	@EffectiveDate vARCHAR(10),
	@ExpirationDate VARCHAR(10)
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
 INSERT INTO [lst].[List_DRUG_PACKAGE]
   (
    [CreatedDate] ,
	[CreatedBy] ,
	[LastUpdated] ,
	[LastUpdatedBy] ,
	[SrcFileName] ,
	[PRODUCTID] ,
	[PRODUCTNDC] ,
	[NDCPACKAGECODE] ,
	[PACKAGEDESCRIPTION] ,
	[NDCPACKAGECODE11DIGIT] ,
	[ACTIVE] ,
	[EffectiveDate] ,
	[ExpirationDate] 
     )
     VALUES
   (   
    GETDATE(),  --[CreatedDate] [datetime] NOT NULL,
	@CreatedBy ,
	GETDATE(),
	--[LastUpdated] [datetime] NOT NULL,
	@LastUpdatedBy ,
	@SrcFileName ,
	@PRODUCTID ,
	@PRODUCTNDC  ,
	@NDCPACKAGECODE,
	@PACKAGEDESCRIPTION  ,
	@NDCPACKAGECODE11DIGIT ,
	

	@ACTIVE ,
	CASE WHEN @EffectiveDate = ''
	THEN NULL
	ELSE CONVERT(date,@EffectiveDate)
	END,
	CASE WHEN @ExpirationDate = ''
	THEN NULL
	ELSE CONVERT(date,@ExpirationDate)
	END
   )
   END
END

