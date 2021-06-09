
CREATE  function lst.ValidateQmMappingDateRange
(
    @QmKey INT,
    @EffDate datetime,
    @ExpDate datetime
)
returns bit
as
begin
    declare @Valid bit = 1;
    DECLARE @cnt INT;

    SELECT @cnt = COUNT(*)
                  FROM   lst.LIST_QM_Mapping QM
                  WHERE  QM.Qm = (SELECT qm FROM lst.LIST_QM_Mapping qm where  qm.qmkey = @Qmkey)
				AND    (@EffDate <= QM.ExpirationDate and QM.EffectiveDate <= @ExpDate )
				AND qm.Active = 'Y'
	IF @Cnt > 1 
	   set @Valid = 0;

    return @Valid;
end;

