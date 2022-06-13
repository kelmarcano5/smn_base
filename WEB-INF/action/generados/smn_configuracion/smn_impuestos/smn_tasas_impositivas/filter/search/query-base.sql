select	
	smn_base.smn_unidades_impositivas.smn_unidades_impositivas_id, 
	smn_base.smn_unidades_impositivas.uim_codigo as uim_codigo_pl0,
	smn_base.smn_tasas_impositivas.smn_unidades_impositivas_id,
	smn_base.smn_tasas_impositivas.tim_fecha_vigencia,
	smn_base.smn_tasas_impositivas.tim_valor,
	smn_base.smn_tasas_impositivas.tim_fecha_registro,
	smn_base.smn_tasas_impositivas.smn_tasas_impositivas_id

from
	smn_base.smn_unidades_impositivas,
	smn_base.smn_tasas_impositivas
where
	smn_tasas_impositivas_id is not null	
and 	smn_base.smn_unidades_impositivas.smn_unidades_impositivas_id=smn_base.smn_tasas_impositivas.smn_unidades_impositivas_id 
	 	${filter}
order by 
	smn_tasas_impositivas_id