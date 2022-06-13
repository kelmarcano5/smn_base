document.form1.acc_codigo.value='${fld:acc_codigo@js}';
document.form1.acc_descripcion.value='${fld:acc_descripcion@js}';
setComboValue('acc_tipo','${fld:acc_tipo}','form1');
setComboValue('smn_mensajes_rf','${fld:smn_mensajes_rf}','form1');
document.form1.acc_metodo.value='${fld:acc_metodo@js}';
setComboValue('acc_tipo_acto_rol','${fld:acc_tipo_acto_rol}','form1');
document.form1.id.value='${fld:smn_accion_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.acc_codigo.disabled=true;
 

