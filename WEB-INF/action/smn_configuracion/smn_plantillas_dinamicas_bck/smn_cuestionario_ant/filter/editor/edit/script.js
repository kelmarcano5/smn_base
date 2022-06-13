document.form1.cue_codigo.value='${fld:cue_codigo@js}';
document.form1.cue_descripcion.value='${fld:cue_descripcion@js}';
setComboValue('smn_modulo_rf','${fld:smn_modulo_rf}','form1');
setComboValue('smn_esquema_rf','${fld:smn_esquema_rf}','form1');
setComboValue('smn_campo_rf','${fld:smn_campo_rf}','form1');
document.form1.id.value='${fld:smn_cuestionario_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.cue_codigo.disabled=true;
 

