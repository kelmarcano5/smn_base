select
		smn_base.smn_tipo_variable.tva_codigo,
	smn_base.smn_tipo_variable.tva_descripcion,
	smn_base.smn_tipo_variable.tva_estatus,
	smn_base.smn_tipo_variable.tva_fecha_registro,
	smn_base.smn_tipo_variable.tva_codigo,
	smn_base.smn_tipo_variable.tva_descripcion,
	smn_base.smn_tipo_variable.tva_estatus,
	smn_base.smn_tipo_variable.tva_fecha_registro
from
	smn_base.smn_tipo_variable 
where
	smn_base.smn_tipo_variable.smn_tipo_variable_id = ${fld:id}
