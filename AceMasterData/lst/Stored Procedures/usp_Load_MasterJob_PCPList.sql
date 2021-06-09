
CREATE PROCEDURE lst.usp_Load_MasterJob_PCPList
AS

BEGIN

EXECUTE  ast.usp_LoadPCPIntoStg

END



BEGIN

EXECUTE  lst.usp_LoadPCPFromStg

END