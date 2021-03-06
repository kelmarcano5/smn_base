UPDATE smn_base.smn_auxiliar SET
	smn_naturaleza_auxiliar_rf='4',
	smn_clase_auxiliar_rf=${fld:smn_clase_auxiliar_rf},
	aux_tipo_persona=${fld:aux_tipo_persona},
	aux_codigo=${fld:aux_codigo},
	aux_descripcion=${fld:aux_descripcion},
	aux_apellidos=${fld:aux_apellidos},
	aux_nombres=${fld:aux_nombres},
	aux_representante_legal=${fld:aux_representante_legal},
	aux_tipo_doc_oficial_rf=${fld:aux_tipo_doc_oficial_rf},
	aux_num_doc_oficial=${fld:aux_num_doc_oficial},
	aux_rif=${fld:aux_rif},
	aux_num_coleg_medicos=${fld:aux_num_coleg_medicos},
	aux_num_minist_salud=${fld:aux_num_minist_salud},
	aux_sexo=${fld:aux_sexo},
	aux_estado_civil=${fld:aux_estado_civil},
	aux_fecha_nac=${fld:aux_fecha_nac},
	aux_lugar_nac=${fld:aux_lugar_nac},
	aux_direccion_rf=${fld:aux_direccion_rf},
	aux_nacionalidad_rf=${fld:aux_nacionalidad_rf},
	aux_nacionalizado=${fld:aux_nacionalizado},
	aux_fecha_gaceta_nac=${fld:aux_fecha_gaceta_nac},
	aux_num_gaceta=${fld:aux_num_gaceta},
	aux_benef_pago=${fld:aux_benef_pago},
	aux_cond_pago_rf=${fld:aux_cond_pago_rf},
	aux_condicion_financiera_rf=${fld:aux_condicion_financiera_rf},
	aux_cuenta_bancaria_rf=${fld:aux_cuenta_bancaria_rf},
	aux_persona_contacto=${fld:aux_persona_contacto},
	aux_observacion=${fld:aux_observacion},
	aux_idioma='${def:locale}',
	aux_usuario='${def:user}',
	aux_fecha_registro={d '${def:date}'},
	aux_hora='${def:time}'

WHERE
	smn_auxiliar_id=${fld:id}

