UPDATE smn_base.smn_entidades SET
	ent_codigo=${fld:ent_codigo},
	ent_comunidad=${fld:ent_comunidad},
	ent_corporacion=${fld:ent_corporacion},
	ent_moneda=${fld:ent_moneda},
	ent_sector_economico=${fld:ent_sector_economico},
	ent_descripcion_corta=${fld:ent_descripcion_corta},
	ent_descripcion_larga=${fld:ent_descripcion_larga},
	ent_nro_id_fiscal=${fld:ent_nro_id_fiscal},
	ent_direccion=${fld:ent_direccion},
	ent_contacto=${fld:ent_contacto},
	ent_telefono_fijo=${fld:ent_telefono_fijo},
	ent_telefono_movil=${fld:ent_telefono_movil},
	ent_email=${fld:ent_email},
	ent_act_economica=${fld:ent_act_economica},
	ent_idioma='${def:locale}',
	ent_usuario='${def:user}',
	ent_fecha_registro={d '${def:date}'},
	ent_hora='${def:time}'

WHERE
	smn_entidades_id=${fld:id}

