select
		smn_base.smn_centro_costo.cco_codigo
from
		smn_base.smn_centro_costo
where
		upper(smn_base.smn_centro_costo.cco_codigo) = upper(${fld:cco_codigo})
