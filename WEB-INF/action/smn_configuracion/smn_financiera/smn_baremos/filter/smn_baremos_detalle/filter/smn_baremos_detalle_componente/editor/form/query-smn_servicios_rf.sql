select smn_base.smn_servicios.smn_servicios_id as id, smn_base.smn_servicios.svc_codigo||' - '|| smn_base.smn_servicios.svc_descripcion as item from smn_base.smn_servicios
inner join smn_base.smn_baremos_detalle on smn_base.smn_baremos_detalle.smn_servicios_rf = smn_base.smn_servicios.smn_servicios_id

