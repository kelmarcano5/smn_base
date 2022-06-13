select	
	case
		when smn_base.smn_auxiliar_cond_financiera.cfn_valida_saldos_vec='S' then '${lbl:b_yes}'
		when smn_base.smn_auxiliar_cond_financiera.cfn_valida_saldos_vec='N' then '${lbl:b_not}'
	end as cfn_valida_saldos_vec_combo,
	smn_base.smn_auxiliar_cond_financiera.cfn_codigo,
	smn_base.smn_auxiliar_cond_financiera.cfn_descripcion,
	smn_base.smn_auxiliar_cond_financiera.cfn_clase_auxiliar,
	smn_base.smn_auxiliar_cond_financiera.cfn_auxiliar_categoria,
	smn_base.smn_auxiliar_cond_financiera.cfn_limite_credito,
	smn_base.smn_auxiliar_cond_financiera.cfn_porc_exceso_limite,
	smn_base.smn_auxiliar_cond_financiera.cfn_valida_saldos_vec,
	smn_base.smn_auxiliar_cond_financiera.cfn_dias_adic_saldos_venc,
	smn_base.smn_auxiliar_cond_financiera.cfn_num_cheques_devuel,
	smn_base.smn_auxiliar_cond_financiera.cfn_fecha_registro,
	smn_base.smn_auxiliar_cond_financiera.smn_auxiliar_cond_financiera_id

from
	smn_base.smn_auxiliar_cond_financiera
where
	smn_auxiliar_cond_financiera_id is not null	
 	 	${filter}
order by 
	smn_auxiliar_cond_financiera_id