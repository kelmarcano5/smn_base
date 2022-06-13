select
		smn_base.smn_rel_entidad_estructura.smn_entidades_id,
	smn_base.smn_rel_entidad_estructura.smn_configuracion_estructura_id,
	smn_base.smn_rel_entidad_estructura.rec_status,
	smn_base.smn_rel_entidad_estructura.rec_fecha_registro
from
	smn_base.smn_rel_entidad_estructura 
where
	smn_base.smn_rel_entidad_estructura.smn_rel_entidad_estructura_id = ${fld:id}
