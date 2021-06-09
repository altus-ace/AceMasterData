-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [lst].[Load_ListTableByCatalogAndListTableType]
(  @Catalog varchar(50),
   @ListTable varchar(50)
)
AS
	SET NOCOUNT ON;

BEGIN
	 
	    IF (@ListTable = 'LIST_QM_Mapping')
		   BEGIN
		   IF (@Catalog = 'ACDW_CLMS_SHCN_MSSP')
		      EXEC [lst].[usp_lstAllClientQMMapping]'ACDW_CLMS_SHCN_MSSP.[lst].[LIST_QM_Mapping]'
            ELSE IF (@Catalog = 'ACDW_CLMS_UHC')
			  EXEC [lst].[usp_lstAllClientQMMapping]'ACDW_CLMS_SHCN_MSSP.[lst].[LIST_QM_Mapping]' 
		     ELSE IF (@Catalog = 'ACDW_CLMS_WLC')
			  EXEC [lst].[usp_lstAllClientQMMapping]'ACDW_CLMS_WLC.[lst].LIST_QM_Mapping'
		     ELSE IF (@Catalog = 'ACECAREDW_TEST')
			   EXEC [lst].[usp_lstAllClientQMMapping]'ACECAREDW_TEST.[lst].LIST_QM_Mapping'
		     ELSE IF (@Catalog = 'ACECAREDW')
			   EXEC [lst].[usp_lstAllClientQMMapping]'ACECAREDW.[lst].LIST_QM_Mapping'
             ELSE IF (@Catalog = 'ACDW_CLMS_DHTX')
			   EXEC [lst].[usp_lstAllClientQMMapping]'ACDW_CLMS_DHTX.[lst].LIST_QM_Mapping'
           END
		   ELSE IF(@ListTable = 'lstMapCareoppsPrograms')
		   BEGIN
		   	 IF (@Catalog = 'ACDW_CLMS_UHC')
		      EXEC [lst].[usp_lstAllClientMapCareoppsPrograms]'ACDW_CLMS_UHC.lst.lstMapCareoppsPrograms'
             ELSE IF (@Catalog = 'ACDW_CLMS_WLC')
			  EXEC [lst].[usp_lstAllClientMapCareoppsPrograms]'ACDW_CLMS_WLC.lst.lstMapCareoppsPrograms'
		     ELSE IF (@Catalog = 'ACECAREDW_TEST')
			  EXEC [lst].[usp_lstAllClientMapCareoppsPrograms]'ACECAREDW_TEST.lst.lstMapCareoppsPrograms'
		     ELSE IF (@Catalog = 'ACECAREDW')
			  EXEC [lst].[usp_lstAllClientMapCareoppsPrograms]'ACECAREDW.lst.lstMapCareoppsPrograms'
             ELSE IF (@Catalog = 'ACDW_CLMS_DHTX')
			   EXEC [lst].[usp_lstAllClientMapCareoppsPrograms]'ACDW_CLMS_DHTX.lst.lstMapCareoppsPrograms'
             ELSE IF (@Catalog = 'ACDW_CLMS_SHCN_MSSP')
			  EXEC [lst].[usp_lstAllClientMapCareoppsPrograms]'ACDW_CLMS_SHCN_MSSP.lst.lstMapCareoppsPrograms'
		   END
		   ELSE IF (@ListTable = 'lstCareOpToPlan')
		   BEGIN
		   	 IF (@Catalog = 'ACDW_CLMS_UHC')
		      EXEC [lst].[usp_lstAllClientCareOpToPlan]'ACDW_CLMS_UHC.lst.lstCareOpToPlan'
             ELSE IF (@Catalog = 'ACDW_CLMS_WLC')
			  EXEC [lst].[usp_lstAllClientCareOpToPlan]'ACDW_CLMS_WLC.lst.lstCareOpToPlan'
		     ELSE IF (@Catalog = 'ACECAREDW_TEST')
			  EXEC [lst].[usp_lstAllClientCareOpToPlan]'ACECAREDW_TEST.lst.lstCareOpToPlan'
		     ELSE IF (@Catalog = 'ACECAREDW')
			  EXEC [lst].[usp_lstAllClientCareOpToPlan]'ACECAREDW.lst.lstCareOpToPlan'
             ELSE IF (@Catalog = 'ACDW_CLMS_DHTX')
			  EXEC [lst].[usp_lstAllClientCareOpToPlan]'ACDW_CLMS_DHTX.lst.lstCareOpToPlan'
             ELSE IF (@Catalog = 'ACDW_CLMS_SHCN_MSSP')
			  EXEC [lst].[usp_lstAllClientCareOpToPlan]'ACDW_CLMS_SHCN_MSSP.lst.lstCareOpToPlan'
		   END
		   ELSE IF (@ListTable = 'LIST_HEDIS_CODE')
		   BEGIN
				IF (@Catalog = 'ACECAREDW')
				  EXEC [lst].[usp_lstAllClientHedisCode2]'ACECAREDW.dbo.LIST_HEDIS_CODE'
                ELSE IF (@Catalog = 'ACECAREDW_TEST')
				  EXEC [lst].[usp_lstAllClientHedisCode2]'ACECAREDW_TEST.dbo.LIST_HEDIS_CODE'
                ELSE IF (@Catalog = 'AceMasterQMCalc')
				  EXEC [lst].[usp_lstAllClientHedisCode2]'AceMasterQMCalc.lst.LIST_HEDIS_CODE'
                ELSE IF (@Catalog = 'ACDW_CLMS_UHC')
				  EXEC [lst].[usp_lstAllClientHedisCode2]'ACDW_CLMS_UHC.lst.LIST_HEDIS_CODE'
                ELSE IF (@Catalog = 'ACDW_CLMS_DHTX')
				  EXEC [lst].[usp_lstAllClientHedisCode2]'[ACDW_CLMS_DHTX].lst.LIST_HEDIS_CODE'
                ELSE IF (@Catalog = 'ACDW_CLMS_SHCN_MSSP')
				  EXEC [lst].[usp_lstAllClientHedisCode2]'ACDW_CLMS_SHCN_MSSP.lst.LIST_HEDIS_CODE'
            END
				 
		   ELSE IF (@ListTable = 'lstNdcDrugPackage')
		   BEGIN
				IF (@Catalog = 'ACDW_CLMS_DHTX')
					EXEC [lst].[usp_lstAllClientDrugPackage2]'ACDW_CLMS_DHTX.lst.[lstNdcDrugPackage]'
                ELSE IF (@Catalog = 'ACDW_CLMS_SHCN_MSSP')
				    EXEC [lst].[usp_lstAllClientDrugPackage2]'ACDW_CLMS_SHCN_MSSP.lst.[lstNdcDrugPackage]'
                ELSE IF (@Catalog = 'ACECAREDW_TEST')
				    EXEC [lst].[usp_lstAllClientDrugPackage2]'ACECAREDW_TEST.lst.[lstNdcDrugPackage]'
                ELSE IF (@Catalog = 'AceMasterQMCalc')
				    EXEC [lst].[usp_lstAllClientDrugPackage2]'AceMasterQMCalc.lst.[lstNdcDrugPackage]'
		   END
		   ELSE IF (@ListTable = 'lstNdcDrugProduct')
		   BEGIN
				IF (@Catalog = 'ACDW_CLMS_DHTX')
					EXEC [lst].[usp_lstAllClientDrugProduct2]'ACDW_CLMS_DHTX.[lst].[lstNdcDrugProduct]'
                ELSE IF (@Catalog = 'ACDW_CLMS_SHCN_MSSP')
				    EXEC [lst].[usp_lstAllClientDrugProduct2]'[ACDW_CLMS_SHCN_MSSP].[lst].[lstNdcDrugProduct]'
                ELSE IF (@Catalog = 'ACDW_CLMS_UHC')
				   EXEC [lst].[usp_lstAllClientDrugProduct2]'ACDW_CLMS_UHC.lst.[lstNdcDrugProduct]'
                ELSE IF (@Catalog = 'ACECAREDW_TEST')
				   EXEC [lst].[usp_lstAllClientDrugProduct2]'ACECAREDW_TEST.lst.[lstNdcDrugProduct]'
                ELSE IF (@Catalog = 'AceMasterQMCalc') 
				    EXEC [lst].[usp_lstAllClientDrugProduct2]'AceMasterQMCalc.lst.[lstNdcDrugProduct]'
		   END
		   ELSE IF (@ListTable = 'LIST_NPPES_NPI')
		   BEGIN
		       IF (@Catalog = 'ACDW_CLMS_SHCN_MSSP')
					EXEC [lst].[usp_lstAllClientNippesNIP2]'[ACDW_CLMS_SHCN_MSSP].[lst].[LIST_NPPES_NPI]'
               ELSE IF (@Catalog = 'ACDW_CLMS_DHTX')
			        EXEC [lst].[usp_lstAllClientNippesNIP2]'ACDW_CLMS_DHTX.[lst].[LIST_NPPES_NPI]'
               ELSE IF (@Catalog = 'ACECAREDW_TEST')
			        EXEC [lst].[usp_lstAllClientNippesNIP2]'[ACECAREDW_TEST].[lst].[LIST_NPPES_NPI]'
               ELSE IF (@Catalog = 'ACDW_CLMS_UHC')
			        EXEC [lst].[usp_lstAllClientNippesNIP2]'ACDW_CLMS_UHC.[lst].[LIST_NPPES_NPI]'
               ELSE IF (@Catalog = 'ACECAREDW')
			        EXEC [lst].[usp_lstAllClientNippesNIP2]'ACECAREDW.[lst].[LIST_NPPES_NPI]'
                ELSE IF (@Catalog = 'AceMasterQMCalc')   
				    EXEC [lst].[usp_lstAllClientNippesNIP2]'AceMasterQMCalc.[lst].[LIST_NPPES_NPI]'

		   END
		   ELSE IF (@ListTable = 'LIST_HCC_CODES')
		   BEGIN
			   IF (@Catalog = 'ACDW_CLMS_SHCN_MSSP')
					EXEC [lst].[usp_lstAllClientHccCodes2]'ACDW_CLMS_SHCN_MSSP.[lst].[LIST_HCC_CODES]'
               ELSE IF (@Catalog = 'ACDW_CLMS_AET_TX_COM')
			        EXEC [lst].[usp_lstAllClientHccCodes2]'[ACDW_CLMS_AET_TX_COM].[lst].[LIST_HCC_CODES]'
               ELSE IF (@Catalog = 'ACDW_CLMS_DHTX')
			        EXEC [lst].[usp_lstAllClientHccCodes2]'[ACDW_CLMS_DHTX].[lst].[LIST_HCC_CODES]'
               ELSE IF (@Catalog = 'ACECAREDW')
			        EXEC [lst].[usp_lstAllClientHccCodes2]'[ACECAREDW].[lst].[LIST_HCC_CODES]'
               ELSE IF (@Catalog = 'ACECAREDW_TEST')
			         EXEC [lst].[usp_lstAllClientHccCodes2]'[ACECAREDW_TEST].[lst].[LIST_HCC_CODES]'
               ELSE IF (@Catalog = 'AceMasterQMCalc')
			         EXEC [lst].[usp_lstAllClientHccCodes2]'[AceMasterQMCalc].[lst].[LIST_HCC_CODES]'
		   END
		    ELSE IF (@ListTable = '[lst].[LIST_HEDIS_MEASURE]')
			BEGIN
			IF (@Catalog = 'ACDW_CLMS_SHCN_MSSP')
			    EXEC [lst].[usp_lstAllClientHedisCode]'ACDW_CLMS_SHCN_MSSP.[lst].[LIST_HEDIS_MEASURE]'

			END
			ELSE IF (@ListTable = '[lst].LIST_MDC')
			BEGIN
				EXEC [lst].[usp_lstAllClientMDC]'ACECAREDW_TEST.dbo.LIST_MDC'
				EXEC [lst].[usp_lstAllClientMDC]'ACDW_CLMS_SHCN_MSSP.[lst].LIST_MDC'
			END
		   -- EXEC [lst].[usp_lstAllClientHccCodes]'ACDW_CLMS_SHCN_MSSP.[lst].[LIST_HCC_CODES]'
