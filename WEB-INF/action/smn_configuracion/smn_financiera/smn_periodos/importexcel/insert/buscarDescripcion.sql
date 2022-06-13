select
	smn_base.smn_periodos.prd_descripcion
from
	smn_base.smn_periodos
where
	upper(trim(smn_base.smn_periodos.prd_descripcion)) = upper(trim(${fld:prd_descripcion}))
