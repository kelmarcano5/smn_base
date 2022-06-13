select
	smn_base.smn_auxiliar_centro_costo.tco_codigo
from
	smn_base.smn_auxiliar_centro_costo
where
	upper(trim(smn_base.smn_auxiliar_centro_costo.tco_codigo)) = upper(trim(${fld:tco_codigo}))