-- EXEC [lst].[usp_lstAllClientHccCodes]'[ACDW_CLMS_AET_TX_COM].[lst].[LIST_HCC_CODES]'
-- EXEC [lst].[usp_lstAllClientHccCodes]'[ACDW_CLMS_DHTX].[lst].[LIST_HCC_CODES]'
-- EXEC [lst].[usp_lstAllClientHccCodes]'[ACECAREDW].[lst].[LIST_HCC_CODES]'
		   -- EXEC [lst].[usp_lstAllClientNippesNIP]'[ACDW_CLMS_SHCN_MSSP].[lst].[LIST_NPPES_NPI]'
-- EXEC [lst].[usp_lstAllClientNippesNIP]'ACDW_CLMS_DHTX.[lst].[LIST_NPPES_NPI]'
-- EXEC [lst].[usp_lstAllClientNippesNIP]'[ACECAREDW_TEST].[lst].[LIST_NPPES_NPI]'


		   --  EXEC [lst].[usp_lstAllClientDrugProduct]'ACDW_CLMS_DHTX.[lst].[lstNdcDrugProduct]'
--  EXEC [lst].[usp_lstAllClientDrugProduct]'[ACDW_CLMS_SHCN_MSSP].[lst].[lstNdcDrugProduct]'
--  EXEC [lst].[usp_lstAllClientDrugProduct]'ACDW_CLMS_UHC.lst.[lstNdcDrugProduct]'
		   --  EXEC [lst].[usp_lstAllClientDrugPackage]'ACDW_CLMS_DHTX.lst.[lstNdcDrugPackage]'
