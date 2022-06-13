document.form1.smn_tipo_variable_id_name.value='${fld:tva_codigo_pl0@js}';
document.form1.smn_tipo_variable_id.value='${fld:smn_tipo_variable_id@#,###,###}';
document.form1.var_codigo.value='${fld:var_codigo@js}';
document.form1.var_descripción.value='${fld:var_descripción@js}';
document.form1.id.value='${fld:smn_variable_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.var_codigo.disabled=true;
 

