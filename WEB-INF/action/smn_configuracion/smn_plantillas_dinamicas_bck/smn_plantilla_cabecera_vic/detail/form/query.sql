select
	case
	when smn_base.smn_plantilla_cabecera.pca_status='AC' then '${lbl:b_active}'
	when smn_base.smn_plantilla_cabecera.pca_status='IN' then '${lbl:b_inactive}'
	end as pca_status,
	smn_base.smn_plantilla_cabecera.*
from
	smn_base.smn_plantilla_cabecera
where
	smn_plantilla_cabecera_id = ${fld:id}