--  EXEC [lst].[usp_lstAllClientDrugPackage]'ACDW_CLMS_SHCN_MSSP.lst.[lstNdcDrugPackage]'
--  EXEC [lst].[usp_lstAllClientDrugPackage]'ACECAREDW_TEST.dbo.[lstNdcDrugPackage]'
--  EXEC [lst].[usp_lstAllClientDrugPackage]'ACECAREDW_TEST.lst.[lstNdcDrugPackage]'


--Load QM_Mapping
--  EXEC [lst].[usp_lstAllClientQMMapping]'ACDW_CLMS_SHCN_MSSP.[lst].[LIST_QM_Mapping]'
--  EXEC [lst].[usp_lstAllClientQMMapping]'ACDW_CLMS_UHC.[lst].LIST_QM_Mapping'
--  EXEC [lst].[usp_lstAllClientQMMapping]'ACDW_CLMS_WLC.[lst].LIST_QM_Mapping'
--  EXEC [lst].[usp_lstAllClientQMMapping]'ACECAREDW_TEST.[lst].LIST_QM_Mapping'
--  EXEC [lst].[usp_lstAllClientQMMapping]'ACECAREDW.[lst].LIST_QM_Mapping'
--  EXEC [lst].[usp_lstAllClientQMMapping]'ACDW_CLMS_DHTX.[lst].LIST_QM_Mapping'


