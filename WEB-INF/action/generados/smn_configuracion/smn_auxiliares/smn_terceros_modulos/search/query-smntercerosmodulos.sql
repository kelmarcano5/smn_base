select	
	smn_base.smn_terceros.smn_terceros_id, 
	smn_base.smn_terceros.ter_descripcion_corta as ter_descripcion_corta_pl0,
	smn_base.smn_terceros_modulos.smn_terceros_id,
	smn_base.smn_terceros_modulos.smn_app_id,
	smn_base.smn_terceros_modulos.trm_codigo,
	smn_base.smn_terceros_modulos.trm_nombre,
	smn_base.smn_terceros_modulos.trm_fecha_registro

from
	smn_base.smn_terceros,
	smn_base.smn_terceros_modulos 
where
	smn_base.smn_terceros.smn_terceros_id=smn_base.smn_terceros_modulos.smn_terceros_id 

