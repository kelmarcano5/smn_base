select smn_base.smn_entidades_financieras.smn_entidades_financieras_id as refid from smn_base.smn_entidades_financieras where smn_base.smn_entidades_financieras.smn_entidades_financieras_id = ${fld:id}
union
select smn_base.smn_auxiliar_tercero.smn_auxiliar_tercero_id as refid from smn_base.smn_auxiliar_tercero where smn_base.smn_auxiliar_tercero.smn_auxiliar_tercero_id = ${fld:id}
union
select smn_base.smn_auxiliar_persona_natural.smn_auxiliar_persona_natural_id as refid from smn_base.smn_auxiliar_persona_natural where smn_base.smn_auxiliar_persona_natural.smn_auxiliar_persona_natural_id = ${fld:id}
union
select smn_base.smn_auxiliar_prestador_servicio.smn_auxiliar_prestador_servicio_id as refid from smn_base.smn_auxiliar_prestador_servicio where smn_base.smn_auxiliar_prestador_servicio.smn_auxiliar_prestador_servicio_id = ${fld:id}
union
select smn_base.smn_auxiliar_medico.smn_auxiliar_medico_id as refid from smn_base.smn_auxiliar_medico where smn_base.smn_auxiliar_medico.smn_auxiliar_medico_id = ${fld:id}
union
select smn_base.smn_usuarios.smn_usuarios_id as refid from smn_base.smn_usuarios where smn_base.smn_usuarios.smn_usuarios_id = ${fld:id}
union
select smn_base.smn_sucursales.smn_sucursales_id as refid from smn_base.smn_sucursales where smn_base.smn_sucursales.smn_sucursales_id = ${fld:id}
union
select smn_base.smn_unidades_negocios.smn_unidades_negocios_id as refid from smn_base.smn_unidades_negocios where smn_base.smn_unidades_negocios.smn_unidades_negocios_id = ${fld:id}
union
select smn_base.smn_entidades.smn_entidades_id as refid from smn_base.smn_entidades where smn_base.smn_entidades.smn_entidades_id = ${fld:id}
union
select smn_base.smn_prestadores_servicios.smn_prestadores_servicios_id as refid from smn_base.smn_prestadores_servicios where smn_base.smn_prestadores_servicios.smn_prestadores_servicios_id = ${fld:id}
union
select smn_base.smn_terceros_usuarios.smn_terceros_usuarios_id as refid from smn_base.smn_terceros_usuarios where smn_base.smn_terceros_usuarios.smn_terceros_usuarios_id = ${fld:id}
union
select smn_base.smn_terceros_corporaciones.smn_terceros_corporaciones_id as refid from smn_base.smn_terceros_corporaciones where smn_base.smn_terceros_corporaciones.smn_terceros_corporaciones_id = ${fld:id}
union
select smn_base.smn_terceros_unidades_negocios.smn_terceros_unidades_negocios_id as refid from smn_base.smn_terceros_unidades_negocios where smn_base.smn_terceros_unidades_negocios.smn_terceros_unidades_negocios_id = ${fld:id}
union
select smn_base.smn_terceros_sucursales.smn_terceros_sucursales_id as refid from smn_base.smn_terceros_sucursales where smn_base.smn_terceros_sucursales.smn_terceros_sucursales_id = ${fld:id}