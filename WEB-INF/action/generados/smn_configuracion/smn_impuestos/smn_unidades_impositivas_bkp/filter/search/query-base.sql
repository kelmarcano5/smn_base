select	
	smn_base.smn_unidades_impositivas.uim_codigo,
	smn_base.smn_unidades_impositivas.uim_descripcion,
	smn_base.smn_unidades_impositivas.uim_moneda_referencia,
	smn_base.smn_unidades_impositivas.uim_fecha_registro,
	smn_base.smn_unidades_impositivas.smn_unidades_impositivas_id

from
	smn_base.smn_unidades_impositivas
where
	smn_unidades_impositivas_id is not null	
 	 	${filter}
order by 
	smn_unidades_impositivas_id