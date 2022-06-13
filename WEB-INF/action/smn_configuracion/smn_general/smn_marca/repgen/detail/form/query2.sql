select
		smn_base.smn_marca.mar_codigo,
	smn_base.smn_marca.mar_descripcion,
	smn_base.smn_marca.mar_fecha_registro,
	smn_base.smn_marca.mar_codigo,
	smn_base.smn_marca.mar_descripcion,
	smn_base.smn_marca.mar_fecha_registro
from
	smn_base.smn_marca 
where
	smn_base.smn_marca.smn_marca_id = ${fld:id}
