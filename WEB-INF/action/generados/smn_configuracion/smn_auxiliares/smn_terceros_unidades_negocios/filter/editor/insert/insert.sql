INSERT INTO smn_base.smn_terceros_unidades_negocios
(
	smn_terceros_unidades_negocios_id,
	smn_terceros_id,
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
	${seq:currval@smn_base.seq_smn_terceros_unidades_negocios},
	${fld:smn_terceros_id},
	${fld:tun_codigo},
	${fld:tun_nombre},
	${fld:tun_responsable},
	${fld:tun_direccion},
	${fld:tun_telefono_fijo},
	${fld:tun_telefono_movil},
	${fld:tun_email},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)