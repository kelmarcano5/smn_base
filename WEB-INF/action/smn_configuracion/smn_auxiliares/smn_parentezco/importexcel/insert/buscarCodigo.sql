select
	smn_base.smn_parentezco.ptz_codigo
from
	smn_base.smn_parentezco
where
	upper(trim(smn_base.smn_parentezco.ptz_codigo)) = upper(trim(${fld:ptz_codigo}))
