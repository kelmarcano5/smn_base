select
		smn_base.smn_pregunta.prg_codigo
from
		smn_base.smn_pregunta
where
		upper(smn_base.smn_pregunta.prg_codigo) = upper(${fld:prg_codigo})
