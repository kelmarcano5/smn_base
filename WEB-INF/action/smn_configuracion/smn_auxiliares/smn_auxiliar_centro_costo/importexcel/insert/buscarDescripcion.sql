select
	smn_base.smn_auxiliar_centro_costo.tco_descripcion_larga
from
	smn_base.smn_auxiliar_centro_costo
where
	upper(trim(smn_base.smn_auxiliar_centro_costo.tco_descripcion_larga)) = upper(trim(${fld:tco_descripcion_larga}))
