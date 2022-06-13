select
		smn_base.smn_tipo_contribuyente.smn_tipo_contribuyente_id,
	case
	when smn_base.smn_tipo_contribuyente.tco_estatus='AC' then '${lbl:b_active}'
	when smn_base.smn_tipo_contribuyente.tco_estatus='IN' then '${lbl:b_inactive}'
	end as tco_estatus_combo,
	smn_base.smn_tipo_contribuyente.tco_codigo,
	smn_base.smn_tipo_contribuyente.tco_descripcion,
	smn_base.smn_tipo_contribuyente.tco_estatus,
	smn_base.smn_tipo_contribuyente.tco_fecha_registro
	
from
	smn_base.smn_tipo_contribuyente
