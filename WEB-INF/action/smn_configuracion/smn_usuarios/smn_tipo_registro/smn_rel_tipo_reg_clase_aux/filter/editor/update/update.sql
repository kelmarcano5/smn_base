UPDATE smn_base.smn_rel_tipo_reg_clase_aux SET
	smn_tipo_registro_rf=${fld:smn_tipo_registro_rf},
	smn_clase_auxiliar_rf=${fld:smn_clase_auxiliar_rf}

WHERE
	smn_rel_tipo_reg_clase_aux_id=${fld:id}

