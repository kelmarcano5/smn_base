select
	smn_base.smn_entidades.ent_descripcion_corta,
	${field}
from
	smn_base.smn_entidades,
	smn_base.smn_modulos
where
	smn_base.smn_entidades.smn_entidades_id = smn_base.smn_modulos.mod_empresa and
		smn_base.smn_modulos.smn_modulos_id = ${fld:id}
	
