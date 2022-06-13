select
	case
		when smn_base.smn_auxiliar_centro_costo.tco_tipo_cco='SR' then '${lbl:b_profitable}'
		when smn_base.smn_auxiliar_centro_costo.tco_tipo_cco='SE' then '${lbl:b_services}'
		when smn_base.smn_auxiliar_centro_costo.tco_tipo_cco='SP' then '${lbl:b_support}'
		when smn_base.smn_auxiliar_centro_costo.tco_tipo_cco='DG' then '${lblb_distribution}'
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
order by 
	smn_base.smn_auxiliar_centro_costo.smn_auxiliar_centro_costo_id desc