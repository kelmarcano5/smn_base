select
	smn_base.smn_v_auxiliar.smn_item,
	smn_base.smn_clase_auxiliar.cla_nombre,
	case
		when smn_base.smn_auxiliar_cond_financiera.cfn_valida_saldos_vec='S' then '${lbl:b_yes}'
		when smn_base.smn_auxiliar_cond_financiera.cfn_valida_saldos_vec='N' then '${lbl:b_not}'
	end as cfn_valida_saldos_vec_combo,
	smn_base.smn_auxiliar_cond_financiera.cfn_codigo,
	smn_base.smn_auxiliar_cond_financiera.cfn_descripcion,
	smn_base.smn_auxiliar_cond_financiera.smn_clase_auxiliar_rf,
	smn_base.smn_auxiliar.aux_codigo||'-'||smn_base.smn_auxiliar.aux_descripcion as smn_item,
	smn_base.smn_auxiliar_cond_financiera.cfn_limite_credito,
	smn_base.smn_auxiliar_cond_financiera.cfn_porc_exceso_limite,
	smn_base.smn_auxiliar_cond_financiera.cfn_valida_saldos_vec,
	smn_base.smn_auxiliar_cond_financiera.cfn_dias_adic_saldos_venc,
	smn_base.smn_auxiliar_cond_financiera.cfn_num_cheques_devuel,
	smn_base.smn_auxiliar_cond_financiera.cfn_fecha_registro,
	smn_base.smn_auxiliar_cond_financiera.smn_auxiliar_cond_financiera_id
from
	smn_base.smn_auxiliar_cond_financiera
	left outer join smn_base.smn_v_auxiliar on smn_base.smn_v_auxiliar.smn_v_auxiliar_id = smn_base.smn_auxiliar_cond_financiera.smn_auxiliar_rf
	left outer join smn_base.smn_clase_auxiliar on smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id = smn_base.smn_auxiliar_cond_financiera.smn_clase_auxiliar_rf
	left outer join smn_base.smn_auxiliar on smn_base.smn_auxiliar.smn_auxiliar_id = smn_base.smn_auxiliar_cond_financiera.smn_auxiliar_rf
where
	smn_base.smn_auxiliar_cond_financiera.cfn_idioma = '${def:locale}'
and
	smn_base.smn_auxiliar_cond_financiera.cfn_usuario = '${def:user}'
and 
	smn_base.smn_auxiliar_cond_financiera.smn_auxiliar_rf = ${fld:id}
order by
	smn_base.smn_auxiliar_cond_financiera.smn_auxiliar_cond_financiera_id desc
