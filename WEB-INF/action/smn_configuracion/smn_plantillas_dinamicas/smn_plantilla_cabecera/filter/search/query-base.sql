select
	case
	when smn_base.smn_plantilla_cabecera.pca_status='AC' then '${lbl:b_active}'
	when smn_base.smn_plantilla_cabecera.pca_status='IN' then '${lbl:b_inactive}'
	end as pca_status,
	smn_base.smn_plantilla_cabecera.pca_codigo,
	smn_base.smn_plantilla_cabecera.pca_descripcion,
	smn_base.smn_plantilla_cabecera.smn_modulo_rf,
	smn_base.smn_plantilla_cabecera.pca_status,
	smn_base.smn_plantilla_cabecera.pca_fecha_registro,
		smn_base.smn_plantilla_cabecera.smn_plantilla_cabecera_id
	
from
	smn_base.smn_plantilla_cabecera
where
	smn_plantilla_cabecera_id is not null
	${filter}
order by
		smn_plantilla_cabecera_id
