select
		smn_base.smn_parentezco.ptz_codigo
from
		smn_base.smn_parentezco
where
		upper(smn_base.smn_parentezco.ptz_codigo) = upper(${fld:ptz_codigo})
