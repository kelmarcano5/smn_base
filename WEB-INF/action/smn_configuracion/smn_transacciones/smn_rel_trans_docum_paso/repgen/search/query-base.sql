select
		smn_base.smn_rel_trans_docum_paso.smn_rel_trans_docum_paso_id,
	${field}
from
	smn_base.smn_rel_trans_docum_paso
where
		smn_base.smn_rel_trans_docum_paso.smn_rel_trans_docum_paso_id is not null
	${filter}
	
	
