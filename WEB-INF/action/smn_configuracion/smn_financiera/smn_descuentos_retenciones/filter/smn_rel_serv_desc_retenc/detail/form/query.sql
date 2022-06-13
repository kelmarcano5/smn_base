select
	smn_base.smn_descuentos_retenciones.smn_descuentos_retenciones_id, 
	smn_base.smn_descuentos_retenciones.dyr_codigo as dyr_codigo_pl0,
	smn_base.smn_servicios.smn_servicios_id, 
	smn_base.smn_servicios.svc_codigo as svc_codigo_pl1,
	(select smn_base.smn_descuentos_retenciones.dyr_codigo|| ' - ' || smn_base.smn_descuentos_retenciones.dyr_descripcion from  smn_base.smn_descuentos_retenciones  where smn_base.smn_descuentos_retenciones.smn_descuentos_retenciones_id is not null  and smn_base.smn_descuentos_retenciones.smn_descuentos_retenciones_id=smn_base.smn_rel_serv_desc_retenc.smn_descuentos_retenciones_id  order by dyr_descripcion ) as smn_descuentos_retenciones_id_combo,
	(select smn_base.smn_servicios.svc_codigo|| ' - ' || smn_base.smn_servicios.svc_descripcion from  smn_base.smn_servicios  where smn_base.smn_servicios.smn_servicios_id is not null  and smn_base.smn_servicios.smn_servicios_id=smn_base.smn_rel_serv_desc_retenc.smn_servicios_id  order by svc_descripcion ) as smn_servicios_id_combo,
	smn_base.smn_servicios.svc_codigo as svc_codigo_pl1,
	smn_base.smn_rel_serv_desc_retenc.smn_descuentos_retenciones_id,
	smn_base.smn_rel_serv_desc_retenc.smn_servicios_id,
	smn_base.smn_rel_serv_desc_retenc.rsd_idioma,
	smn_base.smn_rel_serv_desc_retenc.rsd_usuario,
	smn_base.smn_rel_serv_desc_retenc.rsd_fecha_registro,
	smn_base.smn_rel_serv_desc_retenc.rsd_hora,
	smn_base.smn_rel_serv_desc_retenc.smn_rel_serv_desc_retenc_id
from
	smn_base.smn_descuentos_retenciones,
	smn_base.smn_servicios,
	smn_base.smn_rel_serv_desc_retenc
where
	smn_base.smn_descuentos_retenciones.smn_descuentos_retenciones_id=smn_base.smn_rel_serv_desc_retenc.smn_descuentos_retenciones_id and
	smn_base.smn_servicios.smn_servicios_id=smn_base.smn_rel_serv_desc_retenc.smn_servicios_id
	and
	smn_rel_serv_desc_retenc_id = ${fld:id}
