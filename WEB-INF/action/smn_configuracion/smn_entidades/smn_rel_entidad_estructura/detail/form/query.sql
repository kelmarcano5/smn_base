select
		smn_base.smn_rel_entidad_estructura.smn_rel_entidad_estructura_id,
	smn_base.smn_entidades.ent_codigo||'-'||smn_base.smn_entidades.ent_descripcion_corta as smn_entidades_id,
	smn_base.smn_configuracion_estructura.coe_codigo||'-'||smn_base.smn_configuracion_estructura.coe_nombre as smn_configuracion_estructura_id,
	case
	when smn_base.smn_rel_entidad_estructura.rec_status='A' then '${lbl:b_active}'
	when smn_base.smn_rel_entidad_estructura.rec_status='I' then '${lbl:b_inactive}'
	end as rec_status,
	smn_base.smn_rel_entidad_estructura.rec_status,
	smn_base.smn_rel_entidad_estructura.rec_fecha_registro
	
from
	smn_base.smn_entidades,
	smn_base.smn_configuracion_estructura,
	smn_base.smn_rel_entidad_estructura
where
	smn_base.smn_entidades.smn_entidades_id=smn_base.smn_rel_entidad_estructura.smn_entidades_id and
	smn_base.smn_configuracion_estructura.smn_configuracion_estructura_id=smn_base.smn_rel_entidad_estructura.smn_configuracion_estructura_id
	and
	smn_rel_entidad_estructura_id = ${fld:id}