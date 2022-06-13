select
	case
		when smn_base.smn_vencimiento_cabecera.tve_estatus='A' then '${lbl:b_active}'
		when smn_base.smn_vencimiento_cabecera.tve_estatus='I' then '${lbl:b_inactive}'
	end as tve_estatus_combo,
	smn_base.smn_vencimiento_cabecera.*
from 
	smn_base.smn_vencimiento_cabecera
where
	smn_vencimiento_cabecera_id = ${fld:id}
