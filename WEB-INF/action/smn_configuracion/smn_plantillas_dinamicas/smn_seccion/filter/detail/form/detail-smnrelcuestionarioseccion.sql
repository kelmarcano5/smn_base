select	
	smn_cuestionario.smn_cuestionario_id, 
	smn_cuestionario.cue_codigo as cue_codigo_pl0,
	smn_rel_cuestionario_seccion.*
from
	smn_seccion ,
	smn_cuestionario,
	smn_rel_cuestionario_seccion
where
	smn_rel_cuestionario_seccion.smn_seccion_id=smn_seccion.smn_seccion_id and 
	smn_seccion.smn_seccion_id=${fld:id}  and 
	smn_cuestionario.smn_cuestionario_id=smn_rel_cuestionario_seccion.smn_cuestionario_id 

