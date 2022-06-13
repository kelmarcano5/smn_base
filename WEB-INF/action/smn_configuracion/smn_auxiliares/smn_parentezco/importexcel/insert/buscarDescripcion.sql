select
	smn_base.smn_parentezco.ptz_descripcion
from
	smn_base.smn_parentezco
where
	upper(trim(smn_base.smn_parentezco.ptz_descripcion)) = upper(trim(${fld:ptz_descripcion}))
