document.form1.mod_codigo.value='${fld:mod_codigo@js}';
document.form1.mod_descripcion.value='${fld:mod_descripcion@js}';
document.form1.id.value='${fld:smn_modelo_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.mod_codigo.disabled=true;
 

