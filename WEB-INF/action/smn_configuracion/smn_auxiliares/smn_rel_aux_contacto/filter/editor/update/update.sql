UPDATE smn_base.smn_rel_aux_contacto SET
	smn_auxiliar_id=${fld:smn_auxiliar_id},
	smn_auxiliar_contacto_id=${fld:smn_auxiliar_contacto_id}

WHERE
	smn_rel_aux_contacto_id=${fld:id}

