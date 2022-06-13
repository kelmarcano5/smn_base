select
	smn_base.smn_auxiliar_cond_financiera.smn_auxiliar_cond_financiera_id,
	${field}
from
	smn_base.smn_auxiliar_cond_financiera
	left outer join smn_base.smn_v_auxiliar on smn_base.smn_v_auxiliar.smn_v_auxiliar_id = smn_base.smn_auxiliar_cond_financiera.smn_auxiliar_rf
	left outer join smn_base.smn_clase_auxiliar on smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id = smn_base.smn_auxiliar_cond_financiera.smn_clase_auxiliar_rf
where
	smn_base.smn_auxiliar_cond_financiera.smn_auxiliar_cond_financiera_id is not null
and
	smn_base.smn_auxiliar_cond_financiera.cfn_idioma = '${def:locale}'
and
	smn_base.smn_auxiliar_cond_financiera.cfn_usuario = '${def:user}'
	${filter}
order by
	smn_base.smn_auxiliar_cond_financiera.smn_auxiliar_cond_financiera_id desc
	
