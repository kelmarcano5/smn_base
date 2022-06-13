select	
	smn_base.smn_tipos_servicios.tsr_codigo,
	smn_base.smn_tipos_servicios.tsr_descripcion,
	smn_base.smn_tipos_servicios.tsr_fecha_registro,
	smn_base.smn_tipos_servicios.smn_tipos_servicios_id

from
	smn_base.smn_tipos_servicios
where
	smn_tipos_servicios_id is not null	
 	 	${filter}
order by 
	smn_tipos_servicios_id