select
	smn_base.smn_tipo_cuenta_banco.tcb_codigo,
	smn_base.smn_tipo_cuenta_banco.tcb_descripcion,
	smn_base.smn_tipo_cuenta_banco.tcb_fecha_registro,
	smn_base.smn_tipo_cuenta_banco.smn_tipo_cuenta_banco_id
from
	smn_base.smn_tipo_cuenta_banco
where
	smn_base.smn_tipo_cuenta_banco.smn_tipo_cuenta_banco_id is not null
and
	smn_base.smn_tipo_cuenta_banco.tcb_idioma = '${def:locale}'
and
	smn_base.smn_tipo_cuenta_banco.tcb_usuario = '${def:user}'
	${filter}
order by
	smn_base.smn_tipo_cuenta_banco.smn_tipo_cuenta_banco_id desc
