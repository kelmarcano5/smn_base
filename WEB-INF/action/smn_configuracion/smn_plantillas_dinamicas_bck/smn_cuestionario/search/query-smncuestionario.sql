select
		smn_base.smn_cuestionario.smn_cuestionario_id,
	case
	when smn_cuestionario.cue_estatus='AC' then '${lbl:b_active}'
	when smn_cuestionario.cue_estatus='IN' then '${lbl:b_inactive}'
	end as cue_estatus_combo,
	smn_cuestionario.cue_codigo,
	smn_cuestionario.cue_descripcion,
	(select smn_base.smn_modulos.mod_codigo|| ' - ' || smn_base.smn_modulos.mod_codigo from  smn_base.smn_modulos where smn_base.smn_modulos.smn_modulos_id is not null  and smn_base.smn_modulos.smn_modulos_id=smn_base.smn_cuestionario.smn_modulo_rf) as smn_modulo_rf_combo,
	smn_cuestionario.cue_estatus,
	smn_cuestionario.cue_fecha_registro,
	smn_cuestionario.cue_color_letra,
	smn_cuestionario.cue_tipo_letra,
	smn_cuestionario.cue_tamano_letra,
	smn_cuestionario.cue_color_sombreado,
	smn_cuestionario.cue_color_formulario
from
	smn_base.smn_cuestionario
