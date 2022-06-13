select
	case
		when smn_base.smn_auxiliar_cond_financiera.cfn_valida_saldos_vec='S' then '${lbl:b_yes}'
		when smn_base.smn_auxiliar_cond_financiera.cfn_valida_saldos_vec='N' then '${lbl:b_not}'
	end as cfn_valida_saldos_vec_combo,
	smn_base.smn_auxiliar_cond_financiera.*
from 
	smn_base.smn_auxiliar_cond_financiera
where
	smn_auxiliar_cond_financiera_id = ${fld:id}
