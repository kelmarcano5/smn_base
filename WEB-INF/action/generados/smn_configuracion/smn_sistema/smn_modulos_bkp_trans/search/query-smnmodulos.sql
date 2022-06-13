select	
	smn_base.smn_transaccion_general.smn_transaccion_general_id, 
	smn_base.smn_transaccion_general.trg_codigo as trg_codigo_pl0,
	smn_base.smn_entidades.smn_entidades_id, 
	smn_base.smn_entidades.ent_codigo as ent_codigo_pl1,
	smn_base.smn_modulos.smn_transaccion_general_id,
	smn_base.smn_modulos.smn_entidades_id,
	smn_base.smn_modulos.smn_app_id,
	smn_base.smn_modulos.mod_codigo,
	smn_base.smn_modulos.mod_nombre,
	smn_base.smn_modulos.mod_fecha_registro

from
	smn_base.smn_transaccion_general,
	smn_base.smn_entidades,
	smn_base.smn_modulos 
where
	smn_base.smn_transaccion_general.smn_transaccion_general_id=smn_base.smn_modulos.smn_transaccion_general_id and
	smn_base.smn_entidades.smn_entidades_id=smn_base.smn_modulos.smn_entidades_id 

