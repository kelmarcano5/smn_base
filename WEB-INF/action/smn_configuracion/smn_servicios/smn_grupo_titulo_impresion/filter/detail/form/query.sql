select
	case
	when smn_base.smn_grupo_titulo_impresion.gti_estatus='A' then '${lbl:b_active}'
	when smn_base.smn_grupo_titulo_impresion.gti_estatus='I' then '${lbl:b_inactive}'
	end as gti_estatus_combo,
	smn_base.smn_grupo_titulo_impresion.*
from
	smn_base.smn_grupo_titulo_impresion
where
	smn_grupo_titulo_impresion_id = ${fld:id}
