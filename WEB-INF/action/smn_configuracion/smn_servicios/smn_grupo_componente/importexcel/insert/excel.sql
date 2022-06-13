INSERT INTO smn_base.smn_grupo_componente
(
	smn_grupo_componente_id,
	gco_codigo,
	gco_descripcion,
	gco_fecha_registro
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_grupo_componente},
	?,
	?,
	{d '${def:date}'}
)
