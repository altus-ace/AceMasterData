
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [lst].[Load_MasterJob_AllListTables]
AS
BEGIN
	
	SET NOCOUNT ON;
--Load QM_Mapping
  EXEC [lst].[usp_lstAllClientQMMapping]'ACDW_CLMS_SHCN_MSSP.[lst].[LIST_QM_Mapping]'
  EXEC [lst].[usp_lstAllClientQMMapping]'ACDW_CLMS_UHC.[lst].LIST_QM_Mapping'
  EXEC [lst].[usp_lstAllClientQMMapping]'ACDW_CLMS_WLC.[lst].LIST_QM_Mapping'
  EXEC [lst].[usp_lstAllClientQMMapping]'ACDW_CLMS_AET_TX_COM.[lst].LIST_QM_Mapping'
  EXEC [lst].[usp_lstAllClientQMMapping]'ACECAREDW_TEST.[lst].LIST_QM_Mapping'
  EXEC [lst].[usp_lstAllClientQMMapping]'ACECAREDW.[lst].LIST_QM_Mapping'
  EXEC [lst].[usp_lstAllClientQMMapping]'ACDW_CLMS_WLC.[lst].LIST_QM_Mapping'
  EXEC [lst].[usp_lstAllClientQMMapping]'ACDW_CLMS_DHTX.[lst].LIST_QM_Mapping'
  EXEC [lst].[usp_lstAllClientQMMapping]'ACDW_CLMS_CIGNA_MA.[lst].LIST_QM_Mapping'
  EXEC [lst].[usp_lstAllClientQMMapping]'ACDW_CLMS_SHCN_BCBS.[lst].LIST_QM_Mapping'
  EXEC [lst].[usp_lstAllClientQMMapping]'ACDW_CLMS_AMGTX_MA.[lst].LIST_QM_Mapping'
  EXEC [lst].[usp_lstAllClientQMMapping]'ACDW_CLMS_AMGTX_MCD.[lst].LIST_QM_Mapping'
  

