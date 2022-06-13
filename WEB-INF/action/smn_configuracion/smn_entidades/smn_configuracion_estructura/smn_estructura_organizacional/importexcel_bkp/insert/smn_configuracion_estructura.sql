select 
	COALESCE( 
		(select
			smn_base.smn_configuracion_estructura.smn_configuracion_estructura_id	
		 from 
			smn_base.smn_configuracion_estructura
		 where
			upper(trim(smn_base.smn_configuracion_estructura.coe_nombre)) = upper(trim(${fld:smn_configuracion_estructura_id_desc}))
	), 0) as smn_configuracion_estructura_id_ref