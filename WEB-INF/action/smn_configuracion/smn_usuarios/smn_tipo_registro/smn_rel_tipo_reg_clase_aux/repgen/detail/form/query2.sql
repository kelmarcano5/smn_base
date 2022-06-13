select
		smn_base.smn_rel_tipo_reg_clase_aux.smn_tipo_registro_rf,
	smn_base.smn_rel_tipo_reg_clase_aux.smn_clase_auxiliar_rf
from
	smn_base.smn_rel_tipo_reg_clase_aux 
where
	smn_base.smn_rel_tipo_reg_clase_aux.smn_rel_tipo_reg_clase_aux_id = ${fld:id}
