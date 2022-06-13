select
		smn_base.smn_rel_cues_secc_preg.smn_rel_cues_secc_preg_id,
	${field}
from
	smn_base.smn_rel_cues_secc_preg
where
		smn_base.smn_rel_cues_secc_preg.smn_rel_cues_secc_preg_id is not null
	${filter}
	
	
