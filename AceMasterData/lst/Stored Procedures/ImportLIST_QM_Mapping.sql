
CREATE PROCEDURE [lst].[ImportLIST_QM_Mapping](
    	
	@CreatedBy varchar(50),
	--[LastUpdated] [datetime] NOT NULL,
	@LastUpdatedBy varchar(50),
	@SrcFileName varchar(50) ,
	@QM varchar(20) ,
	@QM_DESC varchar(500),
	@AHR_QM_DESC varchar(500),
	@ACTIVE char(1) ,
	@EffectiveDate varchar(12),
	@ExpirationDate varchar(12), 
	@ClientKey int
)
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    
	--SELECT @Ident
	--DECLARE @RecordExist INT
	--SET @RecordExist = (Select COUNT(*)
	--FROM adi.NtfUhcErCensus 
	--WHERE SrcFileName = @SrcFileName)
	 
--	IF @RecordExist =0
	

    -- Insert statements for procedure here
--IF(LEN(@PcpID) > 0)
-- BEGIN
    INSERT INTO [lst].[LIST_QM_Mapping]
    ([CreatedDate], 
    [CreatedBy], 
    [LastUpdated], 
    [LastUpdatedBy], 
    [SrcFileName],     
    [QM], 
    [QM_DESC], 
    [AHR_QM_DESC], 
    [ACTIVE], 
    [EffectiveDate], 
    [ExpirationDate],
	[ClientKey]
    )
    VALUES
    (GETDATE(), 
    @CreatedBy, 
    GETDATE(), 
    @LastUpdatedBy, 
    @SrcFileName,     
    @QM, 
    @QM_DESC, 
    @AHR_QM_DESC, 
    @ACTIVE,
    CASE
	   WHEN @EffectiveDate = ''
	   THEN NULL
	   ELSE CONVERT(DATE, @EffectiveDate)
    END,
    CASE
	   WHEN @ExpirationDate = ''
	   THEN NULL
	   ELSE CONVERT(DATE, @ExpirationDate)
    END
	, @ClientKey
    );
   END


