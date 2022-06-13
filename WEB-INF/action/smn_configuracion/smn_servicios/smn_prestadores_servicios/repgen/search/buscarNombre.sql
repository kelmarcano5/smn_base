select
		smn_base.smn_prestadores_servicios.prs_nombres
from
		smn_base.smn_prestadores_servicios
where
		upper(smn_base.smn_prestadores_servicios.prs_nombres) = upper(${fld:prs_nombres})
