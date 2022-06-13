select
	smn_base.smn_auxiliar_centro_costo.smn_auxiliar_centro_costo_id,
	${field}
from
	smn_base.smn_auxiliar_centro_costo
	left outer join smn_base.smn_clase_auxiliar on smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id = smn_base.smn_auxiliar_centro_costo.tco_clase_auxiliar
	left outer join smn_base.smn_v_auxiliar on smn_base.smn_v_auxiliar.smn_v_auxiliar_id = smn_base.smn_auxiliar_centro_costo.tco_auxiliar 	
where
	smn_base.smn_auxiliar_centro_costo.tco_idioma = '${def:locale}'
and
	smn_base.smn_auxiliar_centro_costo.tco_usuario = '${def:user}'
	${filter}
order by
	smn_base.smn_auxiliar_centro_costo.smn_auxiliar_centro_costo_id desc	
	
