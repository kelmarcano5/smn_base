select
		smn_base.smn_rel_afijo_desc_retenc.smn_rel_afijo_desc_retenc_id,
	${field}
from
	smn_base.smn_rel_afijo_desc_retenc
where
		smn_base.smn_rel_afijo_desc_retenc.smn_rel_afijo_desc_retenc_id is not null
	${filter}
	
	
