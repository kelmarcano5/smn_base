select
	smn_base.smn_parentezco.smn_parentezco_id,
	smn_base.smn_parentezco.ptz_codigo,
	smn_base.smn_parentezco.ptz_descripcion,
	smn_base.smn_parentezco.ptz_fecha_registro
from
	smn_base.smn_parentezco
where
	smn_base.smn_parentezco.ptz_idioma = '${def:locale}'
order by
	smn_base.smn_parentezco.smn_parentezco_id desc
