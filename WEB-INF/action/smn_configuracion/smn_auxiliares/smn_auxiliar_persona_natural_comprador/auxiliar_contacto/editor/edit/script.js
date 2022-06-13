setComboValue('smn_clase_auxiliar_rf','${fld:smn_clase_auxiliar_rf}','form1');
setComboValue('smn_auxiliar_rf','${fld:smn_auxiliar_rf}','form1');
setComboValue('smn_tipo_contactos_rf','${fld:smn_tipo_contactos_rf}','form1');
document.form1.auc_descripcion.value='${fld:auc_descripcion@js}';
document.form1.id.value='${fld:smn_auxiliar_contacto_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");

document.getElementById('smn_clase_auxiliar_rf').disabled=true;
document.getElementById('smn_auxiliar_rf').disabled=true;


 

