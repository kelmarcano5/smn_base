select	
	(select smn_base.smn_modulos.mod_codigo|| ' - ' || smn_base.smn_modulos.mod_nombre from  smn_base.smn_modulos where smn_base.smn_modulos.smn_modulos_id is not null  and smn_base.smn_modulos.smn_modulos_id=smn_base.smn_control_documento.smn_modulos_id) as smn_modulos_id_combo,
	(select smn_base.smn_transaccion_general.trg_codigo|| ' - ' || smn_base.smn_transaccion_general.trg_descripcion from  smn_base.smn_transaccion_general where smn_base.smn_transaccion_general.smn_transaccion_general_id is not null  and smn_base.smn_transaccion_general.smn_transaccion_general_id=smn_base.smn_control_documento.smn_transaccion_general_rf) as smn_transaccion_general_rf_combo,
	(select smn_base.smn_documentos_generales.dcg_codigo|| ' - ' || smn_base.smn_documentos_generales.dcg_descripcion from  smn_base.smn_documentos_generales where smn_base.smn_documentos_generales.smn_documentos_generales_id is not null  and smn_base.smn_documentos_generales.smn_documentos_generales_id=smn_base.smn_control_documento.smn_documentos_generales_rf) as smn_documentos_generales_rf_combo,
	(select smn_salud.smn_documento.doc_codigo|| ' - ' || smn_salud.smn_documento.doc_nombre from  smn_salud.smn_documento where smn_salud.smn_documento.smn_documento_id is not null  and smn_salud.smn_documento.smn_documento_id=smn_base.smn_control_documento.smn_documento_id) as cdc_documento_id_combo,
	(select smn_base.smn_paso.pas_codigo|| ' - ' || smn_base.smn_paso.pas_descripcion from  smn_base.smn_paso where smn_base.smn_paso.smn_paso_id is not null  and smn_base.smn_paso.smn_paso_id=smn_base.smn_control_documento.smn_paso_id) as smn_paso_id_combo,
	(select smn_base.smn_nivel_aprobacion.nap_codigo|| ' - ' || smn_base.smn_nivel_aprobacion.nap_descripcion from  smn_base.smn_nivel_aprobacion where smn_base.smn_nivel_aprobacion.smn_nivel_aprobacion_id is not null  and smn_base.smn_nivel_aprobacion.smn_nivel_aprobacion_id=smn_base.smn_control_documento.smn_nivel_aprobacion_id) as smn_nivel_aprobacion_id_combo,
	(select case when smn_salud.smn_rol.rol_tipo='SO' then '${lbl:b_solicitante}' when smn_salud.smn_rol.rol_tipo='AP' then '${lbl:b_autorizador}' when smn_salud.smn_rol.rol_tipo='AM' then '${lbl:b_ambos}' end from  smn_salud.smn_rol where smn_salud.smn_rol.smn_rol_id is not null  and smn_salud.smn_rol.smn_rol_id=smn_base.smn_control_documento.smn_rol_id) as smn_rol_id_combo,
	case
		when smn_base.smn_control_documento.cdc_status_doc ='A' then '${lbl:b_aprobado}'
		when smn_base.smn_control_documento.cdc_status_doc ='P' then '${lbl:b_pendiente}'
	end as cdc_status_doc_combo,
	smn_base.smn_control_documento.smn_modulos_id,
	smn_base.smn_control_documento.smn_transaccion_general_rf,
	smn_base.smn_control_documento.smn_documentos_generales_rf,
	smn_base.smn_control_documento.smn_documento_id,
	smn_base.smn_control_documento.smn_paso_id,
	smn_base.smn_control_documento.smn_nivel_aprobacion_id,
	smn_base.smn_control_documento.smn_rol_id,
	smn_base.smn_control_documento.cdc_status_doc ,
	smn_base.smn_control_documento.cdc_fecha_registro,
	smn_base.smn_control_documento.cdc_hora,
	smn_base.smn_control_documento.smn_control_documento_id

from
	smn_base.smn_control_documento
where
	smn_control_documento_id is not null	
 	 	${filter}
order by 
	smn_control_documento_id