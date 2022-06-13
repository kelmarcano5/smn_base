INSERT INTO smn_base.smn_plantilla_cabecera
(
	smn_plantilla_cabecera_id,
	pca_codigo,
	pca_descripcion,
	smn_modulo_rf,
	pca_status,
	pca_idioma,
	pca_usuario,
	pca_fecha_registro,
	pca_hora
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_plantilla_cabecera},
	?,
	?,
	?,
	?,
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
