select	
	smn_base.smn_naturaleza_auxiliar.naa_codigo,
	smn_base.smn_naturaleza_auxiliar.naa_nombre,
	smn_base.smn_naturaleza_auxiliar.naa_fecha_registro,
	smn_base.smn_naturaleza_auxiliar.smn_naturaleza_auxiliar_id

from
	smn_base.smn_naturaleza_auxiliar
where
	smn_naturaleza_auxiliar_id is not null	
 	 	${filter}
order by 
	smn_naturaleza_auxiliar_id