select
	case
		when smn_base.smn_accion.acc_tipo='EM' then '${lbl:b_sending_email}'
		when smn_base.smn_accion.acc_tipo='IR' then '${lbl:b_cod_next_step}'
		when smn_base.smn_accion.acc_tipo='DV' then '${lbl:b_cod_last_step}'
		when smn_base.smn_accion.acc_tipo='EJ' then '${lbl:b_run_method}'
	end as acc_tipo_combo,
	(select smn_base.smn_mensajes.msj_asunto from  smn_base.smn_mensajes where smn_base.smn_mensajes.smn_mensajes_id is not null  and smn_base.smn_mensajes.smn_mensajes_id=smn_base.smn_accion.smn_mensajes_rf) as smn_mensajes_rf_combo,
	case
		when smn_base.smn_accion.acc_tipo_acto_rol='A' then '${lbl:b_approval}'
		when smn_base.smn_accion.acc_tipo_acto_rol='D' then '${lbl:b_return}'
		when smn_base.smn_accion.acc_tipo_acto_rol='R' then '${lbl:b_rejected}'
		when smn_base.smn_accion.acc_tipo_acto_rol='C' then '${lbl:b_cancellation}'
	end as acc_tipo_acto_rol_combo,
	smn_base.smn_accion.acc_codigo,
	smn_base.smn_accion.acc_descripcion,
	smn_base.smn_accion.acc_tipo,
	smn_base.smn_accion.smn_mensajes_rf,
	smn_base.smn_accion.acc_metodo,
	smn_base.smn_accion.acc_tipo_acto_rol,
	smn_base.smn_accion.acc_fecha_registro

from 
	smn_base.smn_accion
