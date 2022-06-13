setComboValue('mod_empresa','${fld:mod_empresa}','form1');
document.form1.mod_codigo.value='${fld:mod_codigo@js}';
document.form1.mod_nombre.value='${fld:mod_nombre@js}';
setComboValue('smn_app_rf','${fld:smn_app_rf}','form1');
document.form1.mod_ruta_anexado.value='${fld:mod_ruta_anexado@js}';
document.form1.id.value='${fld:smn_modulos_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.mod_codigo.disabled=true;
 

