select
	(select smn_base.smn_transaccion_general.trg_codigo|| ' - ' || smn_base.smn_transaccion_general.trg_descripcion from  smn_base.smn_transaccion_general where smn_base.smn_transaccion_general.smn_transaccion_general_id is not null  and smn_base.smn_transaccion_general.smn_transaccion_general_id=smn_base.smn_rel_trans_docum_paso.smn_transaccion_general_rf) as smn_transaccion_general_rf_combo,
	(select smn_base.smn_documentos_generales.dcg_codigo|| ' - ' || smn_base.smn_documentos_generales.dcg_descripcion from  smn_base.smn_documentos_generales where smn_base.smn_documentos_generales.smn_documentos_generales_id is not null  and smn_base.smn_documentos_generales.smn_documentos_generales_id=smn_base.smn_rel_trans_docum_paso.smn_documentos_generales_rf) as smn_documentos_generales_rf_combo,
	(select smn_base.smn_paso.pas_codigo|| ' - ' || smn_base.smn_paso.pas_descripcion from  smn_base.smn_paso where smn_base.smn_paso.smn_paso_id is not null  and smn_base.smn_paso.smn_paso_id=smn_base.smn_rel_trans_docum_paso.smn_paso_id) as smn_paso_id_combo,
	(select smn_base.smn_nivel_aprobacion.nap_codigo|| ' - ' || smn_base.smn_nivel_aprobacion.nap_descripcion from  smn_base.smn_nivel_aprobacion where smn_base.smn_nivel_aprobacion.smn_nivel_aprobacion_id is not null  and smn_base.smn_nivel_aprobacion.smn_nivel_aprobacion_id=smn_base.smn_rel_trans_docum_paso.smn_nivel_aprobacion_inicial_rf) as smn_nivel_aprobacion_inicial_rf_combo,
	(select smn_base.smn_nivel_aprobacion.nap_codigo|| ' - ' || smn_base.smn_nivel_aprobacion.nap_descripcion from  smn_base.smn_nivel_aprobacion where smn_base.smn_nivel_aprobacion.smn_nivel_aprobacion_id is not null  and smn_base.smn_nivel_aprobacion.smn_nivel_aprobacion_id=smn_base.smn_rel_trans_docum_paso.smn_nivel_aprobacion_final_rf) as smn_nivel_aprobacion_final_rf_combo,
	smn_base.smn_rel_trans_docum_paso.*
from 
	smn_base.smn_rel_trans_docum_paso
where
	smn_rel_trans_docum_paso_id = ${fld:id}
