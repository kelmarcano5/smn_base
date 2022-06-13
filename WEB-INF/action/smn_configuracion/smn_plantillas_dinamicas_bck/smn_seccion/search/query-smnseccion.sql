select
		smn_base.smn_seccion.smn_seccion_id,
	case
	when smn_seccion.sec_estatus='AC' then '${lbl:b_active}'
	when smn_seccion.sec_estatus='IN' then '${lbl:b_inactive}'
	end as sec_estatus_combo,
	smn_seccion.sec_codigo,
	smn_seccion.sec_descripcion,
	smn_seccion.sec_estatus,
	smn_seccion.sec_fecha_registro
	
from
	smn_base.smn_seccion
