select	
	smn_base.smn_terceros.ter_auxiliar_categoria,
	smn_base.smn_terceros.ter_descripcion_corta,
	smn_base.smn_terceros.ter_descripcion_larga,
	smn_base.smn_terceros.ter_fecha_registro,
	smn_base.smn_terceros.smn_terceros_id

from
	smn_base.smn_terceros
where
	smn_terceros_id is not null	
 	 	${filter}
order by 
	smn_terceros_id