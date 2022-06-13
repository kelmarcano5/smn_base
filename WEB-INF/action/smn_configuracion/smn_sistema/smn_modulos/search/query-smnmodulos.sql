select
	(select smn_base.smn_entidades.ent_codigo || ' - ' || smn_base.smn_entidades.ent_descripcion_corta from  smn_base.smn_entidades  where smn_base.smn_entidades.smn_entidades_id is not null  and smn_base.smn_entidades.smn_entidades_id=smn_base.smn_modulos.mod_empresa  order by smn_base.smn_entidades.ent_descripcion_corta ) as ent_descripcion_corta_combo,
	(select smn_seguridad.s_application.app_alias|| ' - ' || smn_seguridad.s_application.description from  smn_seguridad.s_application  where smn_seguridad.s_application.app_id is not null  and smn_seguridad.s_application.app_id=smn_base.smn_modulos.smn_app_rf  order by description ) as smn_app_rf_combo,
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
	smn_base.smn_modulos
order by
		smn_modulos_id
