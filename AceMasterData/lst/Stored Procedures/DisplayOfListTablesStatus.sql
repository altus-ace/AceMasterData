
CREATE PROCEDURE lst.DisplayOfListTablesStatus
AS

BEGIN
SELECT		'AceMasterData' AS DatabaseName,'[lstNdcDrugPackage]' TableName, EffectiveDate
			,expirationDate, COUNT(*) RecCnt,COUNT(*) CntActiveRec
			, CONVERT(DATE,CreatedDate)CreatedDate, ACTIVE
FROM		[AceMasterData].[lst].lstNdcDrugPackage
GROUP BY	EffectiveDate, expirationDate, CONVERT(DATE,CreatedDate), ACTIVE
--ORDER BY	EffectiveDate DESC
UNION
SELECT		'AceMasterData' AS DatabaseName,'[List_HEDIS_MEASURE]' TableName, EffectiveDate
			,expirationDate, COUNT(*) RecCnt,COUNT(*) CntActiveRec
			, CONVERT(DATE,CreatedDate)CreatedDate, ACTIVE
FROM		[AceMasterData].[lst].[LIST_HEDIS_MEASURE]
GROUP BY	EffectiveDate, expirationDate, CONVERT(DATE,CreatedDate), ACTIVE
--ORDER BY	TableName DESC
UNION
SELECT		'AceMasterData' AS DatabaseName,'[List_UBREV]' TableName, EffectiveDate
			,expirationDate, COUNT(*) RecCnt,COUNT(*) CntActiveRec
			, CONVERT(DATE,CreatedDate)CreatedDate, ACTIVE
FROM		[AceMasterData].[lst].[List_UBREV]
GROUP BY	EffectiveDate, expirationDate, CONVERT(DATE,CreatedDate), ACTIVE
UNION
SELECT		'AceMasterData' AS DatabaseName,'[LIST_Prov_Specialty_Codes]' TableName, EffectiveDate
			,expirationDate, COUNT(*) RecCnt,COUNT(*) CntActiveRec
			, CONVERT(DATE,CreatedDate)CreatedDate, ACTIVE
FROM		[AceMasterData].[lst].[LIST_Prov_Specialty_Codes]
GROUP BY	EffectiveDate, expirationDate, CONVERT(DATE,CreatedDate), ACTIVE
UNION
SELECT		'AceMasterData' AS DatabaseName,'[LIST_Place_of_SVC]' TableName, EffectiveDate
			,expirationDate, COUNT(*) RecCnt,COUNT(*) CntActiveRec
			, CONVERT(DATE,CreatedDate)CreatedDate, ACTIVE
FROM		[AceMasterData].[lst].[LIST_Place_of_SVC]
GROUP BY	EffectiveDate, expirationDate, CONVERT(DATE,CreatedDate), ACTIVE
UNION
SELECT		'AceMasterData' AS DatabaseName,'[LIST_PCP]' TableName, EffectiveDate
			,expirationDate, COUNT(*) RecCnt,COUNT(*) CntActiveRec
			, CONVERT(DATE,CreatedDate)CreatedDate, ACTIVE
FROM		[AceMasterData].[lst].[LIST_PCP]
GROUP BY	EffectiveDate, expirationDate, CONVERT(DATE,CreatedDate), ACTIVE
UNION
SELECT		'AceMasterData' AS DatabaseName,'[LIST_MDC]' TableName, EffectiveDate
			,expirationDate, COUNT(*) RecCnt,COUNT(*) CntActiveRec
			, CONVERT(DATE,CreatedDate)CreatedDate, ACTIVE
FROM		[AceMasterData].[lst].[LIST_MDC]
GROUP BY	EffectiveDate, expirationDate, CONVERT(DATE,CreatedDate), ACTIVE
UNION
SELECT		'AceMasterData' AS DatabaseName,'[LIST_ICD10CM]' TableName, EffectiveDate
			,expirationDate, COUNT(*) RecCnt,COUNT(*) CntActiveRec
			, CONVERT(DATE,CreatedDate)CreatedDate, ACTIVE
FROM		[AceMasterData].[lst].[LIST_ICD10CM]
GROUP BY	EffectiveDate, expirationDate, CONVERT(DATE,CreatedDate), ACTIVE
UNION
SELECT		'AceMasterData' AS DatabaseName,'[LIST_HEDIS_CODE]' TableName, EffectiveDate
			,expirationDate, COUNT(*) RecCnt,COUNT(*) CntActiveRec
			, CONVERT(DATE,CreatedDate)CreatedDate, ACTIVE
FROM		[AceMasterData].[lst].[LIST_HEDIS_CODE]
GROUP BY	EffectiveDate, expirationDate, CONVERT(DATE,CreatedDate), ACTIVE
UNION
SELECT		'AceMasterData' AS DatabaseName,'[List_HCPCS]' TableName, EffectiveDate
			,expirationDate, COUNT(*) RecCnt,COUNT(*) CntActiveRec
			, CONVERT(DATE,CreatedDate)CreatedDate, ACTIVE
