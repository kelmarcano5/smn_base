select
	smn_base.smn_sectores_economicos.sec_codigo
from
	smn_base.smn_sectores_economicos
where
	upper(trim(smn_base.smn_sectores_economicos.sec_codigo)) = upper(trim(${fld:sec_codigo}))
