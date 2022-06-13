select
	smn_base.smn_prestadores_servicios_especialidad.*,
	smn_base.smn_especialidad.*
from 
	smn_base.smn_prestadores_servicios_especialidad,
	smn_base.smn_especialidad
where 
	smn_base.smn_prestadores_servicios_especialidad.smn_prestadores_servicios_id = ${fld:id} and
	smn_base.smn_prestadores_servicios_especialidad.smn_especialidad_id = smn_base.smn_especialidad.smn_especialidad_id