select
	case
	when smn_base.smn_condicion_financiera.cfi_valida_saldos_vec='S' then '${lbl:b_yes}'
	when smn_base.smn_condicion_financiera.cfi_valida_saldos_vec='N' then '${lbl:b_not}'
	end as cfi_valida_saldos_vec_combo,
	case
	when smn_base.smn_condicion_financiera.cfi_estatus='AC' then '${lbl:b_active}'
	when smn_base.smn_condicion_financiera.cfi_estatus='IN' then '${lbl:b_inactive}'
	end as cfi_estatus_combo,
	smn_base.smn_condicion_financiera.*
from
	smn_base.smn_condicion_financiera
where
	smn_condicion_financiera_id = ${fld:id}
