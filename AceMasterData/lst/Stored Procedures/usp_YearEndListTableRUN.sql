
CREATE PROCEDURE [lst].[usp_YearEndListTableRUN]

AS

BEGIN

	
	EXECUTE [lst].[usp_UpdateAllLstTablesForYearEndOps]'[lst].[LIST_ICD10CM]'
	EXECUTE [lst].[usp_UpdateAllLstTablesForYearEndOps]'[lst].[LIST_ICDcwHCC]'
	EXECUTE [lst].[usp_UpdateAllLstTablesForYearEndOps]'[lst].[LIST_NPPES_NPI]'
	EXECUTE [lst].[usp_UpdateAllLstTablesForYearEndOps]'[lst].[lstChronicConditionIndicator]' 
	EXECUTE [lst].[usp_UpdateAllLstTablesForYearEndOps]'[lst].[list_Drg]'
	EXECUTE [lst].[usp_UpdateAllLstTablesForYearEndOps]'[lst].[LIST_MDC]'
	EXECUTE [lst].[usp_UpdateAllLstTablesForYearEndOps]'[lst].[lstNdcDrugProduct]'
	EXECUTE [lst].[usp_UpdateAllLstTablesForYearEndOps]'[lst].[lstNdcDrugPackage]'
	EXECUTE [lst].[usp_UpdateAllLstTablesForYearEndOps]'[lst].[list_Icd10Pcs]'
	EXECUTE [lst].[usp_UpdateAllLstTablesForYearEndOps]'[lst].[list_CPT]'
	EXECUTE [lst].[usp_UpdateAllLstTablesForYearEndOps]'[lst].[LIST_HCPCS]'
	EXECUTE [lst].[usp_UpdateAllLstTablesForYearEndOps]'[lst].[List_UBREV]' 
	EXECUTE [lst].[usp_UpdateAllLstTablesForYearEndOps]'[lst].[LIST_Place_of_SVC]'
	EXECUTE [lst].[usp_UpdateAllLstTablesForYearEndOps]'[lst].[LIST_PROV_SPECIALTY_CODES]'
	EXECUTE [lst].[usp_UpdateAllLstTablesForYearEndOps]'[lst].[LIST_ICDcwHCC]'
	EXECUTE [lst].[usp_UpdateAllLstTablesForYearEndOps]'[lst].[LIST_Disch_Disposition]'
	EXECUTE [lst].[usp_UpdateAllLstTablesForYearEndOps]'[lst].[LIST_NPPES_NPI]'
	EXECUTE [lst].[usp_UpdateAllLstTablesForYearEndOps]'[lst].[lstPreferredFacility]'
	EXECUTE [lst].[usp_UpdateAllLstTablesForYearEndOps]'[lst].[List_CCSR]'
	EXECUTE [lst].[usp_UpdateAllLstTablesForYearEndOps]'[lst].[List_CCN]'
	EXECUTE [lst].[usp_UpdateAllLstTablesForYearEndOps]'[lst].[List_ICD10PCScwCCSCategory]'


END
