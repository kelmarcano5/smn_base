select
	${schema}s_service.description || ' - ' || ${schema}s_service.path as ent_descripcion_corta, 
	case
		when smn_base.smn_panel_traduccion.pat_locale='es' then '${lbl:b_spanish}'
		when smn_base.smn_panel_traduccion.pat_locale='en' then '${lbl:b_english}'
		when smn_base.smn_panel_traduccion.pat_locale='fr' then '${lbl:b_french}'
		when smn_base.smn_panel_traduccion.pat_locale='de' then '${lbl:b_germany}'
		when smn_base.smn_panel_traduccion.pat_locale='pt' then '${lbl:b_portuguese}'
		when smn_base.smn_panel_traduccion.pat_locale='it' then '${lbl:b_italian}'
	end as pat_locale_combo,
	smn_base.smn_panel_traduccion.pat_panel,
	smn_base.smn_panel_traduccion.pat_description,
	smn_base.smn_panel_traduccion.pat_locale,
	${schema}s_application.description as app_id,
	smn_base.smn_panel_traduccion.pat_fecha_registro
from 
	smn_base.smn_panel_traduccion,
	${schema}s_panel, 
	${schema}s_service,
	${schema}s_application  
where
	${schema}s_panel.panel_id = smn_base.smn_panel_traduccion.pat_panel
and
	${schema}s_panel.service_id = ${schema}s_service.service_id 
and 
	${schema}s_panel.app_id in (select 
										${schema}s_application.app_id 
									 from 
									 	${schema}s_application 
									 where 
									 	${schema}s_application.app_alias in ('smn_base', 'smn_cont_financiera','smn_control_acceso','smn_gip','smn_compras','smn_sisrec','smn_salud') 
									 order by 
									 	${schema}s_service.description)
and
	smn_base.smn_panel_traduccion.smn_panel_traduccion_id is not null
	${filter}
order by
	smn_base.smn_panel_traduccion.smn_panel_traduccion_id desc
