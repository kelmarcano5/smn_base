select
	smn_base.smn_direccion.dir_descripcion,
	smn_base.smn_entidades.ent_descripcion_corta,
	smn_base.smn_unidades_negocios.uen_nombre,
	case
	when smn_base.smn_sucursales.suc_maneja_area_servicio='S' then '${lbl:b_yes}'
	when smn_base.smn_sucursales.suc_maneja_area_servicio='N' then '${lbl:b_not}'
	end as suc_maneja_area_servicio_combo,
	smn_base.smn_sucursales.suc_empresa,
	smn_base.smn_sucursales.suc_codigo,
	smn_base.smn_sucursales.suc_nombre,
	smn_base.smn_sucursales.suc_unidad_negocio,
	smn_base.smn_sucursales.suc_maneja_area_servicio,
	smn_base.smn_sucursales.suc_responsable,
	smn_base.smn_sucursales.suc_direccion,
	smn_base.smn_sucursales.suc_telefono_fijo,
	smn_base.smn_sucursales.suc_telefono_movil,
	smn_base.smn_sucursales.suc_email,
	smn_base.smn_sucursales.suc_fecha_registro,
	smn_base.smn_sucursales.smn_sucursales_id
from
	smn_base.smn_sucursales
	inner join smn_base.smn_direccion on smn_base.smn_direccion.smn_direccion_id = smn_base.smn_sucursales.suc_direccion
	inner join smn_base.smn_entidades on smn_base.smn_entidades.smn_entidades_id = smn_base.smn_sucursales.suc_empresa
	left outer join smn_base.smn_unidades_negocios on smn_base.smn_unidades_negocios.smn_unidades_negocios_id = smn_base.smn_sucursales.suc_unidad_negocio
where
	smn_base.smn_sucursales.suc_idioma = '${def:locale}'
order by
	smn_base.smn_sucursales.smn_sucursales_id desc
