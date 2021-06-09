-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [lst].[ImportLstHEDIS_2020_ValueSet]
(
    @SrcFileName varchar(100),
	@ValueSetName [varchar](200) ,
	@ValueSetOID [varchar](200),
	@ValueSetVersion [varchar](200),
	@Code [varchar](200),
	@Definition [varchar](200),
	@CodeSystem [varchar](200) ,
	@CodeSystemOID [varchar](200),
	@CodeSystemVersion [varchar](200) 
	
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
 INSERT INTO [lst].[HEDIS_2020_ValueSet]
   (
	[Value Set Name],
	[Value Set OID] ,
	[Value Set Version] ,
	[Code] ,
	[Definition] ,
	[Code System],
	[Code System OID] ,
	[Code System Version] ,
    [SrcFileName]

    )
     VALUES
   (
    @ValueSetName ,
	@ValueSetOID ,
	@ValueSetVersion ,
	@Code ,
	@Definition ,
	@CodeSystem ,
	@CodeSystemOID ,
	@CodeSystemVersion ,
	@SrcFileName
	)
   END


