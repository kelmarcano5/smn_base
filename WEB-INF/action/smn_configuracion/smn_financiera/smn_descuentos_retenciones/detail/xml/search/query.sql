select
	case
	when smn_base.smn_descuentos_retenciones.dyr_apli_cant_precio='CA' then '${lbl:b_quantity}'
	when smn_base.smn_descuentos_retenciones.dyr_apli_cant_precio='PR' then '${lbl:b_price}'
	end as dyr_apli_cant_precio_combo,
	case
	when smn_base.smn_descuentos_retenciones.dyr_estatus='A' then '${lbl:b_active}'
	when smn_base.smn_descuentos_retenciones.dyr_estatus='I' then '${lbl:b_inactive}'
	end as dyr_estatus_combo,
	smn_base.smn_descuentos_retenciones.dyr_codigo,
	smn_base.smn_descuentos_retenciones.dyr_descripcion,
	smn_base.smn_vencimiento_cabecera.tve_codigo ||'-'|| smn_base.smn_vencimiento_cabecera.tve_descripcion as smn_vencimiento_cabecera_id,
	smn_base.smn_descuentos_retenciones.dyr_apli_cant_precio,
	smn_base.smn_descuentos_retenciones.dyr_porcentaje_base,
	smn_base.smn_descuentos_retenciones.dyr_porcentaje_descuento,
	smn_base.smn_descuentos_retenciones.dyr_estatus,
	smn_base.smn_descuentos_retenciones.dyr_vigencia,
	smn_base.smn_descuentos_retenciones.smn_descuentos_retenciones_id,
	smn_base.smn_descuentos_retenciones.dyr_fecha_registro
	
from
	smn_base.smn_descuentos_retenciones
	left outer join smn_base.smn_vencimiento_cabecera on smn_base.smn_vencimiento_cabecera.smn_vencimiento_cabecera_id = smn_base.smn_descuentos_retenciones.smn_vencimiento_cabecera_id

where
	smn_descuentos_retenciones_id = ${fld:id}
