select
		smn_base.smn_activo_fijo.smn_afijo_id,
	case
	when smn_base.smn_activo_fijo.acf_proveedor_exclusivo='SI' then '${lbl:b_yes}'
	when smn_base.smn_activo_fijo.acf_proveedor_exclusivo='NO' then '${lbl:b_not}'
	end as acf_proveedor_exclusivo_combo,
	smn_base.smn_activo_fijo.acf_codigo,
	smn_base.smn_activo_fijo.acf_nombre,
	smn_base.smn_activo_fijo.acf_proveedor_exclusivo
	
from
	smn_base.smn_activo_fijo
