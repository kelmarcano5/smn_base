select	
	smn_base.smn_corporaciones.crp_codigo,
	smn_base.smn_corporaciones.crp_nombre,
	smn_base.smn_corporaciones.crp_unidad_negocio,
	smn_base.smn_corporaciones.crp_moneda,
	smn_base.smn_corporaciones.crp_direccion,
	smn_base.smn_corporaciones.crp_fecha_registro,
	smn_base.smn_corporaciones.smn_corporaciones_id

from
	smn_base.smn_corporaciones
where
	smn_corporaciones_id is not null	
 	 	${filter}
order by 
	smn_corporaciones_id