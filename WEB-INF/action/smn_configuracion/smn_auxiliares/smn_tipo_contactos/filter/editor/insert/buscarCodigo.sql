select
		smn_base.smn_tipo_contactos.tco_codigo
from
		smn_base.smn_tipo_contactos
where
		upper(smn_base.smn_tipo_contactos.tco_codigo) = upper(${fld:tco_codigo})
