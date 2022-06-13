select
		smn_base.smn_condicion_financiera.smn_condicion_financiera_id,
	case
	when smn_base.smn_condicion_financiera.cfi_estatus='AC' then '${lbl:b_active}'
	when smn_base.smn_condicion_financiera.cfi_estatus='IN' then '${lbl:b_inactive}'
	end as cfi_estatus_combo,
	smn_base.smn_condicion_financiera.cfi_codigo,
	smn_base.smn_condicion_financiera.cfi_description,
	smn_base.smn_condicion_financiera.cfi_cant_dias,
	smn_base.smn_condicion_financiera.cfi_limite_credito,
	smn_base.smn_condicion_financiera.cfi_estatus,
	smn_base.smn_condicion_financiera.cfi_vigencia,
	smn_base.smn_condicion_financiera.cfi_fecha_registro
	
from
	smn_base.smn_condicion_financiera
