select
	COALESCE( 
		(select 
			smn_base.smn_centro_costo.smn_centro_costo_id
		from
			smn_base.smn_centro_costo
		where
			upper(trim(smn_base.smn_centro_costo.cco_descripcion_corta))=upper(trim(${fld:eor_centro_costo_desc}))
	), 0) as eor_centro_costo_ref