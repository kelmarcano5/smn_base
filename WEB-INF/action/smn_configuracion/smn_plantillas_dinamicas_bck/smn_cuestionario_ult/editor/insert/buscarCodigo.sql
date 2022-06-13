select
		smn_base.smn_cuestionario.cue_codigo
from
		smn_base.smn_cuestionario
where
		upper(smn_base.smn_cuestionario.cue_codigo) = upper(${fld:cue_codigo})
