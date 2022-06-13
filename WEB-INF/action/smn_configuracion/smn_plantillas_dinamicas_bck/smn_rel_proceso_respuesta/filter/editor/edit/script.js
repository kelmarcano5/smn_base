document.form1.smn_cuestionario_id_name.value='${fld:cue_codigo_pl0@js}';
document.form1.smn_cuestionario_id.value='${fld:smn_cuestionario_id@#,###,###}';
setComboValue('smn_modulo_rf','${fld:smn_modulo_rf}','form1');
setComboValue('smn_esquema_rf','${fld:smn_esquema_rf}','form1');
setComboValue('smn_campo_rf','${fld:smn_campo_rf}','form1');
document.form1.smn_respuesta_id.value='${fld:smn_respuesta_id@#,###,###}';
document.form1.id.value='${fld:smn_rel_proceso_respuesta_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


 

