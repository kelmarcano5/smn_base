select
		smn_base.smn_pregunta.prg_descripcion
from
		smn_base.smn_pregunta
where
		upper(smn_base.smn_pregunta.prg_descripcion) = upper(${fld:prg_descripcion})
