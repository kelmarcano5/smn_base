select
		smn_base.smn_franquicias.fra_codigo,
	smn_base.smn_franquicias.fra_descripcion,
	smn_base.smn_franquicias.fra_fecha_registro
from
	smn_base.smn_franquicias 
where
	smn_base.smn_franquicias.smn_franquicias_id = ${fld:id}
