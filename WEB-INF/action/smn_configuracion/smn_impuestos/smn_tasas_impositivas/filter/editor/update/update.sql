UPDATE smn_base.smn_tasas_impositivas SET
	smn_unidades_impositivas_id=${fld:smn_unidades_impositivas_id},
	tim_fecha_vigencia=${fld:tim_fecha_vigencia},
	tim_valor=${fld:tim_valor},
	tim_idioma='${def:locale}',
	tim_usuario='${def:user}'
WHERE
	smn_base.smn_tasas_impositivas.smn_tasas_impositivas_id=${fld:id}

