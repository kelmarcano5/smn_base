select	
	smn_seccion.smn_seccion_id, 
	smn_seccion.sec_codigo as sec_codigo_pl0,
	smn_pregunta.smn_pregunta_id, 
	smn_pregunta.prg_codigo as prg_codigo_pl1,
	smn_tipo_variable.smn_tipo_variable_id, 
	smn_tipo_variable.tva_codigo as tva_codigo_pl2,
	(select smn_base.smn_pregunta.prg_tipo_respuesta from  smn_base.smn_pregunta where smn_base.smn_pregunta.smn_pregunta_id is not null  and smn_base.smn_pregunta.smn_pregunta_id=smn_cuestionario.smn_tipo_respuesta_id) as smn_tipo_respuesta_id_combo,
	smn_respuesta.*
from
	smn_cuestionario ,
	smn_seccion,
	smn_pregunta,
	smn_tipo_variable,
	smn_respuesta
where
	smn_respuesta.smn_cuestionario_id=smn_cuestionario.smn_cuestionario_id and 
	smn_cuestionario.smn_cuestionario_id=${fld:id}  and 
	smn_seccion.smn_seccion_id=smn_respuesta.smn_seccion_id and
	smn_pregunta.smn_pregunta_id=smn_respuesta.smn_pregunta_id and
	smn_tipo_variable.smn_tipo_variable_id=smn_respuesta.smn_tipo_variable_id 

