select
		smn_base.smn_cuestionario.cue_descripcion
from
		smn_base.smn_cuestionario
where
		upper(smn_base.smn_cuestionario.cue_descripcion) = upper(${fld:cue_descripcion})
