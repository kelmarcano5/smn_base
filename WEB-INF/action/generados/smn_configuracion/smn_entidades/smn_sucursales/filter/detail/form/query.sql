select
	case
		when smn_base.smn_sucursales.suc_maneja_area_servicio='S' then '${lbl:b_yes}'
		when smn_base.smn_sucursales.suc_maneja_area_servicio='N' then '${lbl:b_not}'
	end as suc_maneja_area_servicio_combo,
	smn_base.smn_sucursales.*
from 
	smn_base.smn_sucursales
where
	smn_sucursales_id = ${fld:id}
