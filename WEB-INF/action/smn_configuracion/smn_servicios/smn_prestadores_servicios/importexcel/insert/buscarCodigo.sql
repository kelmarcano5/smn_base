select
	smn_base.smn_prestadores_servicios.prs_codigo
from
	smn_base.smn_prestadores_servicios
where
	upper(trim(smn_base.smn_prestadores_servicios.prs_codigo)) = upper(trim(${fld:prs_codigo}))
