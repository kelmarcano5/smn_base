select
	smn_cuestionario.smn_cuestionario_id,
	smn_cuestionario.cue_codigo as cue_codigo_pl0,
	case
	when smn_seccion.sec_estatus='AC' then '${lbl:b_active}'
	when smn_seccion.sec_estatus='IN' then '${lbl:b_inactive}'
	end as sec_estatus_combo,
	smn_seccion.smn_cuestionario_id,
	smn_seccion.sec_codigo,
	smn_seccion.sec_descripcion,
	smn_seccion.sec_secuencia,
	smn_seccion.sec_estatus,
	smn_seccion.cue_idioma,
	smn_seccion.cue_usuario,
	smn_seccion.cue_fecha_registro,
	smn_seccion.cue_hora,
	smn_seccion.smn_seccion_id
	
from
	smn_base.smn_cuestionario,
	smn_base.smn_seccion
where
	smn_base.smn_seccion.smn_seccion_id is not null
	and 	smn_cuestionario.smn_cuestionario_id=smn_seccion.smn_cuestionario_id
	${filter}
order by
		smn_base.smn_seccion.smn_seccion_id
