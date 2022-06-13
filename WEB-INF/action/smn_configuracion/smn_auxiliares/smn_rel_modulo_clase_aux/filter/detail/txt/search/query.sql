select
	smn_base.smn_rel_modulo_clase_aux.smn_rel_modulo_clase_aux_id,
	smn_base.smn_clase_auxiliar.cla_codigo||'-'||smn_base.smn_clase_auxiliar.cla_nombre as smn_clase_auxiliar_rf,
	smn_base.smn_modulos.mod_codigo||'-'|| smn_base.smn_modulos.mod_nombre as smn_modulos_rf,
	smn_base.smn_rel_modulo_clase_aux.rma_fecha_registro
	
from
	smn_base.smn_rel_modulo_clase_aux
	LEFT OUTER JOIN smn_base.smn_clase_auxiliar on smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id=smn_base.smn_rel_modulo_clase_aux.smn_clase_auxiliar_rf
	left OUTER join smn_base.smn_modulos on smn_base.smn_modulos.smn_modulos_id = smn_base.smn_rel_modulo_clase_aux.smn_modulos_rf

where
	smn_rel_modulo_clase_aux_id = ${fld:id}
