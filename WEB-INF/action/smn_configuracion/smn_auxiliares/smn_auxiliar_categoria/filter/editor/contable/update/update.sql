UPDATE smn_base.smn_auxiliar_categoria SET
	aca_naturaleza_auxiliar=${fld:aca_naturaleza_auxiliar},
	aca_tipo_persona=${fld:aca_tipo_persona},
	aca_empresa=${fld:aca_empresa},
	aca_sucursal=${fld:aca_sucursal},
	aca_unidad_negocio=${fld:aca_unidad_negocio},
	aca_area_servicio=${fld:aca_area_servicio},
	aca_unidad_servicio=${fld:aca_unidad_servicio},
	aca_idioma='${def:locale}',
	aca_usuario='${def:user}'
WHERE
	smn_base.smn_auxiliar_categoria.smn_auxiliar_categoria_id=${fld:id}

