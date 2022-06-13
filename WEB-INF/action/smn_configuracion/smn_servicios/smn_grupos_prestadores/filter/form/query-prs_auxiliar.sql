select smn_base.smn_auxiliar_prestador_servicio.smn_auxiliar_prestador_servicio_id as id, smn_base.smn_auxiliar_prestador_servicio.aps_codigo || ' - ' || 
smn_base.smn_auxiliar_prestador_servicio.aps_descripcion as item from smn_base.smn_auxiliar_prestador_servicio
order by smn_base.smn_auxiliar_prestador_servicio.aps_descripcion 