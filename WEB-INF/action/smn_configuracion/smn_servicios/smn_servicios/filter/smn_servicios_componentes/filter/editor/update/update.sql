UPDATE smn_base.smn_servicios_componentes SET
	smn_servicios_id=${fld:smn_servicios_id},
	smn_componentes_id=${fld:smn_componentes_id},
	sec_cantidad=${fld:sec_cantidad},
	smn_entidades_rf=${fld:smn_entidades_rf},
	smn_sucursales_rf=${fld:smn_sucursales_rf},
	smn_areas_servicios_rf=${fld:smn_areas_servicios_rf},
	smn_unidades_servicios_rf=${fld:smn_unidades_servicios_rf},
	sec_porcentaje=${fld:sec_porcentaje},
	sec_gastos=${fld:sec_gastos},
	smn_clase_auxiliar_rf=${fld:smn_clase_auxiliar_rf}
WHERE
	smn_servicios_componentes_id=${fld:id}

