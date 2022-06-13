select
		smn_base.smn_parentezco.ptz_descripcion
from
		smn_base.smn_parentezco
where
		upper(smn_base.smn_parentezco.ptz_descripcion) = upper(${fld:ptz_descripcion})
