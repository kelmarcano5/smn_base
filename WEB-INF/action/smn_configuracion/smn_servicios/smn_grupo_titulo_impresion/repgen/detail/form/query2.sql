select
		smn_base.smn_grupo_titulo_impresion.gti_codigo,
	smn_base.smn_grupo_titulo_impresion.gti_descripcion,
	smn_base.smn_grupo_titulo_impresion.gti_estatus,
	smn_base.smn_grupo_titulo_impresion.gti_fecha_vigencia,
	smn_base.smn_grupo_titulo_impresion.gti_fecha_registro
from
	smn_base.smn_grupo_titulo_impresion 
where
	smn_base.smn_grupo_titulo_impresion.smn_grupo_titulo_impresion_id = ${fld:id}
