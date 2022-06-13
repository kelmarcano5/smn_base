UPDATE smn_base.smn_corporaciones SET
	crp_codigo=${fld:crp_codigo},
	crp_nombre=${fld:crp_nombre},
	crp_unidad_negocio=${fld:crp_unidad_negocio},
	crp_moneda=${fld:crp_moneda},
	crp_direccion=${fld:crp_direccion},
	crp_idioma='${def:locale}',
	crp_usuario='${def:user}'
WHERE
	smn_base.smn_corporaciones.smn_corporaciones_id=${fld:id}

