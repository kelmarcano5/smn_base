INSERT INTO smn_base.smn_auxiliar_persona_contacto
(
	smn_auxiliar_persona_contacto_id,
	smn_clase_auxiliar_rf,
	smn_auxiliar_rf,
	apc_apellidos,
	apc_nombres,
	apc_telefono_contacto,
	apc_fecha_registro
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_auxiliar_persona_contacto},
	?,
	?,
	?,
	?,
	?,
	{d '${def:date}'}
)
