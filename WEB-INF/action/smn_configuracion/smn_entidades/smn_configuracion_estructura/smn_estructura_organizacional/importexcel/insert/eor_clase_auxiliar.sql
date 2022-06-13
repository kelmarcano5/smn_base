select
	COALESCE( 
		(select 
			smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id
		from
			smn_base.smn_clase_auxiliar
		where
			upper(trim(smn_base.smn_clase_auxiliar.cla_nombre))=upper(trim(${fld:eor_clase_auxiliar_desc}))
	), 0) as eor_clase_auxiliar_ref