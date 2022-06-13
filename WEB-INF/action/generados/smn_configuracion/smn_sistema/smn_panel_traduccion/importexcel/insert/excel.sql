INSERT INTO smn_base.smn_panel_traduccion
(
	smn_panel_traduccion_id,
	pat_panel,
	pat_description,
	pat_locale,
	pat_idioma,
	pat_usuario,
	pat_fecha_registro,
	pat_hora
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_panel_traduccion},
	?,
	?,
	?,
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
