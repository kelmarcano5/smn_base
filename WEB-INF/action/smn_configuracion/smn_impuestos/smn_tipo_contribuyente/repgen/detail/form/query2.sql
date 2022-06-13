select
		smn_base.smn_tipo_contribuyente.tco_codigo,
	smn_base.smn_tipo_contribuyente.tco_descripcion,
	smn_base.smn_tipo_contribuyente.tco_estatus,
	smn_base.smn_tipo_contribuyente.tco_fecha_registro
from
	smn_base.smn_tipo_contribuyente 
where
	smn_base.smn_tipo_contribuyente.smn_tipo_contribuyente_id = ${fld:id}
