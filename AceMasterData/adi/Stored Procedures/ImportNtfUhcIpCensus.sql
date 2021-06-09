-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [adi].[ImportNtfUhcIpCensus](
    @LOB varchar(10) ,
	@PatientName varchar(100),
	@RosterSubgroup varchar(50) ,
	@PatientIdentifier varchar(50) ,
	@IndvID varchar(20),
	@Alt_ID varchar(20),
	@PatientBirthDate VARCHAR(10),
	@PatientGender varchar(3) ,
	@PrimaryLanguage varchar(50) ,
	@Address varchar(255),
	@City varchar(65),
	@State varchar(25),
	@Zip varchar(15),
	@ContactPhoneNumber varchar(25) ,
	@AlternativePhoneNumber varchar(25) ,
	@HospitalState varchar(10) ,
	@ProviderIdentifiedMPIN varchar(14),
	@HospitalName varchar(100),
	@AttendingPhysicianIdMPIN varchar(15),
	@AttendingPhysicianName varchar(100),
	@PrimaryCarePhysicianName varchar(100) ,
	@AdmissionDate varchar(10),
	@DischargeDate varchar(10),
	@AdmissionDateReported varchar(10),
	@DateDcReported varchar(10),
	@PrimaryDiagnosisCode varchar(10),
	@PrimaryDiagnosisDesc varchar(255),
	@AHRQ_Diagnosis_Category varchar(50),
	@ACSC_HPC varchar(50),
	@HAI_POA Varchar(50),
	@TypeOfFacility varchar(10),
	@DispositionDesc varchar(255),
	@CaseStatus varchar(10) ,
	@ReAdmissionDays varchar(5),
	@LengthOfStay int,
	@RpmScore varchar(10),
	@RstScore varchar(5),
	@IdDate varchar(10),
	@PrimaryCarePhysicianNPI varchar(10),
	@PatientCardID varchar(50),
	@LoadDate varchar(12),
	@DataDate varchar(12),
	@SrcFileName varchar(100),
	@CreatedBy varchar(50),
--	@LastUpdatedDate datetime,
	@LastUpdatedBy varchar(50)
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
	BEGIN     
	EXEC [ACECAREDW].[adi].[ImportNtfUhcIpCensus] 
	@LOB,
	@PatientName,
	@RosterSubgroup ,
	@PatientIdentifier ,
	@IndvID ,
	@Alt_ID ,
	@PatientBirthDate,
	@PatientGender  ,
	@PrimaryLanguage  ,
	@Address ,
	@City ,
	@State ,
	@Zip ,
	@ContactPhoneNumber  ,
	@AlternativePhoneNumber ,
	@HospitalState  ,
	@ProviderIdentifiedMPIN ,
	@HospitalName ,
	@AttendingPhysicianIdMPIN ,
	@AttendingPhysicianName ,
	@PrimaryCarePhysicianName ,
	@AdmissionDate ,
	@DischargeDate,
	@AdmissionDateReported ,
	@DateDcReported ,
	@PrimaryDiagnosisCode ,
	@PrimaryDiagnosisDesc ,
	@AHRQ_Diagnosis_Category ,
	@ACSC_HPC ,
	@HAI_POA ,
	@TypeOfFacility ,
	@DispositionDesc ,
	@CaseStatus ,
	@ReAdmissionDays ,
	@LengthOfStay ,
	@RpmScore ,
	@RstScore ,
	@IdDate,
	@PrimaryCarePhysicianNPI ,
	@PatientCardID ,
	@LoadDate ,
	@DataDate ,
	@SrcFileName ,
	@CreatedBy ,
	@LastUpdatedBy 

	END
END
    -- Insert statements for procedure here
--IF(LEN(@PcpID) > 0)
-- BEGIN
-- INSERT INTO adi.NtfUhcErCensus
--   (
--   	[PcpID],
--	[PcpFirstName],
--	[PcpLastName],
--	[PatientFirstName] ,
--	[PatientLastName] ,
--	[PatientId] ,
--	[RosterSubGroup] ,
--	[PatientCardID] ,
--	[MemberHealthPlanNumber],
--	[PatientBirthDate] ,
--	[PatientGender] ,
--	[PrimaryLanguage],
--	[Address] ,
--	[City] ,
--	[State] ,
--	[Zip],
--	[ContactPhoneNumber],
--	[AlternativePhoneNumber],
--	[LOB] ,
--	[ServiceDate],
--	[AdmitTime] ,
--	[DischargeTime],
--	[ServiceDateReported],
--	[DayOfWeek] ,
--	[ReOccuranceWithin30Days],
--	[AvoidableERVisit],
--	[LastIpVisitDate] ,
--	[PrimaryDiagnosisCode],
--	[PrimaryDiagnosisDescription] ,
--	[AttendingPhysicianFirstName] ,
--	[AttendingPhysicianLastName] ,
--	[FacilityName] ,
--	[FacilityState],
--	[PcpNpi] ,
--	[LoadDate] ,
--	[DataDate] ,
--	[SrcFileName],
--	[CreatedDate] ,
--	[CreatedBy] ,
--	[LastUpdatedDate] ,
--	[LastUpdatedBy]    
--     )
--     VALUES
--   (   
--    @PcpID ,
--	@PcpFirstName ,
--	@PcpLastName ,
--	@PatientFirstName ,
--	@PatientLastName ,
--	@PatientId,
--	@RosterSubGroup,
--	@PatientCardID ,
--	@MemberHealthPlanNumber,
--	CASE WHEN (@PatientBirthDate ='')
--	THEN NULL
--	ELSE @PatientBirthDate 
--	END,
--	@PatientGender ,
--	@PrimaryLanguage ,
--	@Address ,
--	@City ,
--	@State ,
--	@Zip ,
--	@ContactPhoneNumber ,
--	@AlternativePhoneNumber  ,
--	@LOB,
--	CASE WHEN (@ServiceDate ='')
--	THEN NULL
--	ELSE CONVERT(date, @ServiceDate)
--	END ,
--	@AdmitTime  ,
--	@DischargeTime ,
--	CASE WHEN (@ServiceDateReported = '')
--	THEN NULL
--	ELSE CONVERT(date,@ServiceDateReported)
--	END,
--	@DayOfWeek  ,
--	@ReOccuranceWithin30Days ,
--	@AvoidableERVisit  ,
--	@LastIpVisitDate ,
--	@PrimaryDiagnosisCode ,
--	@PrimaryDiagnosisDescription  ,
--	@AttendingPhysicianFirstName ,
--	@AttendingPhysicianLastName,
--	@FacilityName  ,
--	@FacilityState  ,
--	@PcpNpi ,
--	GETDATE(),
--	--@LoadDate  ,
--    CONVERT(date, RIGHT( Substring(@SrcFileName,1, (PATINDEX('%.csv%', @SrcFileName)-1)), 8)),
----	Convert(date,@DataDate) ,
--	@SrcFileName,
--	GETDATE(),
--	--[CreatedDate] datetime],
--	@CreatedBy ,
--	GETDATE(),
--	--@LastUpdatedDate datetime,
--	@LastUpdatedBy 
--   )
--   END
--END

