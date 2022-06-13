select
		smn_base.smn_prestadores_servicios.prs_descripcion
from
		smn_base.smn_prestadores_servicios
where
		upper(smn_base.smn_prestadores_servicios.prs_descripcion) = upper(${fld:prs_descripcion})
