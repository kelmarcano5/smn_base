select
	smn_base.smn_unidades_impositivas.smn_unidades_impositivas_id,
	${field}
from
	smn_base.smn_monedas,
	smn_base.smn_unidades_impositivas
where
	smn_base.smn_unidades_impositivas.smn_unidades_impositivas_id is not null
and
	smn_base.smn_monedas.smn_monedas_id = smn_base.smn_unidades_impositivas.uim_moneda_referencia
and
	smn_base.smn_unidades_impositivas.uim_idioma = '${def:locale}'
and
	smn_base.smn_unidades_impositivas.uim_usuario = '${def:user}'
	${filter}
order by
	smn_base.smn_unidades_impositivas.smn_unidades_impositivas_id desc
	
