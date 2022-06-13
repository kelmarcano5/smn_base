select
		smn_base.smn_periodos.prd_descripcion
from
		smn_base.smn_periodos
where
		upper(smn_base.smn_periodos.prd_descripcion) = upper(${fld:prd_descripcion})
