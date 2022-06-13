select
		smn_base.smn_feriados.fer_descripcion
from
		smn_base.smn_feriados
where
		upper(smn_base.smn_feriados.fer_descripcion) = upper(${fld:fer_descripcion})
