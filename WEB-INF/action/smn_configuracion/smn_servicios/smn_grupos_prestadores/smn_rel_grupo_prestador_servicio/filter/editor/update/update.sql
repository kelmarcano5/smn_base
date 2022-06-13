UPDATE smn_base.smn_rel_grupo_prestador_servicio SET
	smn_prestadores_servicios_id=${fld:smn_prestadores_servicios_id},
	smn_grupos_prestadores_id=${fld:smn_grupos_prestadores_id}

WHERE
	smn_rel_grupo_prestador_servicio_id=${fld:id}

