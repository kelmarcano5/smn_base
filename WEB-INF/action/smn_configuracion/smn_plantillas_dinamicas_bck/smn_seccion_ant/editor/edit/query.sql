select	
	smn_base.smn_cuestionario.smn_cuestionario_id, 
	smn_base.smn_cuestionario.cue_codigo as cue_codigo_pl0,
	smn_base.smn_seccion.*
from
	smn_base.smn_cuestionario,
	smn_base.smn_seccion 
where
	smn_base.smn_cuestionario.smn_cuestionario_id=smn_base.smn_seccion.smn_cuestionario_id and
	smn_base.smn_seccion.smn_seccion_id = ${fld:id} 
	


