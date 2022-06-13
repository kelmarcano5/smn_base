setComboValue('smn_transaccion_general_rf','${fld:smn_transaccion_general_rf}','form1');
setComboValue('smn_documentos_generales_rf','${fld:smn_documentos_generales_rf}','form1');
setComboValue('smn_paso_id','${fld:smn_paso_id}','form1');
document.form1.tpa_tiempo_paso.value='${fld:tpa_tiempo_paso}';
setComboValue('smn_nivel_aprobacion_inicial_rf','${fld:smn_nivel_aprobacion_inicial_rf}','form1');
setComboValue('smn_nivel_aprobacion_final_rf','${fld:smn_nivel_aprobacion_final_rf}','form1');
document.form1.id.value='${fld:smn_rel_trans_docum_paso_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


 

