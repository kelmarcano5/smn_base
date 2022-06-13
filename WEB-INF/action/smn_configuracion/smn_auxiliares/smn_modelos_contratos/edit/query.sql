select	
	smn_base.smn_modelos_contratos.mct_modulo,
	smn_base.smn_modelos_contratos.mct_descripcion,
	smn_base.smn_modelos_contratos.smn_modelos_contratos_id

from 
	smn_base.smn_modelos_contratos
where 
	smn_modelos_contratos_id = ${fld:id}


