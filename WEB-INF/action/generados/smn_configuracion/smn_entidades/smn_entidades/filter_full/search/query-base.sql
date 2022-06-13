select	
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
	smn_base.smn_entidades.smn_entidades_id

from
	smn_base.smn_entidades
where
	smn_entidades_id is not null	
 	 	${filter}
order by 
	smn_entidades_id