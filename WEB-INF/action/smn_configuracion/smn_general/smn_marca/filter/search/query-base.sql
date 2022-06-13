select
	smn_base.smn_marca.mar_codigo,
	smn_base.smn_marca.mar_descripcion,
	smn_base.smn_marca.mar_fecha_registro,
		smn_base.smn_marca.smn_marca_id
	
from
	smn_base.smn_marca
where
	smn_marca_id is not null
	${filter}
order by
		smn_marca_id
