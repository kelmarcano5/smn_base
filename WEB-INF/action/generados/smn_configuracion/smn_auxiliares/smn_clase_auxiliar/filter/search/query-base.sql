select	
	smn_base.smn_clase_auxiliar.cla_codigo,
	smn_base.smn_clase_auxiliar.cla_nombre,
	smn_base.smn_clase_auxiliar.cla_modulo,
	smn_base.smn_clase_auxiliar.cla_naturaleza,
	smn_base.smn_clase_auxiliar.cla_fecha_registro,
	smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id

from
	smn_base.smn_clase_auxiliar
where
	smn_clase_auxiliar_id is not null	
 	 	${filter}
order by 
	smn_clase_auxiliar_id