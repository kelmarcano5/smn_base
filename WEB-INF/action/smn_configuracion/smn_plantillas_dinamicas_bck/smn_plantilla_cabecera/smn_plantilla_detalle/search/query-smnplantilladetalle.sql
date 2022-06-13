select
		smn_base.smn_plantilla_detalle.smn_plantilla_detalle_id,
	case
	when smn_base.smn_plantilla_detalle.pde_status='AC' then '${lbl:b_active}'
	when smn_base.smn_plantilla_detalle.pde_status='IN' then '${lbl:b_inactive}'
	end as pde_status,
	smn_base.smn_plantilla_detalle.smn_plantilla_cabecera_id,
	
	smn_base.smn_seccion.sec_codigo|| ' - ' ||smn_base.smn_seccion.sec_descripcion as smn_seccion_rf,
	smn_base.smn_plantilla_detalle.pde_sec_seccion,
	
	smn_base.smn_pregunta.prg_codigo|| ' - ' ||smn_base.smn_pregunta.prg_descripcion as smn_pregunta_rf,
	smn_base.smn_plantilla_detalle.pde_sec_pregunta,
	smn_base.smn_plantilla_detalle.pde_status,
	smn_base.smn_plantilla_detalle.pde_fecha_registro,
	smn_base.smn_variable.var_descripcion
	
from
	smn_base.smn_plantilla_detalle
	inner join smn_base.smn_seccion on smn_base.smn_seccion.smn_seccion_id=smn_base.smn_plantilla_detalle.smn_seccion_rf
    inner join smn_base.smn_pregunta on smn_base.smn_pregunta.smn_pregunta_id=smn_base.smn_plantilla_detalle.smn_pregunta_rf
	left join smn_base.smn_variable on smn_base.smn_variable.smn_tipo_variable_id=smn_base.smn_pregunta.smn_tipo_variable_id
	where smn_base.smn_plantilla_detalle.smn_plantilla_cabecera_id=${fld:id2}
	order by smn_base.smn_plantilla_detalle.pde_sec_seccion asc, smn_base.smn_plantilla_detalle.pde_sec_pregunta asc,
	smn_base.smn_variable.smn_variable_id
