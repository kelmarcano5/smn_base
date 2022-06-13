select
	smn_base.smn_prestadores_servicios.prs_nombres
from
	smn_base.smn_prestadores_servicios
where
	upper(trim(smn_base.smn_prestadores_servicios.prs_nombres)) = upper(trim(${fld:prs_nombres}))