--Load CareOppsPrograms
  EXEC [lst].[usp_lstAllClientMapCareoppsPrograms]'ACDW_CLMS_UHC.lst.lstMapCareoppsPrograms'
  EXEC [lst].[usp_lstAllClientMapCareoppsPrograms]'ACDW_CLMS_WLC.lst.lstMapCareoppsPrograms'
  EXEC [lst].[usp_lstAllClientMapCareoppsPrograms]'ACECAREDW_TEST.lst.lstMapCareoppsPrograms'
  EXEC [lst].[usp_lstAllClientMapCareoppsPrograms]'ACECAREDW.lst.lstMapCareoppsPrograms'
  EXEC [lst].[usp_lstAllClientMapCareoppsPrograms]'ACDW_CLMS_DHTX.lst.lstMapCareoppsPrograms'
  EXEC [lst].[usp_lstAllClientMapCareoppsPrograms]'ACDW_CLMS_SHCN_MSSP.lst.lstMapCareoppsPrograms'
  EXEC [lst].[usp_lstAllClientMapCareoppsPrograms]'ACDW_CLMS_CIGNA_MA.lst.lstMapCareoppsPrograms'
  EXEC [lst].[usp_lstAllClientMapCareoppsPrograms]'ACDW_CLMS_SHCN_BCBS.lst.lstMapCareoppsPrograms'
  EXEC [lst].[usp_lstAllClientMapCareoppsPrograms]'ACDW_CLMS_AMGTX_MA.lst.lstMapCareoppsPrograms'
  EXEC [lst].[usp_lstAllClientMapCareoppsPrograms]'ACDW_CLMS_AMGTX_MCD.lst.lstMapCareoppsPrograms'

    
  --lst.usp_lstAllClientlstPlanMapping
  EXEC lst.usp_lstAllClientlstPlanMapping	 --To be used in processing all clients in ACECAREDW
  EXECUTE [lst].[usp_lstAllClientPlanMapping]'ACECAREDW.lst.lstPlanMapping'
  EXECUTE [lst].[usp_lstAllClientPlanMapping]'ACDW_CLMS_DHTX.lst.lstPlanMapping'
  EXECUTE [lst].[usp_lstAllClientPlanMapping]'ACDW_CLMS_SHCN_BCBS.lst.lstPlanMapping'
  EXECUTE [lst].[usp_lstAllClientPlanMapping]'ACDW_CLMS_SHCN_MSSP.lst.lstPlanMapping'
  EXECUTE [lst].[usp_lstAllClientPlanMapping]'ACDW_CLMS_AMGTX_MA.lst.lstPlanMapping'
  EXECUTE [lst].[usp_lstAllClientPlanMapping]'ACDW_CLMS_AMGTX_MCD.lst.lstPlanMapping'


  --Load CareopTo Plan
  EXEC [lst].[usp_lstAllClientCareOpToPlan]'ACDW_CLMS_UHC.lst.lstCareOpToPlan'
  EXEC [lst].[usp_lstAllClientCareOpToPlan]'ACDW_CLMS_WLC.lst.lstCareOpToPlan'
  EXEC [lst].[usp_lstAllClientCareOpToPlan]'ACECAREDW_TEST.lst.lstCareOpToPlan'
  EXEC [lst].[usp_lstAllClientCareOpToPlan]'ACECAREDW.lst.lstCareOpToPlan'
  EXEC [lst].[usp_lstAllClientCareOpToPlan]'ACDW_CLMS_DHTX.lst.lstCareOpToPlan'
  EXEC [lst].[usp_lstAllClientCareOpToPlan]'ACDW_CLMS_SHCN_MSSP.lst.lstCareOpToPlan'
  EXEC [lst].[usp_lstAllClientCareOpToPlan]'ACDW_CLMS_CIGNA_MA.lst.lstCareOpToPlan'
  EXEC [lst].[usp_lstAllClientCareOpToPlan]'ACDW_CLMS_SHCN_BCBS.lst.lstCareOpToPlan'
  EXEC [lst].[usp_lstAllClientCareOpToPlan]'ACDW_CLMS_AMGTX_MA.lst.lstCareOpToPlan'
  EXEC [lst].[usp_lstAllClientCareOpToPlan]'ACDW_CLMS_AMGTX_MCD.lst.lstCareOpToPlan'


  --Load Hedis Code
  EXEC [lst].[usp_lstAllClientHedisCode]'ACECAREDW.dbo.LIST_HEDIS_CODE'
  EXEC [lst].[usp_lstAllClientHedisCode]'ACECAREDW_TEST.dbo.LIST_HEDIS_CODE'
  EXEC [lst].[usp_lstAllClientHedisCode]'AceMasterQMCalc.lst.LIST_HEDIS_CODE'
  EXEC [lst].[usp_lstAllClientHedisCode]'ACDW_CLMS_UHC.lst.LIST_HEDIS_CODE'
  EXEC [lst].[usp_lstAllClientHedisCode]'[ACDW_CLMS_DHTX].lst.LIST_HEDIS_CODE'
  EXEC [lst].[usp_lstAllClientHedisCode]'ACDW_CLMS_SHCN_MSSP.lst.LIST_HEDIS_CODE'
  EXEC [lst].[usp_lstAllClientHedisCode]'ACDW_CLMS_SHCN_BCBS.lst.LIST_HEDIS_CODE'
  EXEC [lst].[usp_lstAllClientHedisCode]'ACDW_CLMS_AMGTX_MA.lst.LIST_HEDIS_CODE'
  EXEC [lst].[usp_lstAllClientHedisCode]'ACDW_CLMS_AMGTX_MCD.lst.LIST_HEDIS_CODE'
  EXEC [lst].[usp_lstAllClientHedisCode]'ACECAREDW_TEST.lst.LIST_HEDIS_CODE'

 
  --Load Drug Package
  EXEC [lst].[usp_lstAllClientDrugPackage]'ACDW_CLMS_DHTX.lst.[lstNdcDrugPackage]'
  EXEC [lst].[usp_lstAllClientDrugPackage]'ACDW_CLMS_SHCN_MSSP.lst.[lstNdcDrugPackage]'
  EXEC [lst].[usp_lstAllClientDrugPackage]'ACECAREDW_TEST.dbo.[lstNdcDrugPackage]'
  EXEC [lst].[usp_lstAllClientDrugPackage]'ACECAREDW_TEST.lst.[lstNdcDrugPackage]'
  EXEC [lst].[usp_lstAllClientDrugPackage]'ACDW_CLMS_SHCN_BCBS.lst.[lstNdcDrugPackage]'
  EXEC [lst].[usp_lstAllClientDrugPackage]'ACDW_CLMS_SHCN_MSSP.lst.[lstNdcDrugPackage]'
  EXEC [lst].[usp_lstAllClientDrugPackage]'ACDW_CLMS_AMGTX_MA.lst.[lstNdcDrugPackage]'
  EXEC [lst].[usp_lstAllClientDrugPackage]'ACDW_CLMS_AMGTX_MCD.lst.[lstNdcDrugPackage]'
 
  --Load Drug Product
  EXEC [lst].[usp_lstAllClientDrugProduct]'ACDW_CLMS_DHTX.[lst].[lstNdcDrugProduct]'
  EXEC [lst].[usp_lstAllClientDrugProduct]'[ACDW_CLMS_SHCN_MSSP].[lst].[lstNdcDrugProduct]' 
  EXEC [lst].[usp_lstAllClientDrugProduct]'ACDW_CLMS_UHC.lst.[lstNdcDrugProduct]'
  EXEC [lst].[usp_lstAllClientDrugProduct]'ACDW_CLMS_SHCN_BCBS.lst.[lstNdcDrugProduct]'
  EXEC [lst].[usp_lstAllClientDrugProduct]'ACDW_CLMS_SHCN_MSSP.lst.[lstNdcDrugProduct]'
  EXEC [lst].[usp_lstAllClientDrugProduct]'ACDW_CLMS_AMGTX_MA.lst.[lstNdcDrugProduct]'
  EXEC [lst].[usp_lstAllClientDrugProduct]'ACDW_CLMS_AMGTX_MCD.lst.[lstNdcDrugProduct]'


 --Load NippesNIP
 EXEC [lst].[usp_lstAllClientNippesNIP]'[ACDW_CLMS_SHCN_MSSP].[lst].[LIST_NPPES_NPI]'
 EXEC [lst].[usp_lstAllClientNippesNIP]'ACDW_CLMS_DHTX.[lst].[LIST_NPPES_NPI]'
 --EXEC [lst].[usp_lstAllClientNippesNIP]'[ACECAREDW_TEST].[lst].[LIST_NPPES_NPI]'
 EXEC [lst].[usp_lstAllClientNippesNIP]'ACDW_CLMS_SHCN_BCBS.lst.[LIST_NPPES_NPI]'
 EXEC [lst].[usp_lstAllClientNippesNIP]'ACDW_CLMS_SHCN_MSSP.lst.[LIST_NPPES_NPI]'
 EXEC [lst].[usp_lstAllClientNippesNIP]'ACDW_CLMS_AMGTX_MA.lst.[LIST_NPPES_NPI]'
 EXEC [lst].[usp_lstAllClientNippesNIP]'ACDW_CLMS_AMGTX_MCD.lst.[LIST_NPPES_NPI]'

 --Load HccCodes
 EXEC [lst].[usp_lstAllClientHccCodes]'ACDW_CLMS_SHCN_MSSP.[lst].[LIST_HCC_CODES]'
 EXEC [lst].[usp_lstAllClientHccCodes]'[ACDW_CLMS_AET_TX_COM].[lst].[LIST_HCC_CODES]'
 EXEC [lst].[usp_lstAllClientHccCodes]'[ACDW_CLMS_DHTX].[lst].[LIST_HCC_CODES]'
 EXEC [lst].[usp_lstAllClientHccCodes]'[ACECAREDW].[lst].[LIST_HCC_CODES]'
 EXEC [lst].[usp_lstAllClientHccCodes]'ACDW_CLMS_SHCN_BCBS.lst.[LIST_HCC_CODES]'
 EXEC [lst].[usp_lstAllClientHccCodes]'ACDW_CLMS_SHCN_MSSP.lst.[LIST_HCC_CODES]'
 EXEC [lst].[usp_lstAllClientHccCodes]'ACDW_CLMS_AMGTX_MA.lst.[LIST_HCC_CODES]'
 EXEC [lst].[usp_lstAllClientHccCodes]'ACDW_CLMS_AMGTX_MCD.lst.[LIST_HCC_CODES]'

 --Load MDC
 EXEC [lst].[usp_lstAllClientMDC]'ACECAREDW_TEST.dbo.LIST_MDC'
 EXEC [lst].[usp_lstAllClientMDC]'ACDW_CLMS_SHCN_MSSP.[lst].LIST_MDC'
 EXEC [lst].[usp_lstAllClientMDC]'ACDW_CLMS_SHCN_BCBS.lst.LIST_MDC'
 EXEC [lst].[usp_lstAllClientMDC]'ACDW_CLMS_SHCN_MSSP.lst.LIST_MDC'
 EXEC [lst].[usp_lstAllClientMDC]'ACDW_CLMS_AMGTX_MA.lst.LIST_MDC'
 EXEC [lst].[usp_lstAllClientMDC]'ACDW_CLMS_AMGTX_MCD.lst.LIST_MDC'

 
 --[lstPreferredFacility]
 EXEC [lst].[usp_lstAllClientPreferredFacility]'ACDW_CLMS_SHCN_MSSP.[lst].[lstPreferredFacility]',16
 EXEC [lst].[usp_lstAllClientPreferredFacility]'ACDW_CLMS_DHTX.[lst].[lstPreferredFacility]',11
 EXEC [lst].[usp_lstAllClientPreferredFacility]'ACECAREDW.[lst].[lstPreferredFacility]',1
 
 --[lst].[usp_lstAllClientICD10CM]
 EXEC [lst].[usp_lstAllClientICD10CM]'ACDW_CLMS_SHCN_MSSP.lst.LIST_ICD10CM'
 EXEC [lst].[usp_lstAllClientICD10CM]'DEV_ACDW_CLMS_SHCN_MSSP.lst.LIST_ICD10CM'
 EXEC [lst].[usp_lstAllClientICD10CM]'ACDW_CLMS_UHC.lst.LIST_ICD10CM'
 EXEC [lst].[usp_lstAllClientICD10CM]'ACECAREDW.dbo.LIST_ICD10CM'
 EXEC [lst].[usp_lstAllClientICD10CM]'ACECAREDW_TEST.dbo.LIST_ICD10CM'
 EXEC [lst].[usp_lstAllClientICD10CM]'ACDW_CLMS_DHTX.lst.LIST_ICD10CM'
 EXEC [lst].[usp_lstAllClientICD10CM]'ACDW_CLMS_SHCN_BCBS.lst.LIST_ICD10CM'
 EXEC [lst].[usp_lstAllClientICD10CM]'ACDW_CLMS_AMGTX_MA.lst.LIST_ICD10CM'
 EXEC [lst].[usp_lstAllClientICD10CM]'ACDW_CLMS_AMGTX_MCD.lst.LIST_ICD10CM'

 --[lst].[usp_lstAllClientICDCCS]
 EXEC [lst].[usp_lstAllClientICDCCS]'ACDW_CLMS_SHCN_MSSP.[lst].[LIST_ICDCCS]'
 EXEC [lst].[usp_lstAllClientICDCCS]'ACDW_CLMS_DHTX.[lst].[LIST_ICDCCS]'
 EXEC [lst].[usp_lstAllClientICDCCS]'ACECAREDW.[lst].[LIST_ICDCCS]'
 EXEC [lst].[usp_lstAllClientICDCCS]'ACDW_CLMS_SHCN_BCBS.lst.[LIST_ICDCCS]'
 EXEC [lst].[usp_lstAllClientICDCCS]'ACDW_CLMS_AMGTX_MA.lst.[LIST_ICDCCS]'
 EXEC [lst].[usp_lstAllClientICDCCS]'ACDW_CLMS_AMGTX_MCD.lst.[LIST_ICDCCS]'
 EXEC [lst].[usp_lstAllClientICDCCS]'ACECAREDW_TEST.lst.[LIST_ICDCCS]'
 
  --[lst].[lst].[usp_lstAllClientCPT]
  EXEC [lst].[usp_lstAllClientCPT]'ACDW_CLMS_DHTX.lst.List_CPT'
  EXEC [lst].[usp_lstAllClientCPT]'ACDW_CLMS_SHCN_MSSP.lst.List_CPT'
  EXEC [lst].[usp_lstAllClientCPT]'ACDW_CLMS_UHC.lst.List_CPT'
  EXEC [lst].[usp_lstAllClientCPT]'Ace_Portal_Staging.dbo.List_CPT'
  EXEC [lst].[usp_lstAllClientCPT]'ACECAREDW_TEST.dbo.List_CPT'
  EXEC [lst].[usp_lstAllClientCPT]'ACDW_CLMS_SHCN_BCBS.lst.List_CPT'
  EXEC [lst].[usp_lstAllClientCPT]'ACDW_CLMS_AMGTX_MA.lst.List_CPT'
  EXEC [lst].[usp_lstAllClientCPT]'ACDW_CLMS_AMGTX_MCD.lst.List_CPT'

  --[lst].[usp_lstAllClientHCPCS]
  EXEC [lst].[usp_lstAllClientHCPCS] 'ACDW_CLMS_SHCN_MSSP.lst.List_HCPCS'
  EXEC [lst].[usp_lstAllClientHCPCS] 'ACDW_CLMS_DHTX.lst.LIST_HCPCS'
  EXEC [lst].[usp_lstAllClientHCPCS] 'ACDW_CLMS_UHC.lst.LIST_HCPCS'
  EXEC [lst].[usp_lstAllClientHCPCS] 'Ace_Portal_Staging.dbo.LIST_HCPCS'
  EXEC [lst].[usp_lstAllClientHCPCS] 'ACDW_CLMS_SHCN_BCBS.lst.List_HCPCS'
  EXEC [lst].[usp_lstAllClientHCPCS] 'ACDW_CLMS_AMGTX_MA.lst.List_HCPCS'
  EXEC [lst].[usp_lstAllClientHCPCS] 'ACDW_CLMS_AMGTX_MCD.lst.List_HCPCS'

  --[lst].[usp_GetClientProvSpec]
  EXEC [lst].[usp_GetClientProvSpec]'ACDW_CLMS_SHCN_MSSP.lst.LIST_PROV_SPECIALTY_CODES'
  EXEC [lst].[usp_GetClientProvSpec]'ACECAREDW.dbo.LIST_PROV_SPECIALTY_CODES'
  EXEC [lst].[usp_GetClientProvSpec]'[ACDW_CLMS_WLC].lst.LIST_PROV_SPECIALTY_CODES'
  EXEC [lst].[usp_GetClientProvSpec]'[ACECAREDW_TEST].[lst].LIST_PROV_SPECIALTY_CODES'
  EXEC [lst].[usp_GetClientProvSpec]'[ACDW_CLMS_AET_TX_COM].lst.LIST_PROV_SPECIALTY_CODES'
  EXEC [lst].[usp_GetClientProvSpec]'[ACDW_CLMS_DHTX].lst.LIST_PROV_SPECIALTY_CODES'
  EXEC [lst].[usp_GetClientProvSpec]'[ACECAREDW].DBO.LIST_PROV_SPECIALTY_CODES'
  EXEC [lst].[usp_GetClientProvSpec]'ACDW_CLMS_SHCN_BCBS.lst.LIST_PROV_SPECIALTY_CODES'
  EXEC [lst].[usp_GetClientProvSpec]'ACDW_CLMS_AMGTX_MA.lst.LIST_PROV_SPECIALTY_CODES'
  EXEC [lst].[usp_GetClientProvSpec]'ACDW_CLMS_AMGTX_MCD.lst.LIST_PROV_SPECIALTY_CODES'

  --[lst].[usp_lstAllClientICD10PCS]
  EXEC [lst].[usp_lstAllClientICD10PCS]'ACECAREDW_TEST.[lst].[LIST_ICD10PCS]'
  EXEC [lst].[usp_lstAllClientICD10PCS]'[ACDW_CLMS_SHCN_MSSP].[lst].[LIST_ICD10PCS]'
  EXEC [lst].[usp_lstAllClientICD10PCS]'ACECAREDW_TEST.[lst].[LIST_ICD10PCS]'
  EXEC [lst].[usp_lstAllClientICD10PCS]'Ace_Portal_Staging.dbo.[LIST_ICD10PCS]'
  EXEC [lst].[usp_lstAllClientICD10PCS]'[ACDW_CLMS_SHCN_BCBS].[lst].[LIST_ICD10PCS]'
  EXEC [lst].[usp_lstAllClientICD10PCS]'[ACDW_CLMS_AMGTX_MA].[lst].[LIST_ICD10PCS]'
  EXEC [lst].[usp_lstAllClientICD10PCS]'[ACDW_CLMS_AMGTX_MCD].[lst].[LIST_ICD10PCS]'

  --[lst].[usp_lstAllClientDRG]
  EXEC [lst].[usp_lstAllClientDRG]'Ace_Portal_Staging.dbo.List_DRG'
  EXEC [lst].[usp_lstAllClientDRG]'ACDW_CLMS_SHCN_MSSP.lst.List_DRG'
  EXEC [lst].[usp_lstAllClientDRG]'ACECAREDW_TEST.dbo.List_DRG'
  EXEC [lst].[usp_lstAllClientDRG]'ACDW_CLMS_SHCN_BCBS.lst.List_DRG'
  EXEC [lst].[usp_lstAllClientDRG]'ACDW_CLMS_AMGTX_MA.lst.List_DRG'
  EXEC [lst].[usp_lstAllClientDRG]'ACDW_CLMS_AMGTX_MCD.lst.List_DRG'
 
 --[lst].[usp_lstAllClient[CCSR]
 EXEC [lst].[usp_lstAllClient[CCSR]'ACDW_CLMS_SHCN_MSSP.[lst].[List_CCSR]'
 EXEC [lst].[usp_lstAllClient[CCSR]'ACECAREDW.[lst].[List_CCSR]'
 EXEC [lst].[usp_lstAllClient[CCSR]'ACDW_CLMS_DHTX.[lst].[List_CCSR]'
 EXEC [lst].[usp_lstAllClient[CCSR]'ACECAREDW_TEST.[lst].[List_CCSR]'
 EXEC [lst].[usp_lstAllClient[CCSR]'ACDW_CLMS_SHCN_BCBS.[lst].[List_CCSR]'
 EXEC [lst].[usp_lstAllClient[CCSR]'ACDW_CLMS_AMGTX_MA.[lst].[List_CCSR]'
 EXEC [lst].[usp_lstAllClient[CCSR]'ACDW_CLMS_AMGTX_MCD.[lst].[List_CCSR]'

 
 --[lst].[usp_lstAllClientScoringSystem]
 EXEC [lst].[usp_lstAllClientScoringSystem]'ACECAREDW.[lst].[lstScoringSystem]'
 EXEC [lst].[usp_lstAllClientScoringSystem]'ACDW_CLMS_SHCN_MSSP.[lst].[lstScoringSystem]'
 EXEC [lst].[usp_lstAllClientScoringSystem]'ACDW_CLMS_DHTX.[lst].[lstScoringSystem]'
 EXEC [lst].[usp_lstAllClientScoringSystem]'ACDW_CLMS_SHCN_BCBS.[lst].[lstScoringSystem]'

 --[lst].[usp_lstAllClientPhoneType]
 EXEC [lst].[usp_lstAllClientPhoneType]'ACDW_CLMS_SHCN_MSSP.lst.lstPhoneType'
 EXEC [lst].[usp_lstAllClientPhoneType]'ACDW_CLMS_DHTX.lst.lstPhoneType'
 EXEC [lst].[usp_lstAllClientPhoneType]'ACDW_CLMS_SHCN_BCBS.lst.lstPhoneType'
 EXEC [lst].[usp_lstAllClientPhoneType]'ACDW_CLMS_AMGTX_MA.lst.lstPhoneType'
 EXEC [lst].[usp_lstAllClientPhoneType]'ACDW_CLMS_AMGTX_MCD.lst.lstPhoneType'

 --[lst].[usp_lstAllClientPhoneCarrierType]
 EXECUTE [lst].[usp_lstAllClientPhoneCarrierType]'ACDW_CLMS_SHCN_MSSP.lst.lstPhoneCarrierType'
 EXECUTE [lst].[usp_lstAllClientPhoneCarrierType]'ACDW_CLMS_DHTX.lst.lstPhoneCarrierType'
 EXECUTE [lst].[usp_lstAllClientPhoneCarrierType]'ACDW_CLMS_SHCN_BCBS.lst.lstPhoneCarrierType'
 EXECUTE [lst].[usp_lstAllClientPhoneCarrierType]'ACDW_CLMS_AMGTX_MA.lst.lstPhoneCarrierType'
 EXECUTE [lst].[usp_lstAllClientPhoneCarrierType]'ACDW_CLMS_AMGTX_MCD.lst.lstPhoneCarrierType'

 --[lst].[usp_lstAllClientEmailType]
 EXECUTE [lst].[usp_lstAllClientEmailType]'ACDW_CLMS_SHCN_MSSP.lst.lstEmailType'
 EXECUTE [lst].[usp_lstAllClientEmailType]'ACDW_CLMS_DHTX.lst.lstEmailType'
 EXECUTE [lst].[usp_lstAllClientEmailType]'ACDW_CLMS_SHCN_BCBS.lst.lstEmailType'
 EXECUTE [lst].[usp_lstAllClientEmailType]'ACDW_CLMS_AMGTX_MA.lst.lstEmailType'
 EXECUTE [lst].[usp_lstAllClientEmailType]'ACDW_CLMS_AMGTX_MCD.lst.lstEmailType'

 --Lst [lst].[usp_lstAllClientAddressType]
 EXEC [lst].[usp_lstAllClientAddressType]'ACDW_CLMS_SHCN_MSSP.lst.lstAddressType'
 EXEC [lst].[usp_lstAllClientAddressType]'ACDW_CLMS_DHTX.lst.lstAddressType'
 EXEC [lst].[usp_lstAllClientAddressType]'ACDW_CLMS_SHCN_BCBS.lst.lstAddressType'
 EXEC [lst].[usp_lstAllClientAddressType]'ACDW_CLMS_AMGTX_MA.lst.lstAddressType'
 EXEC [lst].[usp_lstAllClientAddressType]'ACDW_CLMS_AMGTX_MCD.lst.lstAddressType'

 --- [lst].[usp_lstAllClientCCN]
 EXEC [lst].[usp_lstAllClientCCN]	'ACDW_CLMS_SHCN_MSSP.[lst].[List_CCN]'
 EXEC [lst].[usp_lstAllClientCCN]	'ACDW_CLMS_UHC.[lst].[List_CCN]'
 EXEC [lst].[usp_lstAllClientCCN]	'ACDW_CLMS_WLC.[lst].[List_CCN]'
 EXEC [lst].[usp_lstAllClientCCN]	'ACECAREDW_TEST.[lst].[List_CCN]'
 EXEC [lst].[usp_lstAllClientCCN]	'ACECAREDW.[lst].[List_CCN]'
 EXEC [lst].[usp_lstAllClientCCN]	'DEV_ACECAREDW.[lst].[List_CCN]'
 EXEC [lst].[usp_lstAllClientCCN]	'ACDW_CLMS_DHTX.[lst].[List_CCN]'
 EXEC [lst].[usp_lstAllClientCCN]	'ACDW_CLMS_CIGNA_MA.[lst].[List_CCN]'
 EXEC [lst].[usp_lstAllClientCCN]   'ACDW_CLMS_AET_MA.[lst].[List_CCN]'
 EXEC [lst].[usp_lstAllClientCCN]	'ACDW_CLMS_AET_TX_COM.[lst].[List_CCN]'
 EXEC [lst].[usp_lstAllClientCCN]	'ACDW_CLMS_SHCN_BCBS.[lst].[List_CCN]'
 EXEC [lst].[usp_lstAllClientCCN]	'ACDW_CLMS_AMGTX_MA.[lst].[List_CCN]'
 EXEC [lst].[usp_lstAllClientCCN]	'ACDW_CLMS_AMGTX_MCD.[lst].[List_CCN]'

 --[lst].[usp_lstAllClientLIST_ICDcwHCC]
 EXEC [lst].[usp_lstAllClientLIST_ICDcwHCC]'ACDW_CLMS_SHCN_MSSP.[lst].[LIST_ICDcwHCC]'
 EXEC [lst].[usp_lstAllClientLIST_ICDcwHCC]'ACDW_CLMS_UHC.[lst].[LIST_ICDcwHCC]'
 EXEC [lst].[usp_lstAllClientLIST_ICDcwHCC]'ACDW_CLMS_WLC.[lst].[LIST_ICDcwHCC]'
 EXEC [lst].[usp_lstAllClientLIST_ICDcwHCC]'ACECAREDW_TEST.[lst].[LIST_ICDcwHCC]'
 EXEC [lst].[usp_lstAllClientLIST_ICDcwHCC]'ACECAREDW.lst.[LIST_ICDcwHCC]'
 EXEC [lst].[usp_lstAllClientLIST_ICDcwHCC]'DEV_ACECAREDW.[lst].[LIST_ICDcwHCC]'
 EXEC [lst].[usp_lstAllClientLIST_ICDcwHCC]'ACDW_CLMS_DHTX.[lst].[LIST_ICDcwHCC]'
 EXEC [lst].[usp_lstAllClientLIST_ICDcwHCC]'ACDW_CLMS_SHCN_BCBS.[lst].[LIST_ICDcwHCC]'
 EXEC [lst].[usp_lstAllClientLIST_ICDcwHCC]'ACDW_CLMS_AMGTX_MA.[lst].[LIST_ICDcwHCC]'
 EXEC [lst].[usp_lstAllClientLIST_ICDcwHCC]'ACDW_CLMS_AMGTX_MCD.[lst].[LIST_ICDcwHCC]'

 --- [lst].[usp_lstAllClientAceMapping]
  EXEC [lst].[usp_lstAllClientAceMapping] 'ACDW_CLMS_SHCN_MSSP.[lst].[ListAceMapping]'
  EXEC [lst].[usp_lstAllClientAceMapping] 'ACDW_CLMS_UHC.[lst].[ListAceMapping]'
  EXEC [lst].[usp_lstAllClientAceMapping] 'ACDW_CLMS_WLC.[lst].[ListAceMapping]'
  EXEC [lst].[usp_lstAllClientAceMapping] 'ACECAREDW_TEST.[lst].[ListAceMapping]'
  EXEC [lst].[usp_lstAllClientAceMapping] 'ACECAREDW.[lst].[ListAceMapping]'
  EXEC [lst].[usp_lstAllClientAceMapping] 'DEV_ACECAREDW.[lst].[ListAceMapping]'
  EXEC [lst].[usp_lstAllClientAceMapping] 'ACDW_CLMS_DHTX.[lst].[ListAceMapping]'
  EXEC [lst].[usp_lstAllClientAceMapping] 'ACDW_CLMS_SHCN_BCBS.[lst].[ListAceMapping]'
  EXEC [lst].[usp_lstAllClientAceMapping] 'ACDW_CLMS_AMGTX_MA.[lst].[ListAceMapping]'
  EXEC [lst].[usp_lstAllClientAceMapping] 'ACDW_CLMS_AMGTX_MCD.[lst].[ListAceMapping]'
 

  --[lst].[usp_lstAllClientICD10PCScwCCSCategory]
  EXEC [lst].[usp_lstAllClientICD10PCScwCCSCategory]'ACDW_CLMS_SHCN_MSSP.lst.[List_ICD10PCScwCCSCategory]'
  EXEC [lst].[usp_lstAllClientICD10PCScwCCSCategory]'ACECAREDW.lst.[List_ICD10PCScwCCSCategory]'
  EXEC [lst].[usp_lstAllClientICD10PCScwCCSCategory]'ACDW_CLMS_CIGNA_MA.lst.[List_ICD10PCScwCCSCategory]'
  EXEC [lst].[usp_lstAllClientICD10PCScwCCSCategory]'ACDW_CLMS_DHTX.lst.[List_ICD10PCScwCCSCategory]'
  EXEC [lst].[usp_lstAllClientICD10PCScwCCSCategory]'ACDW_CLMS_WLC.lst.[List_ICD10PCScwCCSCategory]'
  EXEC [lst].[usp_lstAllClientICD10PCScwCCSCategory]'ACDW_CLMS_SHCN_BCBS.lst.[List_ICD10PCScwCCSCategory]'
  EXEC [lst].[usp_lstAllClientICD10PCScwCCSCategory]'ACDW_CLMS_AMGTX_MA.lst.[List_ICD10PCScwCCSCategory]'
  EXEC [lst].[usp_lstAllClientICD10PCScwCCSCategory]'ACDW_CLMS_AMGTX_MCD.lst.[List_ICD10PCScwCCSCategory]'

  --[lst].[usp_lstAllClientGHHCodes]
  EXEC [lst].[usp_lstAllClientGHHCodes]'ACDW_CLMS_SHCN_MSSP.[lst].[lstGHHCodes]'
  EXEC [lst].[usp_lstAllClientGHHCodes]'ACECAREDW.[lst].[lstGHHCodes]'
  EXEC [lst].[usp_lstAllClientGHHCodes]'ACDW_CLMS_SHCN_BCBS.[lst].[lstGHHCodes]'
  EXEC [lst].[usp_lstAllClientGHHCodes]'ACDW_CLMS_AMGTX_MA.[lst].[lstGHHCodes]'
  EXEC [lst].[usp_lstAllClientGHHCodes]'ACDW_CLMS_AMGTX_MCD.[lst].[lstGHHCodes]'

  --[lst].[usp_lstAllClientClientKey]
  EXEC [lst].[usp_lstAllClientClientKey]'ACDW_CLMS_SHCN_BCBS.lst.List_Client',20

    --Keep updating SP


END



