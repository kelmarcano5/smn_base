select
	COALESCE( 
		(select 
			smn_base.smn_entidades.smn_entidades_id
		from
			smn_base.smn_entidades
		where
			upper(trim(smn_base.smn_entidades.ent_descripcion_corta))=upper(trim(${fld:cco_empresa_desc}))
	), 0) as cco_empresa