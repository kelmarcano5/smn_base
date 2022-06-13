select DISTINCT
		smn_base.smn_servicios.svc_codigo
from
		smn_base.smn_servicios
		inner join smn_base.smn_baremos_detalle on smn_base.smn_baremos_detalle.smn_servicios_rf = smn_base.smn_servicios.smn_servicios_id
where
		smn_base.smn_servicios.smn_servicios_id = ${fld:smn_servicios_rf} and smn_base.smn_baremos_detalle.smn_baremos_id=${fld:smn_baremos_id}
