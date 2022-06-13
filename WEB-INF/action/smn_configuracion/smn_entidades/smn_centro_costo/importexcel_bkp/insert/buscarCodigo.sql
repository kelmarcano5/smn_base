select
		smn_base.smn_centro_costo.cco_codigo
from
		smn_base.smn_centro_costo
where
		upper(trim(smn_base.smn_centro_costo.cco_codigo)) = upper(trim(${fld:cco_codigo}))
