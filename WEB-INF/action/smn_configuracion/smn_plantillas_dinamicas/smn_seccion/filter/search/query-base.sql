select
	case
	when smn_seccion.sec_estatus='AC' then '${lbl:b_active}'
	when smn_seccion.sec_estatus='IN' then '${lbl:b_inactive}'
	end as sec_estatus_combo,
	smn_seccion.sec_codigo,
	smn_seccion.sec_descripcion,
	smn_seccion.sec_estatus,
	smn_seccion.sec_idioma,
	smn_seccion.sec_usuario,
	smn_seccion.sec_fecha_registro,
	smn_seccion.sec_hora,
	smn_seccion.smn_seccion_id
	
from
	smn_base.smn_seccion
where
	smn_base.smn_seccion.smn_seccion_id is not null
	${filter}
order by
		smn_base.smn_seccion.smn_seccion_id
