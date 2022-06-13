UPDATE smn_base.smn_auxiliar SET
	smn_naturaleza_auxiliar_rf='1',
	smn_clase_auxiliar_rf=${fld:smn_clase_auxiliar_rf},
	aux_tipo_persona='PN',
	aux_codigo=${fld:userlogin},
	aux_descripcion=CONCAT(${fld:aux_apellidos}, ${fld:aux_nombres}),
	aux_apellidos=${fld:aux_apellidos},
	aux_nombres=${fld:aux_nombres},
	aux_tipo_doc_oficial_rf=${fld:aux_tipo_doc_oficial_rf},
	aux_num_doc_oficial=${fld:aux_num_doc_oficial},
	aux_idioma='${def:locale}',
	aux_usuario='${def:user}',
	aux_fecha_registro={d '${def:date}'},
	aux_hora='${def:time}'
WHERE
	smn_auxiliar_id=${fld:id}

	