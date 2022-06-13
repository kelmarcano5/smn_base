INSERT INTO smn_base.smn_nivel_estructura
(
	smn_nivel_estructura_id,
	smn_estructura_codigo_id,
	nes_niveles,
	nes_codigo,
	nes_nombre,
	nes_tipo,
	nes_idioma,
	nes_usuario,
	nes_fecha_registro,
	nes_hora
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_nivel_estructura},
	?,
	?,
	?,
	?,
	?,
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
