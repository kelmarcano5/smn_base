select smn_base.smn_grupos_prestadores.smn_grupos_prestadores_id as id, smn_basesmn_grupos_prestadores.gpp_codigo || ' - ' || smn_base.smn_grupos_prestadores.gpp_descripcion as item from smn_base.smn_grupos_prestadores order by smn_base.smn_grupos_prestadores.gpp_descripcion