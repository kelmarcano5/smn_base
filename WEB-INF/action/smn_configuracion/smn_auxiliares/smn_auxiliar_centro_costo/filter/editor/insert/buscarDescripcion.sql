select
		smn_base.smn_auxiliar_centro_costo.tco_descripcion_larga
from
		smn_base.smn_auxiliar_centro_costo
where
		upper(smn_base.smn_auxiliar_centro_costo.tco_descripcion_larga) = upper(${fld:tco_descripcion_larga})
