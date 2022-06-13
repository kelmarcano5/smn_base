select
case
	when smn_cuestionario.cue_estatus='AC' then '${lbl:b_active}'
	when smn_cuestionario.cue_estatus='IN' then '${lbl:b_inactive}'
	end as cue_estatus_combo,
	smn_cuestionario.cue_codigo,
	smn_cuestionario.cue_descripcion,
	(select smn_base.smn_diccionario.dic_esquema from  smn_base.smn_diccionario where smn_base.smn_diccionario.smn_diccionario_id is not null  and smn_base.smn_diccionario.smn_diccionario_id=smn_base.smn_cuestionario.smn_esquema_rf) as smn_esquema_rf_combo,
	(select smn_base.smn_diccionario.dic_campo from  smn_base.smn_diccionario where smn_base.smn_diccionario.smn_diccionario_id is not null  and smn_base.smn_diccionario.smn_diccionario_id=smn_base.smn_cuestionario.smn_campo_rf) as smn_campo_rf_combo,
	(select smn_base.smn_modulos.mod_codigo|| ' - ' || smn_base.smn_modulos.mod_codigo from  smn_base.smn_modulos where smn_base.smn_modulos.smn_modulos_id is not null  and smn_base.smn_modulos.smn_modulos_id=smn_base.smn_cuestionario.smn_modulo_rf) as smn_modulo_rf_combo,
	smn_cuestionario.cue_estatus,
	smn_cuestionario.cue_idioma,
	smn_cuestionario.cue_usuario,
	smn_cuestionario.cue_fecha_registro,
	smn_cuestionario.cue_hora,
	smn_cuestionario.smn_cuestionario_id
from
	smn_base.smn_cuestionario
where
	smn_base.smn_cuestionario.smn_cuestionario_id is not null
	${filter}
order by
		smn_base.smn_cuestionario.smn_cuestionario_id
