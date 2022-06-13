select
		smn_base.smn_cuestionario.smn_cuestionario_id,
select
		smn_base.smn_cuestionario.smn_cuestionario_id,
select
		smn_base.smn_cuestionario.smn_cuestionario_id,
select
		smn_base.smn_cuestionario.smn_cuestionario_id,
	case
	when smn_cuestionario.cue_estatus='AC' then '${lbl:b_active}'
	when smn_cuestionario.cue_estatus='IN' then '${lbl:b_inactive}'
	end as cue_estatus_combo,
	smn_cuestionario.cue_codigo,
	smn_cuestionario.cue_descripcion,
	smn_cuestionario.smn_modulo_rf,
	smn_cuestionario.smn_esquema_rf,
	smn_cuestionario.smn_campo_rf,
	smn_cuestionario.cue_estatus,
	smn_cuestionario.cue_fecha_registro
	
from
	smn_cuestionario
