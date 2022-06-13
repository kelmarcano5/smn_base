select
	case
	when smn_base.smn_plantilla_detalle.pde_status='AC' then '${lbl:b_active}'
	when smn_base.smn_plantilla_detalle.pde_status='IN' then '${lbl:b_inactive}'
	end as pde_status,
	smn_base.smn_plantilla_detalle.*
from
	smn_base.smn_plantilla_detalle
where
	smn_plantilla_detalle_id = ${fld:id}
