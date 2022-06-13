select
		smn_base.smn_rel_nivel_estruc_atributo.smn_nivel_estructura_id,
	smn_base.smn_rel_nivel_estruc_atributo.smn_atributo_item_id,
	smn_base.smn_rel_nivel_estruc_atributo.rna_secuencia
from
	smn_base.smn_rel_nivel_estruc_atributo 
where
	smn_base.smn_rel_nivel_estruc_atributo.smn_rel_nivel_estruc_atributo_id = ${fld:id}
