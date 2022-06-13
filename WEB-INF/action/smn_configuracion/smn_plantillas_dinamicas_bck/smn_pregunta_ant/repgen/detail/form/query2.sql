select
		smn_base.smn_pregunta.smn_tipo_variable_id,
	smn_base.smn_pregunta.prg_codigo,
	smn_base.smn_pregunta.prg_descripcion,
	smn_base.smn_pregunta.prg_tipo_respuesta,
	smn_base.smn_pregunta.sec_estatus,
	smn_base.smn_pregunta.cue_fecha_registro,
	smn_base.smn_pregunta.smn_tipo_variable_id,
	smn_base.smn_pregunta.prg_codigo,
	smn_base.smn_pregunta.prg_descripcion,
	smn_base.smn_pregunta.prg_tipo_respuesta,
	smn_base.smn_pregunta.sec_estatus,
	smn_base.smn_pregunta.cue_fecha_registro
from
	smn_base.smn_pregunta 
where
	smn_base.smn_pregunta.smn_pregunta_id = ${fld:id}