----Load CareOppsPrograms
--  EXEC [lst].[usp_lstAllClientMapCareoppsPrograms]'ACDW_CLMS_UHC.lst.lstMapCareoppsPrograms'
--  EXEC [lst].[usp_lstAllClientMapCareoppsPrograms]'ACDW_CLMS_WLC.lst.lstMapCareoppsPrograms'
--  EXEC [lst].[usp_lstAllClientMapCareoppsPrograms]'ACECAREDW_TEST.lst.lstMapCareoppsPrograms'
--  EXEC [lst].[usp_lstAllClientMapCareoppsPrograms]'ACECAREDW.lst.lstMapCareoppsPrograms'
--  EXEC [lst].[usp_lstAllClientMapCareoppsPrograms]'ACDW_CLMS_DHTX.lst.lstMapCareoppsPrograms'
--  EXEC [lst].[usp_lstAllClientMapCareoppsPrograms]'ACDW_CLMS_SHCN_MSSP.lst.lstMapCareoppsPrograms'


--  --Load CareopTo Plan
--  EXEC [lst].[usp_lstAllClientCareOpToPlan]'ACDW_CLMS_UHC.lst.lstCareOpToPlan'
--  EXEC [lst].[usp_lstAllClientCareOpToPlan]'ACDW_CLMS_WLC.lst.lstCareOpToPlan'
--  EXEC [lst].[usp_lstAllClientCareOpToPlan]'ACECAREDW_TEST.lst.lstCareOpToPlan'
--  EXEC [lst].[usp_lstAllClientCareOpToPlan]'ACECAREDW.lst.lstCareOpToPlan'
--  EXEC [lst].[usp_lstAllClientCareOpToPlan]'ACDW_CLMS_DHTX.lst.lstCareOpToPlan'
--  EXEC [lst].[usp_lstAllClientCareOpToPlan]'ACDW_CLMS_SHCN_MSSP.lst.lstCareOpToPlan'


