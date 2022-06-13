select	
	smn_base.smn_franquicias.fra_codigo,
	smn_base.smn_franquicias.fra_descripcion,
	smn_base.smn_franquicias.fra_fecha_registro,
	smn_base.smn_franquicias.smn_franquicias_id

from
	smn_base.smn_franquicias
where
	smn_franquicias_id is not null	
 	 	${filter}
order by 
	smn_franquicias_id