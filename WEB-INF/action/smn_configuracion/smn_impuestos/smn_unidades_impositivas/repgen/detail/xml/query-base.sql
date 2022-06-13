select
	smn_base.smn_monedas.mon_nombre,
	${field}
from
	smn_base.smn_monedas,
	smn_base.smn_unidades_impositivas
where
	smn_base.smn_monedas.smn_monedas_id = smn_base.smn_unidades_impositivas.uim_moneda_referencia and
		smn_base.smn_unidades_impositivas.smn_unidades_impositivas_id = ${fld:id}
	
