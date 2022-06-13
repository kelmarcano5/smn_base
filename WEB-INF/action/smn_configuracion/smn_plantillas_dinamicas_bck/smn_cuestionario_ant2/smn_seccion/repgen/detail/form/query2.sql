select
		smn_base.smn_seccion.smn_cuestionario_id,
	smn_base.smn_seccion.sec_codigo,
	smn_base.smn_seccion.sec_descripcion,
	smn_base.smn_seccion.sec_secuencia,
	smn_base.smn_seccion.sec_estatus,
	smn_base.smn_seccion.cue_fecha_registro,
	smn_base.smn_seccion.smn_cuestionario_id,
	smn_base.smn_seccion.sec_codigo,
	smn_base.smn_seccion.sec_descripcion,
	smn_base.smn_seccion.sec_secuencia,
	smn_base.smn_seccion.sec_estatus,
	smn_base.smn_seccion.cue_fecha_registro
from
	smn_base.smn_seccion 
where
	smn_base.smn_seccion.smn_seccion_id = ${fld:id}
