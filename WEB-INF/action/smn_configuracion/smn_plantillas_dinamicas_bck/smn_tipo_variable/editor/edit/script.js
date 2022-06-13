document.form1.tva_codigo.value='${fld:tva_codigo@js}';
document.form1.tva_descripcion.value='${fld:tva_descripcion@js}';
document.form1.id.value='${fld:smn_tipo_variable_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.tva_codigo.disabled=true;
 

