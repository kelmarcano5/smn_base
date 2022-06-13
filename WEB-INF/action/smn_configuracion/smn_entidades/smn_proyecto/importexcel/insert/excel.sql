INSERT INTO smn_base.smn_proyecto
(
	smn_proyecto_id,
	pry_codigo,
	pry_nombre,
	smn_clase_auxiliar_rf,
	smn_auxiliar_rf,
	pry_fecha_inicio,
	pry_estatus,
	pry_fecha_registro
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_proyecto},
	?,
	?,
	?,
	?,
	?,
	?,
	{d '${def:date}'}
)
