select
	smn_base.smn_rel_paso_accion.*,
	smn_base.smn_accion.*
from 
	smn_base.smn_rel_paso_accion,
	smn_base.smn_accion
where 
	smn_base.smn_rel_paso_accion.smn_paso_id = ${fld:id} and
	smn_base.smn_rel_paso_accion.smn_accion_id = smn_base.smn_accion.smn_accion_id