INSERT INTO smn_base.smn_especialidad
(
	smn_especialidad_id,
	esp_codigo,
	esp_descripcion,
	esp_idioma,
	esp_usuario,
	esp_fecha_registro,
	esp_hora
)
VALUES
(
	${seq:currval@smn_base.seq_smn_especialidad},
	${fld:esp_codigo},
	${fld:esp_descripcion},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
