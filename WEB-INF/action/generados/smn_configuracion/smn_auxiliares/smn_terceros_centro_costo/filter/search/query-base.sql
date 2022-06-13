select	
	smn_base.smn_terceros.smn_terceros_id, 
	smn_base.smn_terceros.ter_descripcion_corta as ter_descripcion_corta_pl0,
	case
		when smn_base.smn_terceros_centro_costo.trc_tipo_cco='SR' then '${lbl:b_profitable}'
		when smn_base.smn_terceros_centro_costo.trc_tipo_cco='SE' then '${lbl:b_services}'
		when smn_base.smn_terceros_centro_costo.trc_tipo_cco='SP' then '${lbl:b_support}'
		when smn_base.smn_terceros_centro_costo.trc_tipo_cco='DG' then '${lblb_distribution}'
	end as trc_tipo_cco_combo,
	smn_base.smn_terceros_centro_costo.smn_terceros_id,
	smn_base.smn_terceros_centro_costo.trc_codigo,
	smn_base.smn_terceros_centro_costo.trc_descripcion_corta,
	smn_base.smn_terceros_centro_costo.trc_descripcion_larga,
	smn_base.smn_terceros_centro_costo.trc_responsable,
	smn_base.smn_terceros_centro_costo.trc_tipo_cco,
	smn_base.smn_terceros_centro_costo.trc_nivel,
	smn_base.smn_terceros_centro_costo.trc_clase_auxiliar,
	smn_base.smn_terceros_centro_costo.trc_auxiliar,
	smn_base.smn_terceros_centro_costo.trc_fecha_registro,
	smn_base.smn_terceros_centro_costo.smn_terceros_centro_costo_id
from
	smn_base.smn_terceros,
	smn_base.smn_terceros_centro_costo
where
	smn_base.smn_terceros_centro_costo.smn_terceros_centro_costo_id is not null	
and 	
	smn_base.smn_terceros.smn_terceros_id=smn_base.smn_terceros_centro_costo.smn_terceros_id 
	${filter}
order by 
	smn_base.smn_terceros_centro_costo.smn_terceros_centro_costo_id