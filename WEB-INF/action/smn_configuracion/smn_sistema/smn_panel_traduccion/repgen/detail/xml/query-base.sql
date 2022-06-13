select
	smn_base.smn_entidades.ent_descripcion_corta,
	${field}
from
	smn_base.smn_entidades,
	smn_base.smn_panel_traduccion
where
	smn_base.smn_entidades.smn_entidades_id = smn_base.smn_panel_traduccion.pat_panel and
		smn_base.smn_panel_traduccion.smn_panel_traduccion_id = ${fld:id}
	
