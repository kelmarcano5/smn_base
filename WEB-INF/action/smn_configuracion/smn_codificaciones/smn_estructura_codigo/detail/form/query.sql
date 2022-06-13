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
	smn_base.smn_estructura_codigo.smn_estructura_codigo_id
from
	smn_base.smn_modulos,
	smn_base.smn_estructura_codigo
where
	smn_base.smn_modulos.smn_modulos_id=smn_base.smn_estructura_codigo.smn_modulos_id
	and
	smn_estructura_codigo_id = ${fld:id}
