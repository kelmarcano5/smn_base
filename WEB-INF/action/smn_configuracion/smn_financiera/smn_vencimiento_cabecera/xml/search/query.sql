select
		smn_base.smn_vencimiento_cabecera.smn_vencimiento_cabecera_id,
	case
	when smn_base.smn_vencimiento_cabecera.tve_estatus='A' then '${lbl:b_active}'
	when smn_base.smn_vencimiento_cabecera.tve_estatus='I' then '${lbl:b_inactive}'
	end as tve_estatus_combo,
	smn_base.smn_vencimiento_cabecera.tve_codigo,
	smn_base.smn_vencimiento_cabecera.tve_descripcion,
	smn_base.smn_vencimiento_cabecera.tve_estatus,
	smn_base.smn_vencimiento_cabecera.tve_vigencia,
	smn_base.smn_vencimiento_cabecera.tve_fecha_registro
	
from
	smn_base.smn_vencimiento_cabecera
