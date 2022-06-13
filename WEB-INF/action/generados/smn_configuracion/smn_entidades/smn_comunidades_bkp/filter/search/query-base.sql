select	
	smn_base.smn_comunidades.cmn_codigo,
	smn_base.smn_comunidades.cmn_nombre,
	smn_base.smn_comunidades.cmn_fecha_registro,
	smn_base.smn_comunidades.smn_comunidades_id

from
	smn_base.smn_comunidades
where
	smn_comunidades_id is not null	
 	 	${filter}
order by 
	smn_comunidades_id