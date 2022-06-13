select
		smn_base.smn_seccion.smn_seccion_id,
	smn_base.smn_cuestionario.smn_cuestionario_id,
	smn_base.smn_cuestionario.cue_codigo as cue_codigo_pl0,
	case
	when smn_seccion.sec_estatus='AC' then '${lbl:b_active}'
	when smn_seccion.sec_estatus='IN' then '${lbl:b_inactive}'
	end as sec_estatus_combo,
	smn_seccion.smn_cuestionario_id,
	smn_seccion.sec_codigo,
	smn_seccion.sec_descripcion,
	smn_seccion.sec_secuencia,
	smn_seccion.sec_estatus,
	smn_seccion.cue_fecha_registro
	
from
	smn_base.smn_cuestionario,
	smn_base.smn_seccion
where
	smn_base.smn_cuestionario.smn_cuestionario_id=smn_base.smn_seccion.smn_cuestionario_id
