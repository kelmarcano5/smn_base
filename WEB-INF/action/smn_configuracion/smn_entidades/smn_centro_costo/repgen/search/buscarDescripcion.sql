select
		smn_base.smn_centro_costo.cco_descripcion_larga
from
		smn_base.smn_centro_costo
where
		upper(smn_base.smn_centro_costo.cco_descripcion_larga) = upper(${fld:cco_descripcion_larga})
