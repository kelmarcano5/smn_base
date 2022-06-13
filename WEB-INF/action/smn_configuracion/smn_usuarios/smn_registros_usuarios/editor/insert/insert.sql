insert into ${schema}s_user 
(
	user_id,
	userlogin,
	passwd,
	lname,
	fname,
	email,
	enabled,
	pwd_policy,
	force_newpass,
	locale
) 
values 
(
	${seq:currval@${schema}seq_user},
	${fld:userlogin_2},
	${fld:passwd},
	${fld:aux_apellidos},
	${fld:aux_nombres},
	${fld:email},
	1,
	-2,
	null,
	'es'
);

INSERT INTO smn_base.smn_auxiliar
(
	smn_auxiliar_id,
	smn_naturaleza_auxiliar_rf,
	smn_clase_auxiliar_rf,
	aux_tipo_persona,
	aux_codigo,
	aux_descripcion,
	aux_apellidos,
	aux_nombres,
	aux_tipo_doc_oficial_rf,
	aux_num_doc_oficial,
	aux_idioma,
	aux_usuario,
	aux_fecha_registro,
	aux_hora
)
VALUES
(
	${seq:currval@smn_base.seq_smn_auxiliar},
	${fld:smn_naturaleza_auxiliar_rf},
	${fld:smn_clase_auxiliar_rf},
	'PN',
	${fld:userlogin},
	CONCAT(${fld:aux_apellidos},',',${fld:aux_nombres}),
	${fld:aux_apellidos},
	${fld:aux_nombres},
	${fld:aux_tipo_doc_oficial_rf},
	${fld:aux_num_doc_oficial},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
);




