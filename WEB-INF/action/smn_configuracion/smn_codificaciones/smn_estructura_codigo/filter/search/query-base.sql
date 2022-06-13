select
	smn_base.smn_modulos.smn_modulos_id, 
	smn_base.smn_modulos.mod_codigo as mod_codigo_pl0,
	(select smn_base.smn_modulos.mod_codigo|| ' - ' || smn_base.smn_modulos.mod_nombre from  smn_base.smn_modulos  where smn_base.smn_modulos.smn_modulos_id is not null  and smn_base.smn_modulos.smn_modulos_id=smn_base.smn_estructura_codigo.smn_modulos_id  order by mod_nombre ) as smn_modulos_id_combo,
	smn_base.smn_estructura_codigo.eco_codigo,
	smn_base.smn_estructura_codigo.eco_nombre,
	smn_base.smn_estructura_codigo.eco_niveles,
	smn_base.smn_estructura_codigo.eco_mascara,
	smn_base.smn_estructura_codigo.eco_separador,
	smn_base.smn_estructura_codigo.eco_idioma,
	smn_base.smn_estructura_codigo.eco_usuario,
	smn_base.smn_estructura_codigo.eco_fecha_registro,
	smn_base.smn_estructura_codigo.eco_hora,
	smn_base.smn_estructura_codigo.smn_estructura_codigo_id,
	smn_base.smn_entidades.ent_codigo ||' - '|| smn_base.smn_entidades.ent_descripcion_corta as smn_entidad_rf
	
from
	smn_base.smn_estructura_codigo	
	inner join 	smn_base.smn_modulos on smn_base.smn_modulos.smn_modulos_id = smn_base.smn_estructura_codigo.smn_modulos_id
	inner join smn_base.smn_entidades on smn_base.smn_entidades.smn_entidades_id = smn_base.smn_estructura_codigo.smn_entidad_rf
where
	smn_estructura_codigo_id is not null
	and 	smn_base.smn_modulos.smn_modulos_id=smn_base.smn_estructura_codigo.smn_modulos_id
	${filter}
order by
		smn_estructura_codigo_id
