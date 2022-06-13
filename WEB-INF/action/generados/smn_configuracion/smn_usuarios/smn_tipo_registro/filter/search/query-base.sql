select	
	smn_base.smn_tipo_registro.trg_codigo,
	smn_base.smn_tipo_registro.trg_descripcion,
	smn_base.smn_tipo_registro.trg_fecha_registro,
	smn_base.smn_tipo_registro.smn_tipo_registro_id

from
	smn_base.smn_tipo_registro
where
	smn_tipo_registro_id is not null	
 	 	${filter}
order by 
	smn_tipo_registro_id