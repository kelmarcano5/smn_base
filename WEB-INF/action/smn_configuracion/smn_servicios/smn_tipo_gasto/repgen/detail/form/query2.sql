select
		smn_base.smn_tipo_gasto.tig_codigo,
	smn_base.smn_tipo_gasto.tig_descripcion,
	smn_base.smn_tipo_gasto.tig_fecha_registro
from
	smn_base.smn_tipo_gasto 
where
	smn_base.smn_tipo_gasto.smn_tipo_gasto_id = ${fld:id}
