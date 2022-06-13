select
	smn_base.smn_rel_sucursal_especialidad.*,
	smn_base.smn_sucursales.*
from 
	smn_base.smn_rel_sucursal_especialidad,
	smn_base.smn_sucursales
where 
	smn_base.smn_rel_sucursal_especialidad.smn_rel_sucursal_especialidad_id = ${fld:id} and
	smn_base.smn_rel_sucursal_especialidad.smn_sucursales_id = smn_base.smn_sucursales.smn_sucursales_id