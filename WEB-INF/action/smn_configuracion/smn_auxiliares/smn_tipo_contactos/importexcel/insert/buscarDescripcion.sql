select
		smn_base.smn_tipo_contactos.tco_descripcion
from
		smn_base.smn_tipo_contactos
where
		upper(smn_base.smn_tipo_contactos.tco_descripcion) = upper(${fld:tco_descripcion})
