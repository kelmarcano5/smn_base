select
		smn_base.smn_rel_modulo_clase_aux.smn_modulos_rf,
	smn_base.smn_rel_modulo_clase_aux.smn_clase_auxiliar_rf,
	smn_base.smn_rel_modulo_clase_aux.rma_fecha_registro
from
	smn_base.smn_rel_modulo_clase_aux 
where
	smn_base.smn_rel_modulo_clase_aux.smn_rel_modulo_clase_aux_id = ${fld:id}
