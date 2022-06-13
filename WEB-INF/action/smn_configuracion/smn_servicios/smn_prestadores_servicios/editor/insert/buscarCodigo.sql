select
		smn_base.smn_prestadores_servicios.prs_codigo
from
		smn_base.smn_prestadores_servicios
where
		upper(smn_base.smn_prestadores_servicios.prs_codigo) = upper(${fld:prs_codigo})
