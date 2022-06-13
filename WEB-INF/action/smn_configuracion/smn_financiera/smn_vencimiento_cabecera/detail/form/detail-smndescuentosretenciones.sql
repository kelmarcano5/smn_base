select
	case
	when smn_base.smn_descuentos_retenciones.dyr_apli_cant_precio='CA' then '${lbl:b_quantity}'
	when smn_base.smn_descuentos_retenciones.dyr_apli_cant_precio='PR' then '${lbl:b_price}'
	end as dyr_apli_cant_precio_combo,
	case
	when smn_base.smn_descuentos_retenciones.dyr_estatus='A' then '${lbl:b_active}'
	when smn_base.smn_descuentos_retenciones.dyr_estatus='I' then '${lbl:b_inactive}'
	end as dyr_estatus_combo,
	smn_base.smn_descuentos_retenciones.*
from
	smn_base.smn_descuentos_retenciones,
	smn_base.smn_vencimiento_cabecera
where
		smn_base.smn_descuentos_retenciones.smn_vencimiento_cabecera_id=smn_base.smn_vencimiento_cabecera.smn_vencimiento_cabecera_id and
		smn_base.smn_vencimiento_cabecera.smn_vencimiento_cabecera_id=${fld:id}
