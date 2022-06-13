select
		smn_base.smn_titulo.tlo_codigo,
	smn_base.smn_titulo.tlo_descripcion,
	smn_base.smn_titulo.tlo_fecha_registro
from
	smn_base.smn_titulo 
where
	smn_base.smn_titulo.smn_titulo_id = ${fld:id}
