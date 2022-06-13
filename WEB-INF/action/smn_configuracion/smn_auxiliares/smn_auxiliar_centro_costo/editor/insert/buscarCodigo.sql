select
		smn_base.smn_auxiliar_centro_costo.tco_codigo
from
		smn_base.smn_auxiliar_centro_costo
where
		upper(smn_base.smn_auxiliar_centro_costo.tco_codigo) = upper(${fld:tco_codigo})