--  --Load Hedis Code
--  EXEC [lst].[usp_lstAllClientHedisCode]'ACECAREDW.dbo.LIST_HEDIS_CODE'
--  EXEC [lst].[usp_lstAllClientHedisCode]'ACECAREDW_TEST.dbo.LIST_HEDIS_CODE'
--  EXEC [lst].[usp_lstAllClientHedisCode]'AceMasterQMCalc.lst.LIST_HEDIS_CODE'
--  EXEC [lst].[usp_lstAllClientHedisCode]'ACDW_CLMS_UHC.lst.LIST_HEDIS_CODE'
--  EXEC [lst].[usp_lstAllClientHedisCode]'[ACDW_CLMS_DHTX].lst.LIST_HEDIS_CODE'
--  EXEC [lst].[usp_lstAllClientHedisCode]'ACDW_CLMS_SHCN_MSSP.lst.LIST_HEDIS_CODE'

--  --Load Drug Package
--  EXEC [lst].[usp_lstAllClientDrugPackage]'ACDW_CLMS_DHTX.lst.[lstNdcDrugPackage]'
--  EXEC [lst].[usp_lstAllClientDrugPackage]'ACDW_CLMS_SHCN_MSSP.lst.[lstNdcDrugPackage]'
--  EXEC [lst].[usp_lstAllClientDrugPackage]'ACECAREDW_TEST.dbo.[lstNdcDrugPackage]'
--  EXEC [lst].[usp_lstAllClientDrugPackage]'ACECAREDW_TEST.lst.[lstNdcDrugPackage]'

--  --Load Drug Product
--  EXEC [lst].[usp_lstAllClientDrugProduct]'ACDW_CLMS_DHTX.[lst].[lstNdcDrugProduct]'
--  EXEC [lst].[usp_lstAllClientDrugProduct]'[ACDW_CLMS_SHCN_MSSP].[lst].[lstNdcDrugProduct]'
--  EXEC [lst].[usp_lstAllClientDrugProduct]'ACDW_CLMS_UHC.lst.[lstNdcDrugProduct]'

-- --Load NippesNIP
-- EXEC [lst].[usp_lstAllClientNippesNIP]'[ACDW_CLMS_SHCN_MSSP].[lst].[LIST_NPPES_NPI]'
-- EXEC [lst].[usp_lstAllClientNippesNIP]'ACDW_CLMS_DHTX.[lst].[LIST_NPPES_NPI]'
-- EXEC [lst].[usp_lstAllClientNippesNIP]'[ACECAREDW_TEST].[lst].[LIST_NPPES_NPI]'

-- --Load HccCodes
-- EXEC [lst].[usp_lstAllClientHccCodes]'ACDW_CLMS_SHCN_MSSP.[lst].[LIST_HCC_CODES]'
-- EXEC [lst].[usp_lstAllClientHccCodes]'[ACDW_CLMS_AET_TX_COM].[lst].[LIST_HCC_CODES]'
-- EXEC [lst].[usp_lstAllClientHccCodes]'[ACDW_CLMS_DHTX].[lst].[LIST_HCC_CODES]'
-- EXEC [lst].[usp_lstAllClientHccCodes]'[ACECAREDW].[lst].[LIST_HCC_CODES]'


  --Keep updating SP

END