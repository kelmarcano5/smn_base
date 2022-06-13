select
		smn_base.smn_activo_fijo.smn_afijo_id,
	smn_base.smn_activo_fijo.acf_codigo,
	smn_base.smn_activo_fijo.acf_nombre,
	smn_base.smn_activo_fijo.acf_proveedor_exclusivo,
	smn_base.smn_activo_fijo.acf_fecha_registro,
	smn_base.smn_activo_fijo.smn_afijo_id,
	smn_base.smn_activo_fijo.acf_codigo,
	smn_base.smn_activo_fijo.acf_nombre,
	smn_base.smn_activo_fijo.acf_proveedor_exclusivo,
	smn_base.smn_activo_fijo.acf_fecha_registro
from
	smn_base.smn_activo_fijo 
where
	smn_base.smn_activo_fijo.smn_afijo_id = ${fld:id}
