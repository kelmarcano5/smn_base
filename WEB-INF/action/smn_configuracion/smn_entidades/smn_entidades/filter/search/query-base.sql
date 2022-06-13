select
	smn_base.smn_comunidades.cmn_nombre,
	smn_base.smn_corporaciones.crp_nombre,
	smn_base.smn_direccion.dir_descripcion,
	smn_base.smn_monedas.mon_nombre,
	smn_base.smn_sectores_economicos.sec_descripcion,
	smn_base.smn_unidades_negocios.uen_nombre,
	case
		when smn_base.smn_entidades.ent_maneja_sucursal='S' then '${lbl:b_yes}'
		when smn_base.smn_entidades.ent_maneja_sucursal='N' then '${lbl:b_not}'
	end as ent_maneja_sucursal_combo,
	smn_base.smn_entidades.ent_contacto,
	smn_base.smn_entidades.ent_telefono_fijo,
	smn_base.smn_entidades.ent_telefono_movil,
	smn_base.smn_entidades.ent_email,
	smn_base.smn_entidades.ent_act_economica,
	smn_base.smn_entidades.ent_fecha_registro,
	smn_base.smn_entidades.ent_codigo,
	smn_base.smn_entidades.ent_comunidad,
	smn_base.smn_entidades.ent_corporacion,
	smn_base.smn_entidades.ent_unidad_negocio,
	smn_base.smn_entidades.ent_maneja_sucursal,
	smn_base.smn_entidades.ent_moneda,
	smn_base.smn_entidades.ent_sector_economico,
	smn_base.smn_entidades.ent_descripcion_corta,
	smn_base.smn_entidades.ent_descripcion_larga,
	smn_base.smn_entidades.ent_nro_id_fiscal,
	smn_base.smn_entidades.ent_direccion,
	smn_base.smn_entidades.smn_entidades_id,
	case
	when smn_base.smn_entidades.ent_estatus='AC' then '${lbl:b_active}'
	when smn_base.smn_entidades.ent_estatus='IN' then '${lbl:b_inactive}'
	end as ent_estatus_combo,
	smn_base.smn_tipo_contribuyente.tco_codigo ||' - '||smn_base.smn_tipo_contribuyente.tco_descripcion as smn_tipo_contribuyente_rf_combo

from
	smn_base.smn_entidades
	left outer join smn_base.smn_comunidades on smn_base.smn_comunidades.smn_comunidades_id = smn_base.smn_entidades.ent_comunidad
	left outer join smn_base.smn_corporaciones on smn_base.smn_corporaciones.smn_corporaciones_id = smn_base.smn_entidades.ent_corporacion
	inner join smn_base.smn_direccion on smn_base.smn_direccion.smn_direccion_id = smn_base.smn_entidades.ent_direccion
	inner join smn_base.smn_monedas on smn_base.smn_monedas.smn_monedas_id = smn_base.smn_entidades.ent_moneda
	left outer join smn_base.smn_sectores_economicos on smn_base.smn_sectores_economicos.smn_sectores_economicos_id = smn_base.smn_entidades.ent_sector_economico
	left outer join smn_base.smn_unidades_negocios on smn_base.smn_unidades_negocios.smn_unidades_negocios_id = smn_base.smn_entidades.ent_unidad_negocio
	left outer join smn_base.smn_tipo_contribuyente on smn_base.smn_tipo_contribuyente.smn_tipo_contribuyente_id = smn_base.smn_entidades.smn_tipo_contribuyente_rf

where
	smn_base.smn_entidades.smn_entidades_id is not null
and
	smn_base.smn_entidades.ent_idioma = '${def:locale}'
and
	smn_base.smn_entidades.ent_usuario = '${def:user}'
	${filter}
order by
	smn_base.smn_entidades.smn_entidades_id desc
