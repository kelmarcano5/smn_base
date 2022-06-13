select
	smn_base.smn_feriados.fer_descripcion
from
	smn_base.smn_feriados
where
	upper(trim(smn_base.smn_feriados.fer_descripcion)) = upper(trim(${fld:fer_descripcion}))
