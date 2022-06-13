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
	aux_num_coleg_medicos,
	aux_fecha_registro
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_auxiliar},
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	{d '${def:date}'}
)