FROM		[AceMasterData].[lst].[List_HCPCS]
GROUP BY	EffectiveDate, expirationDate, CONVERT(DATE,CreatedDate), ACTIVE
UNION
SELECT		'AceMasterData' AS DatabaseName,'[HCC_CODES]' TableName, EffectiveDate
			,expirationDate, COUNT(*) RecCnt,COUNT(*) CntActiveRec
			, CONVERT(DATE,CreatedDate)CreatedDate, ACTIVE
FROM		[AceMasterData].[lst].[LIST_HCC_CODES]
GROUP BY	EffectiveDate, expirationDate, CONVERT(DATE,CreatedDate), ACTIVE
UNION
SELECT		'AceMasterData' AS DatabaseName,'[List_DRG]' TableName, EffectiveDate
			,expirationDate, COUNT(*) RecCnt,COUNT(*) CntActiveRec
			, CONVERT(DATE,CreatedDate)CreatedDate, ACTIVE
FROM		[AceMasterData].[lst].[List_DRG]
GROUP BY	EffectiveDate, expirationDate, CONVERT(DATE,CreatedDate), ACTIVE
UNION
SELECT		'AceMasterData' AS DatabaseName,'[LIST_Disch_Disposition]' TableName, EffectiveDate
			,expirationDate, COUNT(*) RecCnt,COUNT(*) CntActiveRec
			, CONVERT(DATE,CreatedDate)CreatedDate, ACTIVE
FROM		[AceMasterData].[lst].[LIST_Disch_Disposition]
GROUP BY	EffectiveDate, expirationDate, CONVERT(DATE,CreatedDate), ACTIVE
UNION
SELECT		'AceMasterData' AS DatabaseName,'[List_CPT]' TableName, EffectiveDate
			,expirationDate, COUNT(*) RecCnt,COUNT(*) CntActiveRec
			, CONVERT(DATE,CreatedDate)CreatedDate, ACTIVE
FROM		[AceMasterData].[lst].[List_CPT]
GROUP BY	EffectiveDate, expirationDate, CONVERT(DATE,CreatedDate), ACTIVE
UNION
SELECT		'AceMasterData' AS DatabaseName,'[LIST_AHRTIPS]' TableName, EffectiveDate
			,expirationDate, COUNT(*) RecCnt,COUNT(*) CntActiveRec
			, CONVERT(DATE,CreatedDate)CreatedDate, ACTIVE
FROM		[AceMasterData].[lst].[LIST_AHRTIPS]
GROUP BY	EffectiveDate, expirationDate, CONVERT(DATE,CreatedDate), ACTIVE
UNION
SELECT		'AceMasterData' AS DatabaseName,'[lstPreferredFacility]' TableName, EffectiveDate
			,expirationDate, COUNT(*) RecCnt,COUNT(*) CntActiveRec
			, CONVERT(DATE,CreatedDate)CreatedDate, ACTIVE
FROM		[AceMasterData].[lst].[lstPreferredFacility]
GROUP BY	EffectiveDate, expirationDate, CONVERT(DATE,CreatedDate), ACTIVE
UNION
SELECT		'AceMasterData' AS DatabaseName,'[List_Client]' TableName, EffectiveDate
			,expirationDate, COUNT(*) RecCnt,COUNT(*) CntActiveRec
			, CONVERT(DATE,CreatedDate)CreatedDate, ACTIVE
FROM		[AceMasterData].[lst].[List_Client]
GROUP BY	EffectiveDate, expirationDate, CONVERT(DATE,CreatedDate), ACTIVE
UNION
SELECT		'AceMasterData' AS DatabaseName,'[List_ICDcwHCC]' TableName, EffectiveDate
			,expirationDate, COUNT(*) RecCnt,COUNT(*) CntActiveRec
			, CONVERT(DATE,CreatedDate)CreatedDate, ACTIVE
FROM		[AceMasterData].[lst].[List_ICDcwHCC]
GROUP BY	EffectiveDate, expirationDate, CONVERT(DATE,CreatedDate), ACTIVE
UNION
SELECT		'ACDW_CLMS_SHCN_MSSP' AS DatabaseName,'[List_ICDcwHCC]' TableName, EffectiveDate
			,expirationDate, COUNT(*) RecCnt,COUNT(*) CntActiveRec
			, CONVERT(DATE,CreatedDate)CreatedDate, ACTIVE
FROM		ACDW_CLMS_SHCN_MSSP.lst.LIST_ICDcwHCC
GROUP BY	EffectiveDate, expirationDate, CONVERT(DATE,CreatedDate), ACTIVE

END