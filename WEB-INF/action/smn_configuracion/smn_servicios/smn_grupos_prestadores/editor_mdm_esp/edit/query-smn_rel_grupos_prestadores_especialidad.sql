select
	smn_base.smn_rel_grupos_prestadores_especialidad.*,
	smn_base.smn_especialidad.*
from 
	smn_base.smn_rel_grupos_prestadores_especialidad,
	smn_base.smn_especialidad
where 
	smn_base.smn_rel_grupos_prestadores_especialidad.smn_grupos_prestadores_id = ${fld:id} and
	smn_base.smn_rel_grupos_prestadores_especialidad.smn_especialidad_id = smn_base.smn_especialidad.smn_especialidad_id