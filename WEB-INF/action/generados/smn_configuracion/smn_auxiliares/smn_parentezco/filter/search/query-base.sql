select	
	smn_base.smn_parentezco.ptz_codigo,
	smn_base.smn_parentezco.ptz_descripcion,
	smn_base.smn_parentezco.ptz_fecha_registro,
	smn_base.smn_parentezco.smn_parentezco_id

from
	smn_base.smn_parentezco
where
	smn_parentezco_id is not null	
 	 	${filter}
order by 
	smn_parentezco_id