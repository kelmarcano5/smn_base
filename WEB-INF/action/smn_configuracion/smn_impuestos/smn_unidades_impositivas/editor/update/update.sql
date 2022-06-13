UPDATE smn_base.smn_unidades_impositivas SET
	uim_codigo=${fld:uim_codigo},
	uim_descripcion=${fld:uim_descripcion},
	uim_moneda_referencia=${fld:uim_moneda_referencia},
	uim_idioma='${def:locale}',
	uim_usuario='${def:user}'
WHERE
	smn_base.smn_unidades_impositivas.smn_unidades_impositivas_id=${fld:id}

