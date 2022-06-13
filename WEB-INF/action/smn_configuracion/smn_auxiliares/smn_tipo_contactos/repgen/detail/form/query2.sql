select
		smn_base.smn_tipo_contactos.tco_codigo,
	smn_base.smn_tipo_contactos.tco_descripcion,
	smn_base.smn_tipo_contactos.tco_clase,
	smn_base.smn_tipo_contactos.tco_fecha_registro
from
	smn_base.smn_tipo_contactos 
where
	smn_base.smn_tipo_contactos.smn_tipo_contactos_id = ${fld:id}
