select
	smn_base.smn_titulo.tlo_codigo,
	smn_base.smn_titulo.tlo_descripcion,
	smn_base.smn_titulo.tlo_fecha_registro,
		smn_base.smn_titulo.smn_titulo_id
	
from
	smn_base.smn_titulo
where
	smn_titulo_id is not null
	${filter}
order by
		smn_titulo_id
