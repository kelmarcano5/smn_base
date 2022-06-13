select	
	smn_base.smn_configuracion_estructura.coe_mascara,
	smn_base.smn_configuracion_estructura.coe_niveles,
	smn_base.smn_configuracion_estructura.coe_nombre,
	smn_base.smn_configuracion_estructura.coe_codigo,
	smn_base.smn_configuracion_estructura.coe_fecha_registro,
	smn_base.smn_configuracion_estructura.coe_separador,
	smn_base.smn_configuracion_estructura.smn_configuracion_estructura_id
from
	smn_base.smn_configuracion_estructura
where
	smn_configuracion_estructura_id is not null	
 	${filter}
order by 
	smn_base.smn_configuracion_estructura.smn_configuracion_estructura_id desc