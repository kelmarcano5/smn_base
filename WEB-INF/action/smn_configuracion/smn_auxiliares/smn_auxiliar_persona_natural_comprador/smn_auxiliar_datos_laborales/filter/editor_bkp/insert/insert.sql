INSERT INTO smn_base.smn_auxiliar_datos_laborales
(
	smn_auxiliar_datos_laborales_id,
	smn_clase_auxiliar_rf,
	smn_auxiliar_rf,
	adl_nombre_compania,
	adl_rif,
	adl_departamento,
	adl_cargo,
	smn_paises_rf,
	smn_entidades_federales_rf,
	smn_ciudades_rf,
	adl_direccion,
	adl_telefono_oficina,
	adl_email,
	adl_idioma,
	adl_usuario,
	adl_fecha_registro,
	adl_hora
)
VALUES
(
	${seq:currval@smn_base.seq_smn_auxiliar_datos_laborales},
	${fld:smn_clase_auxiliar_rf},
	${fld:smn_auxiliar_rf},
	${fld:adl_nombre_compania},
	${fld:adl_rif},
	${fld:adl_departamento},
	${fld:adl_cargo},
	${fld:smn_paises_rf},
	${fld:smn_entidades_federales_rf},
	${fld:smn_ciudades_rf},
	${fld:adl_direccion},
	${fld:adl_telefono_oficina},
	${fld:adl_email},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)