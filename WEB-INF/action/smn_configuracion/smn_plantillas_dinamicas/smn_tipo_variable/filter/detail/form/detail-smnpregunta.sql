select
	case
	when smn_pregunta.prg_tipo_respuesta='VA' then '${lbl:b_variable}'
	when smn_pregunta.prg_tipo_respuesta='TE' then '${lbl:b_texto}'
	end as prg_tipo_respuesta_combo,
	case
	when smn_pregunta.sec_estatus='AC' then '${lbl:b_active}'
	when smn_pregunta.sec_estatus='IN' then '${lbl:b_inactive}'
	end as sec_estatus_combo,
	smn_pregunta.*
from
	smn_pregunta,
	smn_tipo_variable
where
	smn_pregunta.smn_tipo_variable_id=smn_tipo_variable.smn_tipo_variable_id and
	smn_tipo_variable.smn_tipo_variable_id=${fld:id}
