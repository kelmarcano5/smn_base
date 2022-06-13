UPDATE smn_base.smn_rel_nivel_estruc_atributo SET
	smn_nivel_estructura_id=${fld:smn_nivel_estructura_id},
	smn_atributo_item_id=${fld:smn_atributo_item_id},
	rna_secuencia=${fld:rna_secuencia}

WHERE
	smn_rel_nivel_estruc_atributo_id=${fld:id}

