UPDATE smn_base.smn_auxiliar_datos_laborales SET
	smn_clase_auxiliar_rf=${fld:smn_clase_auxiliar_rf},
	smn_auxiliar_rf=${fld:smn_auxiliar_rf},
	adl_nombre_compania=${fld:adl_nombre_compania},
	adl_rif=${fld:adl_rif},
	adl_departamento=${fld:adl_departamento},
	adl_cargo=${fld:adl_cargo},
	smn_paises_rf=${fld:smn_paises_rf},
	smn_entidades_federales_rf=${fld:smn_entidades_federales_rf},
	smn_ciudades_rf=${fld:smn_ciudades_rf},
	adl_direccion=${fld:adl_direccion},
	adl_telefono_oficina=${fld:adl_telefono_oficina},
	adl_email=${fld:adl_email},
	adl_idioma='${def:locale}',
	adl_usuario='${def:user}',
	adl_fecha_registro={d '${def:date}'},
	adl_hora='${def:time}'

WHERE
	smn_auxiliar_datos_laborales_id=${fld:id}

