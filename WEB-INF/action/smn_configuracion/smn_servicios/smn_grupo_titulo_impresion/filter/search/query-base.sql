select
	case
	when smn_base.smn_grupo_titulo_impresion.gti_estatus='A' then '${lbl:b_active}'
	when smn_base.smn_grupo_titulo_impresion.gti_estatus='I' then '${lbl:b_inactive}'
	end as gti_estatus_combo,
	smn_base.smn_grupo_titulo_impresion.gti_codigo,
	smn_base.smn_grupo_titulo_impresion.gti_descripcion,
	smn_base.smn_grupo_titulo_impresion.gti_estatus,
	smn_base.smn_grupo_titulo_impresion.gti_fecha_vigencia,
	smn_base.smn_grupo_titulo_impresion.gti_fecha_registro,
		smn_base.smn_grupo_titulo_impresion.smn_grupo_titulo_impresion_id,
	smn_base.smn_grupo_titulo_impresion.gti_orden
	
from
	smn_base.smn_grupo_titulo_impresion
where
	smn_grupo_titulo_impresion_id is not null
	${filter}
order by
		smn_grupo_titulo_impresion_id
