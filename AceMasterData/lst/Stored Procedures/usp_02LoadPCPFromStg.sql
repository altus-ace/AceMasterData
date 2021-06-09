
CREATE PROCEDURE [lst].[usp_02LoadPCPFromStg]
AS

BEGIN

BEGIN TRAN

MERGE				lst.LIST_PCP trg
USING				ast.List_PCP src
ON					trg.Client_ID = src.Client_ID
AND					trg.[PCP_NPI] = src.[PCP_NPI]
AND					trg.[PCP_FIRST_NAME] = src.[PCP_FIRST_NAME]
AND					trg.[PCP_LAST_NAME] = src.[PCP_LAST_NAME]
AND					trg.[PCP_PRACTICE_TIN_NAME] = src.[PCP_PRACTICE_TIN_NAME]
AND					trg.[PCP_PRACTICE_TIN] = src.[PCP_PRACTICE_TIN]
WHEN MATCHED
THEN UPDATE
SET					trg.[EffectiveDate] = src.[EffectiveDate]
					,trg. [ExpirationDate] = src.[ExpirationDate]
WHEN NOT MATCHED BY TARGET
THEN INSERT				([SrcFileName]
						 ,	[CLIENT_ID]
						 ,	[PCP_NPI]
						 ,	[PCP_FIRST_NAME]
						 ,	[PCP_MI]
						 ,  [PCP_LAST_NAME]
						 ,	[PCP__ADDRESS]
						 ,	[PCP__ADDRESS2]
						 ,  [PCP_CITY]
						 ,	[PCP_STATE]		
						 ,  [PCP_ZIP]
						 ,  [PCP_PHONE]
						 ,	[PCP_PRACTICE_TIN]		
						 ,  [PCP_PRACTICE_TIN_NAME]
						 ,  [PRIM_SPECIALTY]
						 ,  [sub_speciality]
						 ,  [PROV_TYPE]
						 ,	[PCP_FLAG]
						 ,  [CAMPAIGN_RUN_ID]
						 ,	[T_Modify_by]
						 ,	[ACTIVE]
						 ,	[PCP_POD]
						 ,	[EffectiveDate]
						 ,  [ExpirationDate]
						 ,	[AccountType])
VALUES					('[ACECAREDW].[adw].[fctProviderRoster]'
						 ,src.[CLIENT_ID]
						 ,src.[PCP_NPI]
						 ,src.[PCP_FIRST_NAME]
						 ,	''
						 ,	 src.[PCP_LAST_NAME]
						 ,src.[PCP__ADDRESS]
						 ,''
						 ,	src.[PCP_CITY]
						 , src.[PCP_STATE]
						 ,src.[PCP_ZIP]
						 ,src.[PCP_PHONE]
						 ,src.[PCP_PRACTICE_TIN]
						 ,src.[PCP_PRACTICE_TIN_NAME]
						 ,src.[PRIM_SPECIALTY]
						 ,src.[sub_speciality]
						 ,src.[PROV_TYPE]
						 ,src.[PCP_FLAG]
						 ,src.[CAMPAIGN_RUN_ID]
						 ,src.[T_Modify_by]
						 ,src.[Active]
						 ,src.[PCP_POD]
						 ,src.effectivedate
						 ,src.expirationdate
						 ,src.[AccountType])
;
COMMIT

END
