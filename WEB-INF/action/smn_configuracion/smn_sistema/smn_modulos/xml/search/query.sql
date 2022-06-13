select
	smn_base.smn_entidades.ent_descripcion_corta,
		smn_base.smn_modulos.smn_modulos_id,
select
		smn_base.smn_modulos.smn_modulos_id,
select
		smn_base.smn_modulos.smn_modulos_id,
	smn_base.smn_modulos.mod_empresa,
	smn_base.smn_modulos.mod_codigo,
	smn_base.smn_modulos.mod_nombre,
	smn_base.smn_modulos.smn_app_rf,
	smn_base.smn_modulos.mod_ruta_anexado,
	smn_base.smn_modulos.mod_idioma,
	smn_base.smn_modulos.mod_usuario,
	smn_base.smn_modulos.mod_fecha_registro,
	smn_base.smn_modulos.mod_hora,
		smn_base.smn_modulos.smn_modulos_id
	
from

	smn_base.smn_entidades,
	smn_base.smn_modulos
where
	smn_base.smn_entidades.smn_entidades_id = smn_base.smn_modulos.mod_empresa
order by
		smn_modulos_id
