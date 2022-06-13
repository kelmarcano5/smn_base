select
		smn_base.smn_rel_tipo_reg_clase_aux.smn_rel_tipo_reg_clase_aux_id,
	${field}
from
	smn_base.smn_rel_tipo_reg_clase_aux
where
		smn_base.smn_rel_tipo_reg_clase_aux.smn_rel_tipo_reg_clase_aux_id is not null
	${filter}
	
	
