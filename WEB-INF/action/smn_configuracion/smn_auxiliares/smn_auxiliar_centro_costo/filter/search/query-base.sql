select
	smn_base.smn_v_auxiliar.smn_item,
	smn_base.smn_clase_auxiliar.cla_nombre,
	case
		when smn_base.smn_auxiliar_centro_costo.tco_tipo_cco='SR' then '${lbl:b_profitable}'
		when smn_base.smn_auxiliar_centro_costo.tco_tipo_cco='SE' then '${lbl:b_services}'
		when smn_base.smn_auxiliar_centro_costo.tco_tipo_cco='SP' then '${lbl:b_support}'
		when smn_base.smn_auxiliar_centro_costo.tco_tipo_cco='DG' then '${lbl:b_distribution}'
	end as tco_tipo_cco_combo,
	smn_base.smn_auxiliar_centro_costo.tco_codigo,
	smn_base.smn_auxiliar_centro_costo.tco_descripcion_corta,
	smn_base.smn_auxiliar_centro_costo.tco_descripcion_larga,
	smn_base.smn_auxiliar_centro_costo.tco_clase_auxiliar,
	smn_base.smn_auxiliar_centro_costo.tco_auxiliar,
	smn_base.smn_auxiliar_centro_costo.tco_responsable,
	smn_base.smn_auxiliar_centro_costo.tco_tipo_cco,
	smn_base.smn_auxiliar_centro_costo.tco_nivel,
	smn_base.smn_auxiliar_centro_costo.tco_fecha_registro,
	smn_base.smn_auxiliar_centro_costo.smn_auxiliar_centro_costo_id
from
	smn_base.smn_auxiliar_centro_costo
	left outer join smn_base.smn_clase_auxiliar on smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id = smn_base.smn_auxiliar_centro_costo.tco_clase_auxiliar
	left outer join smn_base.smn_v_auxiliar on smn_base.smn_v_auxiliar.smn_v_auxiliar_id = smn_base.smn_auxiliar_centro_costo.tco_auxiliar 	
where
	smn_base.smn_auxiliar_centro_costo.smn_auxiliar_centro_costo_id is not null
and
	smn_base.smn_auxiliar_centro_costo.tco_idioma = '${def:locale}'
and
	smn_base.smn_auxiliar_centro_costo.tco_usuario = '${def:user}'
	${filter}
order by
	smn_base.smn_auxiliar_centro_costo.smn_auxiliar_centro_costo_id desc
