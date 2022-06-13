select
		smn_base.smn_centro_costo.cco_descripcion_larga
from
		smn_base.smn_centro_costo
where
		upper(trim(smn_base.smn_centro_costo.cco_descripcion_larga)) = upper(trim(${fld:cco_descripcion_larga}))
