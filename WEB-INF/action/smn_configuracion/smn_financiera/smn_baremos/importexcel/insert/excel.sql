INSERT INTO smn_base.smn_baremos
(
	smn_baremos_id,
	bar_codigo,
	bar_descripcion,
	smn_entidades_rf,
	smn_sucursales_rf,
	bar_vigencia_desde,
	bar_vigencia_hasta,
	bar_tipo,
	smn_clase_auxiliar_rf,
	smn_auxiliar_rf,
	bar_fecha_registro
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_baremos},
	?,
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
