select	
	smn_base.smn_baremos.bar_codigo,
	smn_base.smn_baremos.bar_descripcion,
	smn_base.smn_baremos.bar_entidad,
	smn_base.smn_baremos.bar_vigencia_desde,
	smn_base.smn_baremos.bar_vigencia_hasta,
	smn_base.smn_baremos.bar_fecha_registro,
	smn_base.smn_baremos.smn_baremos_id

from
	smn_base.smn_baremos
where
	smn_baremos_id is not null	
 	 	${filter}
order by 
	smn_baremos_id