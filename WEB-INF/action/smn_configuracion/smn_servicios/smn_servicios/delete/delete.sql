delete from smn_base.smn_servicios_componentes where smn_servicios_componentes_id = ${fld:id};
delete from smn_base.smn_rel_servicio_area_unidad where smn_servicios_id = ${fld:id};
delete from smn_base.smn_servicios where smn_servicios_id = ${fld:id};
