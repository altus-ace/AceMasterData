
CREATE PROCEDURE [ast].[usp_lstAllClientPCPList]
AS
---Insert into stg and transform
--stg table shud be same structure as list pcp
--insert into Acemasterdata list pcp

BEGIN
--Step 1: Insert into Staging
BEGIN TRAN
DECLARE @DATE DATE = GETDATE()

INSERT INTO			ast.LIST_PCP (
					[SrcFileName]
					, [CLIENT_ID]
					, [PCP_NPI]
					, [PCP_FIRST_NAME]
					, [PCP_MI]
					, [PCP_LAST_NAME]
					, [PCP__ADDRESS]
					, [PCP__ADDRESS2]
					, [PCP_CITY]
					, [PCP_STATE]  
					, [PCP_ZIP]
					, [PCP_PHONE]
					, [PCP_CLIENT_ID]
					, [PCP_PRACTICE_TIN]
					, [PCP_PRACTICE_TIN_NAME]
					, [PRIM_SPECIALTY]
					, [Sub_Speciality]
					, [PROV_TYPE]
					, [PCP_FLAG]
					, [CAMPAIGN_RUN_ID]
					, [T_Modify_by]
					, [ACTIVE]
					, [EffectiveDate]
					, [ExpirationDate]
					, [PCP_POD])
--DECLARE @DATE DATE = GETDATE()
SELECT				DISTINCT '[ACECAREDW].[adw].[fctProviderRoster]'
					, [ClientKey]
					, [NPI]
					, [adi].[udf_ConvertToCamelCase]([FirstName])
					, ''
					, [adi].[udf_ConvertToCamelCase]([LastName])
					, ''
					, ''
					, ''
					, ''
					, ''--[BillingZipCode]
					, ''
					, ''
					, [TIN]
					, [adi].[udf_ConvertToCamelCase]([GroupName])
					, [adi].[udf_ConvertToCamelCase]([PrimarySpeciality])	
					, [adi].[udf_ConvertToCamelCase]([Sub_Speciality])
					, [ProviderType]
					, CASE [ProviderType]
					   WHEN 'PCP' THEN 'Y'
					   ELSE 'N'
					   END AS   [PCP_FLAG]
					, ''				  --[CAMPAIGN_RUN_ID]
					, ''
					, 'Y'
					, [EffectiveDate]
					, [ExpirationDate]
					, [Chapter]
					--,RowEffectiveDate,RowExpirationDate
FROM				[ACECAREDW].[adw].[fctProviderRoster] 
WHERE				@DATE BETWEEN RowEffectiveDate AND RowExpirationDate
AND					EffectiveDate >'2019-01-01'

COMMIT
END

BEGIN
BEGIN TRAN
--Step 2: Transform Data
		--a) Select Max Record for pcp_address,pcp_city,pcp_state, pcp_zip, pcp_phone
		--b) Change them to Camel Case
		--c) Strip pcp_phone of non-numeric char
;WITH CTE_UpdateDem
AS
(					--a
SELECT				DISTINCT PCP_NPI
					,[PCP__ADDRESS] =  MAX([PrimaryAddress])		
					, [PCP_CITY]   =   MAX([PrimaryCity])			
					, [PCP_STATE]  =   MAX([PrimaryState])			
					, [PCP_ZIP]	   =   MAX([BillingZipcode])		
					, [PCP_PHONE]  =   MAX([PrimaryAddressPhoneNum])
FROM				ast.LIST_PCP trg
JOIN				[ACECAREDW].[adw].[fctProviderRoster] src
ON					trg.PCP_NPI = src.NPI
GROUP BY			PCP_NPI
)					--b and c
UPDATE				ast.LIST_PCP
SET					[PCP__ADDRESS] =  [adi].[udf_ConvertToCamelCase](cte.[PCP__ADDRESS])
					,[PCP_CITY]   =   [adi].[udf_ConvertToCamelCase](cte.[PCP_CITY])
					,[PCP_STATE]  =   cte.[PCP_STATE]
					,[PCP_ZIP]	   =  cte.[PCP_ZIP]
					,[PCP_PHONE]  =   lst.[fnStripNonNumericChar](cte.[PCP_PHONE])
FROM				ast.LIST_PCP lst
JOIN				CTE_UpdateDem cte
ON					lst.PCP_NPI = cte.PCP_NPI

			--d Format PCP_Phone
UPDATE				ast.LIST_PCP
SET					PCP_PHONE = lst.PhoneFormat(PCP_PHONE)

COMMIT
END



