select
		smn_base.smn_cuestionario.cue_codigo,
	smn_base.smn_cuestionario.cue_descripcion,
	smn_base.smn_cuestionario.smn_modulo_rf,
	smn_base.smn_cuestionario.smn_esquema_rf,
	smn_base.smn_cuestionario.smn_campo_rf,
	smn_base.smn_cuestionario.cue_estatus,
	smn_base.smn_cuestionario.cue_fecha_registro,
	smn_base.smn_cuestionario.cue_codigo,
	smn_base.smn_cuestionario.cue_descripcion,
	smn_base.smn_cuestionario.smn_modulo_rf,
	smn_base.smn_cuestionario.smn_esquema_rf,
	smn_base.smn_cuestionario.smn_campo_rf,
	smn_base.smn_cuestionario.cue_estatus,
	smn_base.smn_cuestionario.cue_fecha_registro
from
	smn_base.smn_cuestionario 
where
	smn_base.smn_cuestionario.smn_cuestionario_id = ${fld:id}
