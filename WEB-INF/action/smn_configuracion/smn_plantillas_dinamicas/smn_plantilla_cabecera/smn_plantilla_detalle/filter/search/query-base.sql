select
	case
	when smn_base.smn_plantilla_detalle.pde_status='AC' then '${lbl:b_active}'
	when smn_base.smn_plantilla_detalle.pde_status='IN' then '${lbl:b_inactive}'
	end as pde_status,
	smn_base.smn_plantilla_detalle.smn_plantilla_cabecera_id,
	smn_base.smn_plantilla_detalle.smn_seccion_rf,
	smn_base.smn_plantilla_detalle.pde_sec_seccion,
	smn_base.smn_plantilla_detalle.smn_pregunta_rf,
	smn_base.smn_plantilla_detalle.pde_sec_pregunta,
	smn_base.smn_plantilla_detalle.pde_status,
	smn_base.smn_plantilla_detalle.pde_fecha_registro,
		smn_base.smn_plantilla_detalle.smn_plantilla_detalle_id
	
from
	smn_base.smn_plantilla_detalle
where
	smn_plantilla_detalle_id is not null
	${filter}
order by
		smn_plantilla_detalle_id
