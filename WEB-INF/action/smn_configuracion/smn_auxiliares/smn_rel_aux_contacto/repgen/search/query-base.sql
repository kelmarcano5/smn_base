select
		smn_base.smn_rel_aux_contacto.smn_rel_aux_contacto_id,
	${field}
from
	smn_base.smn_rel_aux_contacto
where
		smn_base.smn_rel_aux_contacto.smn_rel_aux_contacto_id is not null
	${filter}
	
	
