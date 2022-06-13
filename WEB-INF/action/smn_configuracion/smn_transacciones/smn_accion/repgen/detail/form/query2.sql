select
		smn_base.smn_accion.acc_codigo,
	smn_base.smn_accion.acc_descripcion,
	smn_base.smn_accion.acc_tipo,
	smn_base.smn_accion.smn_mensajes_rf,
	smn_base.smn_accion.acc_metodo,
	smn_base.smn_accion.acc_tipo_acto_rol,
	smn_base.smn_accion.acc_fecha_registro
from
	smn_base.smn_accion 
where
	smn_base.smn_accion.smn_accion_id = ${fld:id}
