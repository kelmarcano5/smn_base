INSERT INTO smn_base.smn_auxiliar_unidades_negocios
(
	smn_auxiliar_unidades_negocios_id,
	tun_codigo,
	tun_nombre,
	tun_responsable,
	tun_direccion,
	tun_telefono_fijo,
	tun_telefono_movil,
	tun_email,
	tun_idioma,
	tun_usuario,
	tun_fecha_registro,
	tun_hora
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_auxiliar_unidades_negocios},
	?,
	?,
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