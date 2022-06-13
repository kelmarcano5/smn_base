select
	smn_base.smn_v_auxiliar.aux_descripcion,
	smn_base.smn_clase_auxiliar.cla_nombre,
	${field}
from
	smn_base.smn_auxiliar_cond_financiera
	left outer join smn_base.smn_v_auxiliar on smn_base.smn_v_auxiliar.smn_v_auxiliar_id = smn_base.smn_auxiliar_cond_financiera.smn_auxiliar_rf_categoria
	left outer join smn_base.smn_clase_auxiliar on smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id = smn_base.smn_auxiliar_cond_financiera.smn_clase_auxiliar_rf
where
		smn_base.smn_auxiliar_cond_financiera.smn_auxiliar_cond_financiera_id = ${fld:id}
	
