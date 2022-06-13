select 
	setval('smn_base.seq_smn_direccion',max(smn_base.smn_direccion.smn_direccion_id))
from
	smn_base.smn_direccion;