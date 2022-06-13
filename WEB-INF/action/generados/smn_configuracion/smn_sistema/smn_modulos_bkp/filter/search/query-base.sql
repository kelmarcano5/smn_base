select	
	smn_base.smn_entidades.smn_entidades_id, 
	smn_base.smn_entidades.ent_codigo as ent_codigo_pl0,
	smn_base.smn_modulos.smn_entidades_id,
	smn_base.smn_modulos.smn_app_id,
	smn_base.smn_modulos.mod_codigo,
	smn_base.smn_modulos.mod_nombre,
	smn_base.smn_modulos.mod_fecha_registro,
	smn_base.smn_modulos.smn_modulos_id

from
	smn_base.smn_entidades,
	smn_base.smn_modulos
where
	smn_modulos_id is not null	
and 	smn_base.smn_entidades.smn_entidades_id=smn_base.smn_modulos.smn_entidades_id 
	 	${filter}
order by 
	smn_modulos_id