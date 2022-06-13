select
	smn_base.smn_modelo.mod_codigo,
	smn_base.smn_modelo.mod_descripcion,
	smn_base.smn_modelo.mod_fecha_registro,
		smn_base.smn_modelo.smn_modelo_id
	
from
	smn_base.smn_modelo
where
	smn_modelo_id is not null
	${filter}
order by
		smn_modelo_id
