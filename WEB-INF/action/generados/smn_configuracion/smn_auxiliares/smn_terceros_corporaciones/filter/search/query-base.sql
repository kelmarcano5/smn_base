select	
	smn_base.smn_terceros.smn_terceros_id, 
	smn_base.smn_terceros.ter_descripcion_corta as ter_descripcion_corta_pl0,
	smn_base.smn_terceros_corporaciones.smn_terceros_id,
	smn_base.smn_terceros_corporaciones.tcp_codigo,
	smn_base.smn_terceros_corporaciones.tcp_nombre,
	smn_base.smn_terceros_corporaciones.tcp_moneda,
	smn_base.smn_terceros_corporaciones.tcp_direccion,
	smn_base.smn_terceros_corporaciones.tcp_fecha_registro,
	smn_base.smn_terceros_corporaciones.smn_terceros_corporaciones_id

from
	smn_base.smn_terceros,
	smn_base.smn_terceros_corporaciones
where
	smn_terceros_corporaciones_id is not null	
and 	smn_base.smn_terceros.smn_terceros_id=smn_base.smn_terceros_corporaciones.smn_terceros_id 
	 	${filter}
order by 
	smn_terceros_corporaciones_id