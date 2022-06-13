select
		smn_base.smn_rel_nivel_estruc_atributo.smn_rel_nivel_estruc_atributo_id,
	${field}
from
	smn_base.smn_rel_nivel_estruc_atributo
where
		smn_base.smn_rel_nivel_estruc_atributo.smn_rel_nivel_estruc_atributo_id is not null
	${filter}
	
	
