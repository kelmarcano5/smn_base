select
	case
	when smn_base.smn_accion.acc_tipo='EM' then '${lbl:b_sending_email}'
	when smn_base.smn_accion.acc_tipo='IR' then '${lbl:b_cod_next_step}'
	when smn_base.smn_accion.acc_tipo='DV' then '${lbl:b_cod_last_step}'
	when smn_base.smn_accion.acc_tipo='EJ' then '${lbl:b_run_method}'
	end as acc_tipo_combo,
select
	case
	when smn_base.smn_accion.acc_tipo_acto_rol='A' then '${lbl:b_approval}'
	when smn_base.smn_accion.acc_tipo_acto_rol='D' then '${lbl:b_return}'
	when smn_base.smn_accion.acc_tipo_acto_rol='R' then '${lbl:b_rejected}'
	when smn_base.smn_accion.acc_tipo_acto_rol='C' then '${lbl:b_cancellation}'
	end as acc_tipo_acto_rol_combo,
	smn_base.smn_accion.*
from
	smn_base.smn_accion
where
	smn_accion_id = ${fld:id}
