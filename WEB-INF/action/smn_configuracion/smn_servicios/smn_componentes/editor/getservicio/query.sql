select smn_base.smn_servicios.svc_codigo as codigo, smn_base.smn_servicios.svc_descripcion as descripcion from smn_base.smn_servicios
where
smn_base.smn_servicios.smn_servicios_id=${fld:id}