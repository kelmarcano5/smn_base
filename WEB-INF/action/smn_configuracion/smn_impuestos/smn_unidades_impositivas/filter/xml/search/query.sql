select
	smn_base.smn_monedas.mon_nombre,
		smn_base.smn_unidades_impositivas.smn_unidades_impositivas_id,
	smn_base.smn_unidades_impositivas.uim_codigo,
	smn_base.smn_unidades_impositivas.uim_descripcion,
	smn_base.smn_unidades_impositivas.uim_moneda_referencia,
	smn_base.smn_unidades_impositivas.uim_fecha_registro
	
from

	smn_base.smn_monedas,
	smn_base.smn_unidades_impositivas
where
	smn_base.smn_monedas.smn_monedas_id = smn_base.smn_unidades_impositivas.uim_moneda_referencia
